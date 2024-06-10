from flask import Flask, request, jsonify
from datetime import datetime

from db_connection import get_loggin, create_user, update_user_db, delete_user, atividades_db, atividades_unidade, avisos_db, avisos_unidade, insert_atividades_db, insert_avisos_db
from utils import validate_user_data, transform_data


app = Flask(__name__)


@app.route('/login', methods=['POST'])
def login():
    # Pegando os parâmetros do JSON enviado na requisição
    data = request.get_json()
    user = data.get('user')
    password = data.get('password')

    # Comparando os parâmetros
    result = get_loggin(user, password)

    # Devolvendo o resultado como JSON
    return jsonify(result=result)


@app.route('/create_membro', methods=['POST'])
def new_user():
    # pegar os dados
    data = request.get_json()
    nome = data.get('nome')
    sexo = data.get('sexo')
    d_nascimento = data.get('d_nascimento')
    c_nascimento = data.get('c_nascimento')
    rg = data.get('rg')
    org_e = data.get('org_e')
    cpf = data.get('cpf')
    telefone = data.get('telefone')
    email = data.get('email')
    # validar os dados (FORMATOS)
    errors = validate_user_data(nome, sexo, d_nascimento, c_nascimento, rg, org_e, cpf, telefone, email)
    if not errors:
        create_user(nome, sexo, transform_data(d_nascimento), c_nascimento, rg, org_e, cpf, telefone, email)
        return True
    else:
        return jsonify(result=errors)


@app.route('/update_membro', methods=['POST'])
def update_user():
    data = request.get_json()
    id = data.get('id')
    update_data = data.get('update')
    return jsonify(update_user_db(id, update_data))


@app.route('/delete_membro', methods=['POST'])
def delete_membro():
    data = request.get_json()
    id = data.get('id')
    return jsonify(delete_user(id))


@app.route('/atividades', methods=['GET'])
def atividades():
    data = request.get_json()
    unidade_id = data.get('unidade_id')
    # lista de ids das atividades
    atividade_ids = atividades_unidade(unidade_id)
    l_atividades = atividades_db(atividade_ids)
    # retornar as atividades
    return jsonify(l_atividades)

@app.route('/avisos', methods=['GET'])
def avisos():
    data = request.get_json()
    unidade_id = data.get('unidade_id')
    # lista de ids das atividades
    avisos_ids = avisos_unidade(unidade_id)
    l_avisos = avisos_db(avisos_ids)
    # retornar as atividades
    return jsonify(l_avisos)


@app.route('/insert_atividades', methods=['POST'])
def insert_atividades():
    data = request.get_json()
    unidade_id = data.get('unidade_id')
    texto = data.get('texto')
    data_atual = datetime.now().date()
    return jsonify(insert_atividades_db(data_atual, texto, unidade_id))

@app.route('/insert_avisos', methods=['POST'])
def insert_avisos():
    data = request.get_json()
    unidade_id = data.get('unidade_id')
    texto = data.get('texto')
    data_atual = datetime.now().date()
    return jsonify(insert_avisos_db(data_atual, texto, unidade_id))
if __name__ == '__main__':
    app.run(debug=True)
