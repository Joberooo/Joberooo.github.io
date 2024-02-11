-- Tworzenie tabeli Studenci
CREATE TABLE Studenci (
    IdStudenta INT PRIMARY KEY,
    Imie VARCHAR(100)
);

-- Tworzenie tabeli Kursy
CREATE TABLE Kursy (
    IdKursu INT PRIMARY KEY,
    Nazwa VARCHAR(100),
    IdStudenta INT,
    FOREIGN KEY (IdStudenta) REFERENCES Studenci(IdStudenta)
);

-- Wstawianie danych do tabeli Studenci
INSERT INTO Studenci (IdStudenta, Imie) VALUES
(1, 'Anna'),
(2, 'Bartek'),
(3, 'Cezary'),
(4, 'Dorota');

-- Wstawianie danych do tabeli Kursy
INSERT INTO Kursy (IdKursu, Nazwa, IdStudenta) VALUES
(1, 'Matematyka', 1),
(2, 'Fizyka', 2),
(3, 'Informatyka', 1),
(4, 'Biologia', 3),
(5, 'Chemia', NULL); -- Kurs bez przypisanego studenta

SELECT Studenci.Imie, Kursy.Nazwa
FROM Studenci
INNER JOIN Kursy ON Studenci.IdStudenta = Kursy.IdStudenta;

SELECT Studenci.Imie, Kursy.Nazwa
FROM Studenci
LEFT JOIN Kursy ON Studenci.IdStudenta = Kursy.IdStudenta;

SELECT Studenci.Imie, Kursy.Nazwa
FROM Studenci
RIGHT JOIN Kursy ON Studenci.IdStudenta = Kursy.IdStudenta;

-- Tworzenie dodatkowej tabeli dla przykładu UNION
CREATE TABLE Absolwenci (
    IdAbsolwenta INT PRIMARY KEY,
    Imie VARCHAR(100)
);

-- Wstawianie danych do tabeli Absolwenci
INSERT INTO Absolwenci (IdAbsolwenta, Imie) VALUES
(1, 'Ewa'),
(2, 'Filip');

-- Użycie UNION do połączenia wyników z dwóch zapytań
SELECT Imie FROM Studenci
UNION
SELECT Imie FROM Absolwenci;


-- Przykłady dla naszej tabeli
SELECT IdWypożyczenia, Czytelnicy.Imię, Czytelnicy.Nazwisko, Książki.Tytuł
FROM Wypożyczenia
INNER JOIN Czytelnicy ON Wypożyczenia.IdCzytelnika = Czytelnicy.IdCzytelnika
INNER JOIN Książki ON Wypożyczenia.IdKsiążki = Książki.IdKsiążki;

SELECT IdWypożyczenia, Czytelnicy.Imię, Czytelnicy.Nazwisko, Książki.Tytuł
FROM Wypożyczenia
LEFT JOIN Czytelnicy ON Wypożyczenia.IdCzytelnika = Czytelnicy.IdCzytelnika
LEFT JOIN Książki ON Wypożyczenia.IdKsiążki = Książki.IdKsiążki;

SELECT IdWypożyczenia, Czytelnicy.Imię, Czytelnicy.Nazwisko, Książki.Tytuł
FROM Wypożyczenia
RIGHT JOIN Czytelnicy ON Wypożyczenia.IdCzytelnika = Czytelnicy.IdCzytelnika
RIGHT JOIN Książki ON Wypożyczenia.IdKsiążki = Książki.IdKsiążki;

SELECT Tytuł AS Dane FROM Książki
UNION
SELECT Nazwisko AS Dane FROM Czytelnicy;

