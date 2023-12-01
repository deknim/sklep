-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 01 Gru 2023, 10:25
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `sklepinformatyczny`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `akcesoria`
--

CREATE TABLE `akcesoria` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) DEFAULT NULL,
  `cena` int(11) DEFAULT NULL,
  `zdjecie` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `akcesoria`
--

INSERT INTO `akcesoria` (`id`, `nazwa`, `cena`, `zdjecie`) VALUES
(1, 'myszka', 99, 'myszka.png'),
(2, 'klawiatura', 199, 'klawiatura.png'),
(3, 'słuchawki', 199, 'sluchawki.png'),
(4, 'mikrofon', 199, 'mikrofon.png'),
(5, 'mouse bungee', 59, 'bungee.png'),
(6, 'podkładka', 49, 'podkladka.png');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `artykuly`
--

CREATE TABLE `artykuly` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) DEFAULT NULL,
  `cena` int(11) DEFAULT NULL,
  `zdjecie` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `artykuly`
--

INSERT INTO `artykuly` (`id`, `nazwa`, `cena`, `zdjecie`) VALUES
(1, 'Laptop', 1499, 'laptop.jpg'),
(2, 'karta graficzna', 1799, 'karta.jpg'),
(3, 'myszka', 199, 'myszka.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `festiwal`
--

CREATE TABLE `festiwal` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) DEFAULT NULL,
  `cena` int(11) DEFAULT NULL,
  `zdjecie` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `okazje`
--

CREATE TABLE `okazje` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) DEFAULT NULL,
  `cena` int(11) DEFAULT NULL,
  `zdjecie` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `okazje`
--

INSERT INTO `okazje` (`id`, `nazwa`, `cena`, `zdjecie`) VALUES
(1, 'karta graficzna', 1799, 'karta.png');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `podzespoly`
--

CREATE TABLE `podzespoly` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) DEFAULT NULL,
  `cena` int(11) DEFAULT NULL,
  `zdjecie` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `podzespoly`
--

INSERT INTO `podzespoly` (`id`, `nazwa`, `cena`, `zdjecie`) VALUES
(1, 'karta graficzna', 1799, 'karta.png'),
(2, 'procesor', 699, 'proc.png'),
(3, 'dysk', 199, 'dysk.png'),
(4, 'ram', 199, 'ram.png'),
(5, 'płyta główna', 399, 'plyta.png'),
(6, 'zasilacz', 299, 'zasilacz.png');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `urzadzenia`
--

CREATE TABLE `urzadzenia` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) DEFAULT NULL,
  `cena` int(11) DEFAULT NULL,
  `zdjecie` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `urzadzenia`
--

INSERT INTO `urzadzenia` (`id`, `nazwa`, `cena`, `zdjecie`) VALUES
(1, 'monitor', 999, 'monitor.png'),
(2, 'drukarka', 499, 'drukarka.png'),
(3, 'głośnik', 399, 'glosnik.png'),
(4, 'skaner', 99, 'skaner.png'),
(5, 'napęd dvd', 99, 'naped.png'),
(6, 'pendrive', 199, 'pendrive.png');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `akcesoria`
--
ALTER TABLE `akcesoria`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `artykuly`
--
ALTER TABLE `artykuly`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `festiwal`
--
ALTER TABLE `festiwal`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `okazje`
--
ALTER TABLE `okazje`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `podzespoly`
--
ALTER TABLE `podzespoly`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `urzadzenia`
--
ALTER TABLE `urzadzenia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `akcesoria`
--
ALTER TABLE `akcesoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `artykuly`
--
ALTER TABLE `artykuly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `festiwal`
--
ALTER TABLE `festiwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `okazje`
--
ALTER TABLE `okazje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `podzespoly`
--
ALTER TABLE `podzespoly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `urzadzenia`
--
ALTER TABLE `urzadzenia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
