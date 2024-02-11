DROP TABLE demo;

CREATE TABLE Czytelnicy (
    IdCzytelnika INT PRIMARY KEY,
    Imię VARCHAR(100),
    Nazwisko VARCHAR(100),
    Email VARCHAR(100),
    NumerTelefonu VARCHAR(11)
);

CREATE TABLE Książki (
    IdKsiążki INT PRIMARY KEY,
    Tytuł VARCHAR(200),
    RokWydania YEAR,
    Dostępność BOOLEAN
);

CREATE TABLE Wypożyczenia (
    IdWypożyczenia INT PRIMARY KEY,
    IdCzytelnika INT,
    IdKsiążki INT,
    DataWypożyczenia DATE,
    DataZwrotu DATE,
    FOREIGN KEY (IdCzytelnika) REFERENCES Czytelnicy(IdCzytelnika),
    FOREIGN KEY (IdKsiążki) REFERENCES Książki(IdKsiążki)
);

CREATE TABLE Autorzy (
    IdAutora INT PRIMARY KEY,
    Imię VARCHAR(100),
    Nazwisko VARCHAR(100),
    Wiek INT,
    Narodowość VARCHAR(50)
);

CREATE TABLE KsiążkiAutorzy (
    IdKsiążki INT,
    IdAutora INT,
    PRIMARY KEY (IdKsiążki, IdAutora),
    FOREIGN KEY (IdKsiążki) REFERENCES Książki(IdKsiążki),
    FOREIGN KEY (IdAutora) REFERENCES Autorzy(IdAutora)
);