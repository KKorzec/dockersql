-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Cze 2022, 19:00
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `wypozyczalnia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `alembic_version`
--

CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `alembic_version`
--

INSERT INTO `alembic_version` (`version_num`) VALUES
('fe77d9b2e492');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `filmy`
--

CREATE TABLE `filmy` (
  `id` int(11) NOT NULL,
  `tytul` varchar(50) DEFAULT NULL,
  `gatunek_id` int(11) DEFAULT NULL,
  `opis` text DEFAULT NULL,
  `cena` float DEFAULT NULL,
  `ocena` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `filmy`
--

INSERT INTO `filmy` (`id`, `tytul`, `gatunek_id`, `opis`, `cena`, `ocena`) VALUES
(1, 'Diuna', 1, 'dddddd', 45.99, 6.7),
(3, 'The Lighthouse', 1, 'dddddd', 28.99, 8.98),
(4, 'Batman', 2, 'Film DC', 39.99, 8.96),
(8, 'Gran Torinox', 1, 'Walt Kowalski, Amerykanin polskiego pochodzenia, weteran wojny w Korei, to burkliwy i oschły dla bliskich oraz sąsiadów zatwardziały konserwatysta. Nie lubi obcych i otwarcie wyraża się z pogardą o „czarnych”, „żółtkach” i innych narodowościach; nie ma również dobrych relacji z rodziną. Pod maską tetryka kryje się jednak uczciwy i porządny człowiek, kierujący się własnym sumieniem i zasadami pozornie niepasującymi do współczesnej mentalności Amerykanów. Główny wątek filmu zaczyna się, gdy Walt przyłapuje młodego imigranta na próbie kradzieży swojego samochodu, zleconej przez miejscowy gang. Kradzież klasycznego modelu samochodu Walta Kowalskiego – Forda Gran Torino z 1972 roku – miała być kryminalną inicjacją Thao, pochodzącego z imigranckiej rodziny chłopaka, sąsiada Walta. Mimo trudnych okoliczności i ogromnej odmienności kulturowej konsekwentne działanie tradycjonalistycznej rodziny Thao i (amerykański) tradycjonalizm Walta znajdują wspólną płaszczyznę porozumienia. Dla Thao, wychowywanego w domu pełnym ko', 45.99, 6.7);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gatunek`
--

CREATE TABLE `gatunek` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `gatunek`
--

INSERT INTO `gatunek` (`id`, `nazwa`) VALUES
(1, 'Thriller'),
(2, 'Film Akcji'),
(3, 'Horror');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `koszyk`
--

CREATE TABLE `koszyk` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `data_utworzenia` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `koszyk`
--

INSERT INTO `koszyk` (`id`, `user_id`, `data_utworzenia`) VALUES
(1, 1, '2022-05-22 17:16:33'),
(2, 6, '2022-05-23 15:06:01'),
(3, 7, '2022-05-23 21:27:20');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przemioty_koszyka`
--

CREATE TABLE `przemioty_koszyka` (
  `id` int(11) NOT NULL,
  `koszyk_id` int(11) DEFAULT NULL,
  `film_id` int(11) DEFAULT NULL,
  `data_utworzenia` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `szczegoly_zamowienia`
--

CREATE TABLE `szczegoly_zamowienia` (
  `id` int(11) NOT NULL,
  `id_zamowienia` int(11) DEFAULT NULL,
  `id_filmu` int(11) DEFAULT NULL,
  `data_utworzenia` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `szczegoly_zamowienia`
--

INSERT INTO `szczegoly_zamowienia` (`id`, `id_zamowienia`, `id_filmu`, `data_utworzenia`) VALUES
(1, 1, 1, '2022-05-22 19:08:00'),
(2, 2, 1, '2022-05-22 19:09:46'),
(3, 3, 1, '2022-05-22 19:13:36'),
(4, 3, 3, '2022-05-22 19:13:36'),
(5, 4, 3, '2022-05-22 19:17:27'),
(6, 4, 1, '2022-05-22 19:17:27'),
(7, 5, 1, '2022-05-22 19:20:14'),
(8, 5, 3, '2022-05-22 19:20:14'),
(9, 6, 3, '2022-05-22 19:29:04'),
(10, 7, 1, '2022-05-23 11:16:08'),
(11, 8, 3, '2022-05-23 11:20:22'),
(12, 9, 3, '2022-05-23 11:24:50'),
(13, 10, 4, '2022-05-23 11:28:25'),
(14, 11, 4, '2022-05-23 11:34:53'),
(15, 12, 4, '2022-05-23 11:38:31'),
(16, 13, 4, '2022-05-23 11:59:12'),
(17, 14, 4, '2022-05-23 12:40:37'),
(18, 15, 4, '2022-05-23 15:06:05'),
(19, 16, 4, '2022-05-23 15:08:15'),
(20, 17, 4, '2022-05-23 15:09:58'),
(21, 18, 4, '2022-05-23 15:11:49'),
(22, 19, 1, '2022-05-23 15:15:00'),
(23, 19, 4, '2022-05-23 15:15:00'),
(24, 20, 4, '2022-05-23 21:27:41'),
(25, 21, 1, '2022-06-05 13:24:31'),
(26, 21, 1, '2022-06-05 13:24:31'),
(27, 21, 1, '2022-06-05 13:24:31'),
(28, 22, 1, '2022-06-05 13:28:39'),
(29, 23, 1, '2022-06-05 13:29:34'),
(30, 24, 1, '2022-06-05 13:31:49'),
(31, 25, 1, '2022-06-05 13:32:44'),
(32, 26, 1, '2022-06-05 13:36:58'),
(33, 27, 1, '2022-06-05 13:42:30'),
(34, 28, 1, '2022-06-05 13:44:37'),
(35, 29, 1, '2022-06-05 13:46:58'),
(36, 30, 1, '2022-06-05 13:48:45'),
(37, 30, 1, '2022-06-05 13:48:45'),
(38, 31, 1, '2022-06-05 13:54:12');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(11) NOT NULL,
  `login` varchar(50) DEFAULT NULL,
  `haslo` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `data_urodzenia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `login`, `haslo`, `email`, `data_urodzenia`) VALUES
(1, 'str1ing', 'stri1ng', 'use1r@exa1mple.com', '2022-06-03'),
(2, 'string', '$argon2id$v=19$m=65536,t=3,p=4$FOJ8DyGk9J7zHsOYMya', 'user@example.com', '2022-05-21'),
(4, 'test', '$argon2id$v=19$m=65536,t=3,p=4$9N5by7kXQmhNKcXYu9f', 'user@eddeele.com', '2022-05-23'),
(5, 'user', '$argon2id$v=19$m=65536,t=3,p=4$BIAwBiDkvJcyhnAuBeAcQw$3ttg0PWftqP8t1mYQS3vUua3YykSzzGlfKN6nDonW+I', 'user@user.com', '2022-05-23'),
(6, 'krzc', '$argon2id$v=19$m=65536,t=3,p=4$g/C+t3YOQSilFAKgVKoVgg$/ZX26AkppvAD/zUTlVd23ZPIp+FfrjyDBKF7j9+bPrY', 'konkorz999@gmail.com', '2022-05-23'),
(7, 'madzia', '$argon2id$v=19$m=65536,t=3,p=4$lVIqhTBGCGFMSSnlHANASA$xxFaotezBMNS1RgWNSWFkyi4xvP8i+CR8u9lSDFc9hs', 'magda16gradzi@gmail.com', '2000-07-16'),
(8, 'filmoteka', '$argon2id$v=19$m=65536,t=3,p=4$JETo3ZuzFiJkzDkHwBijdA$DUBmoFcmtQSIA48OCq9Lj7UzytgzmhzM0mCJRoNzf0o', 'filmo@teka.pl', '2022-05-05'),
(9, 'loglog', '$argon2id$v=19$m=65536,t=3,p=4$dG4NIcRYi3EOgZAS4pxTSg$qp1wd3Zovt/rg9duQ7qvbPEvF0yU144uX/ioetxVYpc', 'log@log.pl', '2022-05-13'),
(10, 'loglog2', '$argon2id$v=19$m=65536,t=3,p=4$NKb03psz5rw3xnjvnRPi/A$9bzFn0ZE5V5wz9waEdrXgHhKS8zGncnXf3no6pePv2M', 'log@log2.pl', '2022-05-04'),
(11, 'loglog3', '$argon2id$v=19$m=65536,t=3,p=4$/D9HCOHcW4uRcg5BSGnNGQ$kx905xtKnWXpsKQuYI+EIBnSVzSIf6Ar95BpWNjOjIE', 'log@log3.pl', '2022-05-05'),
(12, 'loglog4', 'loglog4', 'log@log4.pl', '2022-05-13'),
(13, 'filmlog', '$argon2id$v=19$m=65536,t=3,p=4$11qrNWasFSIkZIwxBkBoDQ$AKyb0YD99HTbLVm2MI92Mn71L9DSVp8kZIjR813SLEk', 'lofgil@dd.pl', '2022-05-05'),
(14, 'string', '$argon2id$v=19$m=65536,t=3,p=4$UcoZY8wZg3DunXMuJWSMMQ$EAJx3kKT0lpYN/Z7V4uj06I/fXV5WT68XbOvNOi6uRw', 'use5r@example.com', '2022-05-29'),
(15, 'string', '$argon2id$v=19$m=65536,t=3,p=4$CIFQqtVaC2HMOccYI4Qwxg$yw8esea+3z6EN24WEQ6Jso5Rd1haVaX/O07UVAV6deQ', 'use55r@example.com', '2022-05-29'),
(16, 'dfggg', '$argon2id$v=19$m=65536,t=3,p=4$09pb611rba015hyD0Nrbmw$2pNXpSfYTGvpEEs+tiT9Dgr8lYRBt6g6C9xvNVrV1fc', 'wertwtwt@fsg.pl', '2022-05-06'),
(17, 'logl', '$argon2id$v=19$m=65536,t=3,p=4$5Px/rxXi/D+H0JpT6n0v5Q$PgIQhl5H0rQHpYcw3D4I7rmA9IFu822mEi1hVx8FUJQ', 'wfwfwf@sff.pl', '2022-05-06');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienie`
--

CREATE TABLE `zamowienie` (
  `id` int(11) NOT NULL,
  `data_zamowienia` datetime DEFAULT NULL,
  `kwota_zamowienia` float DEFAULT NULL,
  `status_zamowienia` varchar(50) DEFAULT NULL,
  `id_klienta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `zamowienie`
--

INSERT INTO `zamowienie` (`id`, `data_zamowienia`, `kwota_zamowienia`, `status_zamowienia`, `id_klienta`) VALUES
(1, '2022-05-22 19:08:00', 24.99, 'PRZETWARZANIE', NULL),
(2, '2022-05-22 19:09:46', 24.99, 'PRZETWARZANIE', NULL),
(3, '2022-05-22 19:13:36', 74.98, 'PRZETWARZANIE', NULL),
(4, '2022-05-22 19:17:27', 74.98, 'PRZETWARZANIE', NULL),
(5, '2022-05-22 19:20:13', 74.98, 'PRZETWARZANIE', 1),
(6, '2022-05-22 19:29:04', 49.99, 'PRZETWARZANIE', 1),
(7, '2022-05-23 11:16:08', 24.99, 'PRZETWARZANIE', 1),
(8, '2022-05-23 11:20:22', 49.99, 'PRZETWARZANIE', 1),
(9, '2022-05-23 11:24:50', 49.99, 'PRZETWARZANIE', 1),
(10, '2022-05-23 11:28:25', 39.99, 'PRZETWARZANIE', 1),
(11, '2022-05-23 11:34:53', 39.99, 'PRZETWARZANIE', 1),
(12, '2022-05-23 11:38:31', 39.99, 'PRZETWARZANIE', 1),
(13, '2022-05-23 11:59:12', 39.99, 'PRZETWARZANIE', 1),
(14, '2022-05-23 12:40:37', 39.99, 'PRZETWARZANIE', 1),
(15, '2022-05-23 15:06:05', 39.99, 'PRZETWARZANIE', 6),
(16, '2022-05-23 15:08:15', 39.99, 'PRZETWARZANIE', 6),
(17, '2022-05-23 15:09:58', 39.99, 'PRZETWARZANIE', 6),
(18, '2022-05-23 15:11:49', 39.99, 'PRZETWARZANIE', 6),
(19, '2022-05-23 15:15:00', 64.98, 'PRZETWARZANIE', 6),
(20, '2022-05-23 21:27:41', 39.99, 'PRZETWARZANIE', 7),
(21, '2022-06-05 13:24:31', 137.97, 'PRZETWARZANIE', 6),
(22, '2022-06-05 13:28:39', 45.99, 'PRZETWARZANIE', 6),
(23, '2022-06-05 13:29:34', 45.99, 'PRZETWARZANIE', 6),
(24, '2022-06-05 13:31:48', 45.99, 'PRZETWARZANIE', 6),
(25, '2022-06-05 13:32:43', 45.99, 'PRZETWARZANIE', 6),
(26, '2022-06-05 13:36:58', 45.99, 'PRZETWARZANIE', 6),
(27, '2022-06-05 13:42:30', 45.99, 'PRZETWARZANIE', 6),
(28, '2022-06-05 13:44:37', 45.99, 'PRZETWARZANIE', 6),
(29, '2022-06-05 13:46:58', 45.99, 'PRZETWARZANIE', 6),
(30, '2022-06-05 13:48:45', 91.98, 'PRZETWARZANIE', 6),
(31, '2022-06-05 13:54:12', 45.99, 'PRZETWARZANIE', 6);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `alembic_version`
--
ALTER TABLE `alembic_version`
  ADD PRIMARY KEY (`version_num`);

--
-- Indeksy dla tabeli `filmy`
--
ALTER TABLE `filmy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gatunek_id` (`gatunek_id`);

--
-- Indeksy dla tabeli `gatunek`
--
ALTER TABLE `gatunek`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `koszyk`
--
ALTER TABLE `koszyk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeksy dla tabeli `przemioty_koszyka`
--
ALTER TABLE `przemioty_koszyka`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_id` (`film_id`),
  ADD KEY `koszyk_id` (`koszyk_id`);

--
-- Indeksy dla tabeli `szczegoly_zamowienia`
--
ALTER TABLE `szczegoly_zamowienia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_filmu` (`id_filmu`),
  ADD KEY `id_zamowienia` (`id_zamowienia`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeksy dla tabeli `zamowienie`
--
ALTER TABLE `zamowienie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_klienta` (`id_klienta`),
  ADD KEY `ix_zamowienie_status_zamowienia` (`status_zamowienia`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `filmy`
--
ALTER TABLE `filmy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `gatunek`
--
ALTER TABLE `gatunek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `koszyk`
--
ALTER TABLE `koszyk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `przemioty_koszyka`
--
ALTER TABLE `przemioty_koszyka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT dla tabeli `szczegoly_zamowienia`
--
ALTER TABLE `szczegoly_zamowienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `zamowienie`
--
ALTER TABLE `zamowienie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `filmy`
--
ALTER TABLE `filmy`
  ADD CONSTRAINT `filmy_ibfk_1` FOREIGN KEY (`gatunek_id`) REFERENCES `gatunek` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `koszyk`
--
ALTER TABLE `koszyk`
  ADD CONSTRAINT `koszyk_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `uzytkownicy` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `przemioty_koszyka`
--
ALTER TABLE `przemioty_koszyka`
  ADD CONSTRAINT `przemioty_koszyka_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `filmy` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `przemioty_koszyka_ibfk_2` FOREIGN KEY (`koszyk_id`) REFERENCES `koszyk` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `szczegoly_zamowienia`
--
ALTER TABLE `szczegoly_zamowienia`
  ADD CONSTRAINT `szczegoly_zamowienia_ibfk_1` FOREIGN KEY (`id_filmu`) REFERENCES `filmy` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `szczegoly_zamowienia_ibfk_2` FOREIGN KEY (`id_zamowienia`) REFERENCES `zamowienie` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `zamowienie`
--
ALTER TABLE `zamowienie`
  ADD CONSTRAINT `zamowienie_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `uzytkownicy` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
