DROP TABLE demo;

CREATE TABLE
    Czytelnicy (
        IdCzytelnika INT PRIMARY KEY,
        Imię VARCHAR(100),
        Nazwisko VARCHAR(100),
        Email VARCHAR(100),
        NumerTelefonu VARCHAR(15)
    );

CREATE TABLE
    Książki (
        IdKsiążki INT PRIMARY KEY,
        Tytuł VARCHAR(200),
        Autor INT,
        RokWydania YEAR,
        Dostępność BOOLEAN
    );

CREATE TABLE
    Wypożyczenia (
        IdWypożyczenia INT PRIMARY KEY,
        IdCzytelnika INT,
        IdKsiążki INT,
        DataWypożyczenia DATE,
        DataZwrotu DATE,
        FOREIGN KEY (IdCzytelnika) REFERENCES Czytelnicy (IdCzytelnika),
        FOREIGN KEY (IdKsiążki) REFERENCES Książki (IdKsiążki)
    );

CREATE TABLE
    Autorzy (
        IdAutora INT PRIMARY KEY,
        Imię VARCHAR(100),
        Nazwisko VARCHAR(100),
        Wiek INT,
        Narodowość VARCHAR(50)
    );

CREATE TABLE
    KsiążkiAutorzy (
        IdKsiążki INT,
        IdAutora INT,
        FOREIGN KEY (IdKsiążki) REFERENCES Książki (IdKsiążki),
        FOREIGN KEY (IdAutora) REFERENCES Autorzy (IdAutora)
    );

INSERT INTO
    Czytelnicy (
        IdCzytelnika,
        Imię,
        Nazwisko,
        Email,
        NumerTelefonu
    )
VALUES
    (
        1,
        'Jason',
        'Barnett',
        'gregory10@velez-franco.com',
        '+48 123-456-789'
    ),
    (
        2,
        'Stephanie',
        'Snyder',
        'hollowayedward@gmail.com',
        '+48 223-456-789'
    ),
    (
        3,
        'Rebecca',
        'Lyons',
        'ggarner@ritter.net',
        '+48 323-456-789'
    ),
    (
        4,
        'Taylor',
        'Johnson',
        'robert34@gmail.com',
        '+48 423-456-789'
    ),
    (
        5,
        'Scott',
        'Lester',
        'cindy94@gmail.com',
        '+48 523-456-789'
    );

INSERT INTO
    Autorzy (IdAutora, Imię, Nazwisko, Wiek, Narodowość)
VALUES
    (1, 'Craig', 'Lara', 50, 'Belarus'),
    (2, 'David', 'Johnson', 60, 'Sweden'),
    (3, 'Amy', 'Taylor', 49, 'Congo'),
    (4, 'Christine', 'Villegas', 70, 'Jordan'),
    (5, 'Christine', 'Rhodes', 38, 'Macao'),
    (6, 'Patryk', 'Serafin', 28, 'Polska'),
    (7, 'Jan', 'Janowski', 45, 'Polska'),
    (8, 'Krzysztof', 'Krzysztofski', 87, 'Polska'),
    (9, 'Rak', 'Rakowski', 44, 'Polska');

INSERT INTO
    Książki (IdKsiążki, Tytuł, Autor, RokWydania, Dostępność)
VALUES
    (1, 'Tend other office story', 10, 2010, True),
    (2, 'Power rule capital', 38, 2008, True),
    (
        3,
        'World item score consider my activity',
        21,
        1983,
        True
    ),
    (4, 'Amount plant go nearly', 31, 1981, True),
    (5, 'Lot it final', 5, 2009, False);

INSERT INTO
    Wypożyczenia (
        IdWypożyczenia,
        IdCzytelnika,
        IdKsiążki,
        DataWypożyczenia,
        DataZwrotu
    )
VALUES
    (1, 1, 1, '2018-11-28', '2017-02-27'),
    (2, 2, 2, '2020-08-15', '2022-11-02'),
    (3, 3, 3, '2016-06-29', '2017-08-12'),
    (4, 4, 4, '2023-07-26', '2021-03-03'),
    (5, 5, 5, '2017-05-04', '2021-10-04');

INSERT INTO
    KsiążkiAutorzy (IdKsiążki, IdAutora)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);