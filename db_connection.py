from configparser import ConfigParser
import sqlalchemy as db
from sqlalchemy import select, exists, and_


def connection():
    key = f"./venv/keys.cfg"

    parser = ConfigParser()
    _ = parser.read(key)
    db_url = parser.get('postgres', 'ndw_url')
    engine = db.create_engine(db_url)
    metadata = db.MetaData()
    metadata.reflect(bind=engine)

    return metadata, engine


def get_loggin(user, password):
    # CONECTAR COM O BANCO E VALIDAR SENHA
    # Connect with DB
    # table = db.Table('core_responses_answers_expanded', metadata, autoload=True, autoload_with=engine)
    metadata, engine = connection()
    tb_membro = db.Table('membro', metadata, autoload=True, autoload_with=engine)
    conn = engine.connect()
    query = select(exists().where(
        and_(
            tb_membro.columns.id == user,
            tb_membro.columns.rg == password
        )
    ))

    # Executando a query
    result = conn.execute(query).scalar()
    return result


def create_user(nome, sexo, d_nascimento, c_nascimento, rg, org_e, cpf, telefone, email):
    metadata, engine = connection()
    tb_membro = db.Table('membro', metadata, autoload=True, autoload_with=engine)
    conn = engine.connect()
    query = db.insert(tb_membro).values(nome=nome, sexo=sexo, data_nascimento=d_nascimento, certidao_nascimento=c_nascimento, rg=rg, org_expedidor=org_e, cpf=cpf, telefone=telefone, email=email)
    conn.execute(query)
    conn.commit()
    return True


def update_user_db(id, updates):
    metadata, engine = connection()
    tb_membro = db.Table('membro', metadata, autoload=True, autoload_with=engine)
    conn = engine.connect()
    update_values = {col: val for col, val in updates.items()}
    query = db.update(tb_membro).where(tb_membro.columns.id == id).values(update_values)
    conn.execute(query)
    conn.commit()
    return True


def delete_user(id):
    metadata, engine = connection()
    tb_membro = db.Table('membro', metadata, autoload=True, autoload_with=engine)
    conn = engine.connect()
    query = db.delete(tb_membro).where(tb_membro.columns.id == id)
    conn.execute(query)
    conn.commit()
    return True


def atividades_unidade(unidade_id):
    metadata, engine = connection()
    tb_atividade_unidade = db.Table('atividade_unidade', metadata, autoload=True, autoload_with=engine)
    conn = engine.connect()
    query = select(tb_atividade_unidade.columns.atividade_id).where(and_(tb_atividade_unidade.columns.unidade_id == unidade_id, tb_atividade_unidade.columns.status == True))
    result = conn.execute(query)
    atividades_id = [row[0] for row in result.fetchall()]
    print(10*'-')
    print(atividades_id)
    return atividades_id


def atividades_db(atividades):
    metadata, engine = connection()
    tb_atividades = db.Table('atividades', metadata, autoload=True, autoload_with=engine)
    conn = engine.connect()
    query = select(tb_atividades.columns.data, tb_atividades.columns.texto).where(tb_atividades.columns.id.in_(atividades))
    # result = conn.execute(query)
    result_atividades = conn.execute(query)
    atividades_detalhes = result_atividades.fetchall()
    atividades_lista = [(row[0], row[1]) for row in atividades_detalhes]

    return atividades_lista


def avisos_unidade(unidade_id):
    metadata, engine = connection()
    tb_aviso_unidade = db.Table('avisos_unidade', metadata, autoload=True, autoload_with=engine)
    conn = engine.connect()
    query = select(tb_aviso_unidade.columns.aviso_id).where(and_(tb_aviso_unidade.columns.unidade_id == unidade_id, tb_aviso_unidade.columns.status == True))
    result = conn.execute(query)
    avisos_id = [row[0] for row in result.fetchall()]
    print(10*'-')
    print(avisos_id)
    return avisos_id


def avisos_db(avisos):
    metadata, engine = connection()
    tb_atvisos = db.Table('avisos', metadata, autoload=True, autoload_with=engine)
    conn = engine.connect()
    query = select(tb_atvisos.columns.data, tb_atvisos.columns.texto).where(tb_atvisos.columns.id.in_(avisos))
    # result = conn.execute(query)
    result_avisos = conn.execute(query)
    avisos_detalhes = result_avisos.fetchall()
    avisos_lista = [(row[0], row[1]) for row in avisos_detalhes]

    return avisos_lista


def insert_atividades_db(data, texto, unidade_id):
    metadata, engine = connection()
    tb_atividades = db.Table('atividades', metadata, autoload=True, autoload_with=engine)
    tb_atividade_unidade = db.Table('atividade_unidade', metadata, autoload=True, autoload_with=engine)
    conn = engine.connect()
    query = db.insert(tb_atividades).values(data=data, texto=texto)
    result = conn.execute(query)
    atividade_id = result.inserted_primary_key[0]
    query = db.insert(tb_atividade_unidade).values(atividade_id=atividade_id, unidade_id=unidade_id, status=True)
    conn.execute(query)
    conn.commit()

    return True


def insert_avisos_db(data, texto, unidade_id):
    metadata, engine = connection()
    tb_atvisos = db.Table('avisos', metadata, autoload=True, autoload_with=engine)
    tb_aviso_unidade = db.Table('avisos_unidade', metadata, autoload=True, autoload_with=engine)
    conn = engine.connect()
    query = db.insert(tb_atvisos).values(data=data, texto=texto)
    result = conn.execute(query)
    aviso_id = result.inserted_primary_key[0]
    query = db.insert(tb_aviso_unidade).values(aviso_id=aviso_id, unidade_id=unidade_id, status=True)
    conn.execute(query)
    conn.commit()

    return True