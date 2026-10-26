"""Validador semântico candidato. Não substitui os schemas normativos."""
PLACEHOLDERS = {"não designado", "nao designado", "pendente", "n/a", "na", "unknown", "tbd", "a definir"}

def norm(value):
    return str(value or "").strip().casefold()

def validate_reviewer(reviewer, review_completed=True):
    if not review_completed:
        return []
    if not norm(reviewer):
        return ["reviewer ausente para revisão declarada concluída"]
    if norm(reviewer) in PLACEHOLDERS:
        return ["reviewer é placeholder; informe a identidade do revisor"]
    return []

def validate_control_refs(control_refs, required_refs):
    refs = [str(x).strip() for x in control_refs]
    required = {str(x).strip() for x in required_refs}
    errors = []
    if any(not x for x in refs):
        errors.append("control_refs contém referência vazia")
    duplicates = sorted({x for x in refs if refs.count(x) > 1})
    if duplicates:
        errors.append("control_refs duplicados: " + ", ".join(duplicates))
    missing = sorted(required - set(refs))
    if missing:
        errors.append("critérios obrigatórios ausentes: " + ", ".join(missing))
    return errors

def validate_evidence(evidence, target_version, review_required=True, authorized_deciders=None):
    errors = []
    result = norm(evidence.get("result")).upper()
    version = str(evidence.get("evaluated_version") or "").strip()
    env = norm(evidence.get("environment"))
    if not version:
        errors.append("evaluated_version ausente")
    elif version != target_version:
        errors.append(f"versão avaliada ({version}) difere da versão alvo ({target_version})")
    if result not in {"PASS", "FAIL", "BLOCKED", "NOT_RUN"}:
        errors.append("result inválido; use PASS, FAIL, BLOCKED ou NOT_RUN")
    logs = evidence.get("logs")
    placeholders = {"pendente de runner aprovado", "nenhum", "não executado", "nao executado", "pendente"}
    real_log = isinstance(logs, list) and any(isinstance(x, str) and norm(x) and norm(x) not in placeholders for x in logs)
    if result == "PASS" and (env in {"", "não executado", "nao executado", "pendente", "n/a", "tbd"} or not real_log):
        errors.append("resultado PASS exige ambiente identificável e referência a log/relatório real")
    if review_required and validate_reviewer(evidence.get("reviewer"), True):
        errors.append("revisão requerida sem identidade de revisor verificável")
    if authorized_deciders is not None:
        maker = str(evidence.get("decision_maker") or "").strip()
        allowed = {str(x).strip() for x in authorized_deciders}
        if evidence.get("decision_required") is True and not maker:
            errors.append("decision_maker obrigatório, mas ausente")
        elif maker and maker not in allowed:
            errors.append("decision_maker não consta na matriz de autoridade fornecida")
    return errors
