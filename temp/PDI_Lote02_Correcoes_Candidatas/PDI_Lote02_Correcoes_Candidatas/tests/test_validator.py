import unittest
from src.validator import validate_control_refs, validate_evidence, validate_reviewer

class ValidatorTests(unittest.TestCase):
    def test_placeholder_reviewer_rejected(self):
        self.assertTrue(validate_reviewer("Não designado"))
    def test_reviewer_not_required_if_review_pending(self):
        self.assertEqual(validate_reviewer("Não designado", review_completed=False), [])
    def test_missing_criterion_reported(self):
        self.assertTrue(validate_control_refs(["C1"], ["C1", "C2"]))
    def test_duplicate_refs_reported(self):
        self.assertTrue(validate_control_refs(["C1", "C1"], ["C1"]))
    def test_complete_refs_accepted(self):
        self.assertEqual(validate_control_refs(["C1", "C2"], ["C1", "C2"]), [])
    def fixture(self):
        return {"requirement_ref":"CTR-02#CA-02-04","test_id":"TC-CTR-02-04-01",
                "evaluated_version":"PDI-0.2.0","environment":"Não executado",
                "result":"NOT_RUN","logs":["Pendente de runner aprovado"],
                "known_failures":[],"reviewer":"Não designado"}
    def test_not_run_not_accepted_as_reviewed_evidence(self):
        self.assertTrue(validate_evidence(self.fixture(), "PDI-0.2.0"))
    def test_version_mismatch_reported(self):
        e = self.fixture()
        e.update(environment="Python local", result="PASS", logs=["artifacts/run.log"], reviewer="Revisor Exemplo")
        self.assertTrue(any("difere" in x for x in validate_evidence(e, "PDI-0.2.1")))
    def test_pass_requires_real_log(self):
        e = self.fixture()
        e.update(environment="Python local", result="PASS", logs=["Pendente de runner aprovado"], reviewer="Revisor Exemplo")
        self.assertTrue(any("log/relatório" in x for x in validate_evidence(e, "PDI-0.2.0")))
    def test_unauthorized_decider_reported(self):
        e = self.fixture()
        e.update(decision_required=True, decision_maker="Pessoa X")
        errors = validate_evidence(e, "PDI-0.2.0", authorized_deciders=["Pessoa Y"])
        self.assertTrue(any("matriz de autoridade" in x for x in errors))

if __name__ == "__main__":
    unittest.main()
