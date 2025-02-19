CREATE TABLE Eventos
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL
);

CREATE TABLE Inscritos
(
    id        INTEGER PRIMARY KEY AUTOINCREMENT,
    name      TEXT    NOT NULL,
    email     TEXT    NOT NULL,
    link      TEXT,
    evento_id INTEGER NOT NULL,
    FOREIGN KEY (evento_id) REFERENCES Eventos (id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Eventos_link (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    eventos_id INTEGER NOT NULL,
    inscrito_id INTEGER NOT NULL,
    link TEXT,
    FOREIGN KEY (eventos_id) REFERENCES Eventos(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (inscrito_id) REFERENCES Inscritos(id) ON DELETE CASCADE ON UPDATE CASCADE
)
