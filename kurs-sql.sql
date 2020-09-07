-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 15 Wrz 2019, 15:59
-- Wersja serwera: 10.1.37-MariaDB
-- Wersja PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `przyklady`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id` int(11) NOT NULL,
  `imie` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `placa` decimal(7,2) NOT NULL,
  `stanowisko_id` int(11) DEFAULT NULL,
  `pesel` char(11) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`id`, `imie`, `nazwisko`, `placa`, `stanowisko_id`, `pesel`) VALUES
(1, 'Adam', 'Kowalski', '1624.50', 1, '12345678901'),
(2, 'Adam', 'Nowak', '3760.00', 2, '92345678901'),
(3, 'Andrzej', 'Kowalski', '4200.00', 2, '72345678901'),
(4, 'Arkadiusz', 'Malinowski', '1600.00', 4, '92345678909'),
(5, 'Andrzej', 'Malinowski', '1450.00', 3, NULL),
(6, 'Krzysztof', 'Nowicki', '1300.00', 3, NULL),
(7, 'Kacper', 'Adamczyk', '1610.50', 6, '92341678903'),
(8, 'Kamil', 'Andrzejczak', '1200.00', 5, NULL),
(9, 'Krzysztof', 'Arkuszewski', '1500.00', 1, '02343678913'),
(10, 'Kamil', 'Borowski', '1600.00', 3, '32349678913'),
(11, 'Robert', 'Nowicki', '1600.00', 7, '02309670913');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stanowiska`
--

CREATE TABLE `stanowiska` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(20) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `stanowiska`
--

INSERT INTO `stanowiska` (`id`, `nazwa`) VALUES
(1, 'magazynier'),
(2, 'kierownik'),
(3, 'sprzedawca'),
(4, 'kierowca'),
(5, 'asystent'),
(6, 'serwisant'),
(8, 'informatyk');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczelniaa`
--

CREATE TABLE `uczelniaa` (
  `id` int(11) NOT NULL,
  `imie` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `pesel` char(11) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `uczelniaa`
--

INSERT INTO `uczelniaa` (`id`, `imie`, `nazwisko`, `pesel`) VALUES
(1, 'Jan', 'Kowalski', '01234567890'),
(2, 'Adam', 'Nowak', '12345678901'),
(3, 'Anna', 'Wilk', '23456789012');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczelniab`
--

CREATE TABLE `uczelniab` (
  `id` int(11) NOT NULL,
  `imie` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `pesel` char(11) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `uczelniab`
--

INSERT INTO `uczelniab` (`id`, `imie`, `nazwisko`, `pesel`) VALUES
(1, 'Janina', 'Wolska', '34567890123'),
(2, 'Beata', 'Nowak', '45678901234'),
(3, 'Jan', 'Kowalski', '01234567890');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczniowie`
--

CREATE TABLE `uczniowie` (
  `id_ucznia` int(11) NOT NULL,
  `nazwisko` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `imie` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `wiek` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `uczniowie`
--

INSERT INTO `uczniowie` (`id_ucznia`, `nazwisko`, `imie`, `wiek`) VALUES
(1, 'Kowalski', 'Jan', 17),
(2, 'Nowak', 'Piotr', 16),
(3, 'Kowalski', 'Jan', 18),
(4, 'Nowak', 'Marcin', 16),
(5, 'Wójcik', 'Piotr', 15),
(6, 'Kowalczyk', 'Aleksandra', NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `stanowiska`
--
ALTER TABLE `stanowiska`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uczelniaa`
--
ALTER TABLE `uczelniaa`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uczelniab`
--
ALTER TABLE `uczelniab`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uczniowie`
--
ALTER TABLE `uczniowie`
  ADD PRIMARY KEY (`id_ucznia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
