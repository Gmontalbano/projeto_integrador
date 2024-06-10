from datetime import datetime


def validate_user_data(nome, sexo, d_nascimento, c_nascimento, rg, org_expedidor, cpf, telefone, email):
    errors = []

    # Validar nome
    if not isinstance(nome, str) or len(nome) > 255:
        errors.append(nome)

    # Validar sexo
    if not isinstance(sexo, str) or len(sexo) != 1:
        errors.append(sexo)

    # Validar data de nascimento
    if not isinstance(d_nascimento, str) or not len(d_nascimento) == 10 or not d_nascimento.count("-") == 2 and len(d_nascimento.slipt('-')[0]) != 4 and len(d_nascimento.slipt('-')[1]) != 2 and len(d_nascimento.slipt('-')[2]) != 2:
        errors.append(d_nascimento)

    # Validar cidade de nascimento
    if not isinstance(c_nascimento, str) or len(c_nascimento) != 32:
        errors.append(c_nascimento)

    # Validar RG
    if not isinstance(rg, str) or len(rg) != 9:
        errors.append(rg)

    # Validar órgão expedidor do RG
    if not isinstance(org_expedidor, str) or len(org_expedidor) > 5:
        errors.append(org_expedidor)

    # Validar CPF
    if not isinstance(cpf, str) or len(cpf) != 11:
        errors.append(cpf)

    # Validar telefone
    if not isinstance(telefone, str) or 8 > len(telefone) > 9:
        errors.append(telefone)

    # Validar email
    if not isinstance(email, str):
        errors.append(email)

    if len(errors) == 0:
        return False
    else:
        return errors


def transform_data(data):
    return datetime.strptime(data, "%Y-%m-%d").date()
