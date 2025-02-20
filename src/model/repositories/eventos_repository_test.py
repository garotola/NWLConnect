from .eventos_repository import EventosRepository
from ..configs.connection import DBConnectionHandler
from sqlalchemy import text, inspect


def test_insert_eventos():
    event_name = "Evento Teste Teste"
    event_repo = EventosRepository()

    event_repo.insert(event_name)


def test_select_event() :
    event_name = "Evento Teste"
    event_repo = EventosRepository()

    event = event_repo.select_event(event_name)
    print(event.nome)
    print(event_name)