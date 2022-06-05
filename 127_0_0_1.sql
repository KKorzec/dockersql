-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Cze 2022, 19:05
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
-- Baza danych: `flixgo`
--
CREATE DATABASE IF NOT EXISTS `flixgo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci;
USE `flixgo`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `administratorzy`
--

CREATE TABLE `administratorzy` (
  `id` int(11) NOT NULL,
  `user` text COLLATE utf8mb4_polish_ci NOT NULL,
  `pass` text COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `administratorzy`
--

INSERT INTO `administratorzy` (`id`, `user`, `pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `filmy`
--

CREATE TABLE `filmy` (
  `id` int(11) NOT NULL,
  `tytul` text COLLATE utf8mb4_polish_ci NOT NULL,
  `opis` text COLLATE utf8mb4_polish_ci NOT NULL,
  `gatunek` text COLLATE utf8mb4_polish_ci NOT NULL,
  `cena` float NOT NULL,
  `ocena` float NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `filmy`
--

INSERT INTO `filmy` (`id`, `tytul`, `opis`, `gatunek`, `cena`, `ocena`, `img`) VALUES
(15, 'Joker', 'Historia jednego z cieszących się najgorszą sławą superprzestępców uniwersum DC — Jokera. Przedstawiony przez Phillipsa obraz śledzi losy kultowego czarnego charakteru, człowieka zepchniętego na margines. To nie tylko kontrowersyjne studium postaci, ale także opowieść ku przestrodze w szerszym kontekście.', 'Dramat', 34.99, 7.1, 'joker.jpg'),
(17, 'Blade Runner 2049', 'Minęło 30 lat od wydarzeń przedstawionych w filmie \"Łowca androidów\" Ridleya Scotta. Wtedy w 2019 roku agent Rick Deckard (Harrison Ford) ścigał w Los Angeles zbuntowane androidy z serii Nexus 6. Teraz w 2049 roku do akcji wkracza nowy Blade Runner, czyli łowca - oficer K (Ryan Gosling). Niespodziewanie funkcjonariusz odkrywa spisek, który może zniszczyć pozostałości dawnego porządku i społeczeństwa. Żeby uratować i tak już zrujnowany świat, K musi poprosić o pomoc Deckarda. Problem w tym, że Rick ukrywa się od czasu, gdy w 2019 roku uciekł z Los Angeles...', 'Film Sci-Fi', 39.99, 8.88, 'br2049.jpg'),
(19, 'Blade Runner', 'Film \"Łowca androidów\" opowiada historię Ricka Deckarda - jednego z Łowców Androidów. Replikanci, bo tak nazwano tych androidów, byli używani do niebezpiecznych badań i kolonizacji innych planet. Po krwawym buncie zespołu androidów na pozaziemskiej kolonii, Replikanci nie mogli przebywać legalnie na Ziemi. Byli oni owładnięci panicznym strachem przed nieuchronną śmiercią i za wszelką cenę starają się dotrzeć do ich konstruktorów - jedynych ludzi mogących przedłużyć ich życie. Replikanci zostali bowiem zabezpieczeni przed długotrwałym życiem ze względu na rozwijające się w nich uczucia. Specjalny oddział policji - tytułowi \"Łowcy Androidów\" - są detektywami, którzy mają za zadanie odnaleźć i wyeliminować zbiegłych androidów. Akcja rozgrywa się w Los Angeles w 2019 roku, gdy jeden z najlepszych Łowców zostaje ranny podczas wykonywania testu Voigta-Kampffa na jednym z androidów i właśnie Deckard przejmuje jego zadanie - wyeliminowanie zbiegłych androidów typu Nexus-6.', 'Film Sci-Fi', 28.99, 8.98, 'BR1.jpg'),
(20, 'Boże Ciało', 'Inspirowana prawdziwymi wydarzeniami historia 20-letniego Daniela, który w trakcie pobytu w poprawczaku przechodzi duchową przemianę i skrycie marzy, żeby zostać księdzem. Po kilku latach odsiadki chłopak zostaje warunkowo zwolniony, a następnie skierowany do pracy w zakładzie stolarskim. Zamiast tego jednak, popychany niemożliwym do spełnienia marzeniem, Daniel kieruje się do miejscowego kościoła, gdzie zaprzyjaźnia się z proboszczem. Kiedy, pod nieobecność duchownego, niespodziewanie nadarza się okazja, chłopak wykorzystuje ją i w przebraniu księdza zaczyna pełnić posługę kapłańską w miasteczku. Od początku jego metody ewangelizacji budzą kontrowersje wśród mieszkańców, szczególnie w oczach surowej kościelnej Lidii. Z czasem jednak nauki i charyzma fałszywego księdza zaczynają poruszać ludzi pogrążonych w tragedii, która wstrząsnęła lokalną społecznością kilka miesięcy wcześniej. Tymczasem w miasteczku pojawia się dawny kolega Daniela z poprawczaka, a córka kościelnej, Marta, coraz mocniej zaczyna kwestionować duchowość młodego księdza. Wszystko to sprawia, że chłopakowi grunt zaczyna palić się pod nogami. Rozdarty pomiędzy sacrum i profanum bohater znajduje jednak w swoim życiu nowy, ważny cel. Postanawia go zrealizować, nawet jeśli jego tajemnica miałaby wyjść na jaw...', 'Dramat', 19.99, 7.56, 'BC.jpg'),
(21, 'Gran Torino', 'Kiedy umiera żona Walta Kowalskiego, nikt już nie może wmówić mu, że świat jest dobry. To była ostatnia osoba, która miała na niego pozytywny wpływ. Według Walta, wszystko co młode, nie-amerykańskie i mało trzymające się jakiegokolwiek kodeksu, jest złe i nie powinno się tego tolerować. Więc kiedy do sąsiedniego domu wprowadzają się \"żółtki\", czyli emigranci z południowo-wschodniej Azji, Walt zaczyna się niecierpliwić, ba, wręcz okazuje nienawiść swoim nowym sąsiadom. A do tego jeden z nich, młody chłopak, pod naciskiem miejscowego gangu, próbuje ukraść jego cenny wóz, tytułowego Forda Gran Torino. Jednak pewnego dnia Walt obroni rodzinę sąsiadów przed owym gangiem i postanowi nauczyć młodego Azjatę, jak ktoś taki jak on może przeżyć w USA...', 'Dramat', 24.99, 8.44, 'grantorino.jpg'),
(28, 'Taksówkarz', 'Akcja filmu rozgrywa się w Nowym Jorku, rodzinnym mieście reżysera. Bohaterem jest Travis Bickle (Robert De Niro), który po powrocie z Wietnamu zatrudnia się jako nocny taksówkarz, obsługując trudne trasy w dzielnicach pełnych podłych lokali rozrywkowych, rojących się od prostytutek, alfonsów i różnych podejrzanych typów. Travis czuje się samotny, upodlony i pełen sprzeczności. Ten świat pełen nieprawości jednocześnie go pociąga i odpycha, fascynuje i napawa obrzydzeniem. Próbuje przełamać swą alienację i powrócić do normalnego społeczeństwa, ale w rezultacie utwierdza się w przekonaniu o powszechności zła. Powoli narasta w nim pełen gorączki gniew i przekonanie o misji rozprawienia się ze społeczną degrengoladą...', 'Dramat', 23.99, 7.9, 'taksowkarz.jpg'),
(29, 'Dobry Zły i Brzydki', 'Akcja filmu toczy się w Stanach Zjednoczonych podczas wojny secesyjnej i jest oparta na losach trzech rewolwerowców. Tuco Ramirez („Brzydki”) jest niebezpiecznym przestępcą poszukiwanym listem gończym, który w początkowej sekwencji ucieka trzem łowcom nagród. Sadystyczny, płatny zabójca o pseudonimie Anielskie Oczka[a] („Zły”) dowiaduje się od swoich informatorów o żołnierzu ukrywającym się pod pseudonimem Bill Carson, który zdezerterował wraz z licznymi kosztownościami. Anielskie Oczka jest bezwzględny i nie waha się przed zabiciem swych informatorów. Bezimienny rewolwerowiec o pseudonimie Blondas[a] („Dobry”) zajmuje się chwytaniem pospolitych przestępców dla zysku.', 'Western', 9.99, 6.89, 'dzib.jpg'),
(30, 'The Lighthouse', 'Stara latarnia morska położona gdzieś na krańcu końca rozpoznawalnego świata, a w środku kamień, pustka i duchy przeszłości, które widziały i słyszały już wszystko co ludzkie. Dwóch mężczyzn, którzy mają spędzić w tym miejscu kolejne cztery żmudne tygodnie, doglądając własnej poczytalności i światła wskazującego drogę tym, którzy poszukują go na wzburzonych wodach. Pierwszy z nich ma na imię Tom i jest mężczyzną hardym i nieustępliwym, byłym człowiekiem morza, który dorobił się bolesnej kontuzji nogi. Drugi, Ephraim, jest znacznie młodszy i - przynajmniej z początku - bardziej otwarty, jednak dręczy go jakaś tajemnica, która sprawiła, że wybrał odosobnienie w latarni morskiej zamiast pracy przy wycince drzew. Gdy izolacja od świata zewnętrznego daje o sobie znać, obaj mężczyźni, każdy z nich skrzywiony przez życie na dziesiątki różnych sposobów, zostają zmuszeni, by stawić czoła swym demonom, podczas gdy otaczający ich świat rzeczywisty zaczyna tonąć w morzu surrealistycznej frustracji. Tylko pomocnego światła nigdzie nie widać.', 'Horror', 34.99, 7.55, 'lighthouse.jpg'),
(31, 'John Wick', 'Żona byłego płatnego zabójcy Johna Wicka (Keanu Reeves) umiera na nieuleczalną chorobę. W dniu pogrzebu John dostaje przesyłkę zawierającą ostatni prezent od ukochanej - szczeniaka o imieniu Daisy. Kiedy następnego dnia zatrzymuje się na stacji benzynowej, zostaje zaczepiony przez kilku mężczyzn. Jeden z nich chce odkupić należącego do Johna zabytkowego Mustanga, ten jednak odmawia. Wieczorem ci sami ludzie włamują się do jego domu, pozbawiają go przytomności, kradną samochód i zabijają Daisy. Po przebudzeniu John ustala, że sprawcą jego nieszczęścia jest Iosef (Alfie Allen), syn Viggo Tarasova (Michael Nyqvist), szefa działającej w Nowym Jorku rosyjskiej mafii. Wick postanawia wrócić do branży i dokonać zemsty. Viggo, który korzystał w przeszłości z usług Johna, wyznacza nagrodę za jego głowę.', 'Film akcji', 17.99, 6.7, 'johnwick.jpg'),
(32, 'Shrek', 'Animacja komputerowa zrealizowana na podstawie powieści dla dzieci autorstwa Wiliama Steiga. Tytułowy Shrek jest brzydkim, zielonym ogrem, mieszkającym samotnie gdzieś na baśniowym bagnie. Pewnego dnia na jego terytorium przybywają postacie z rozmaitych bajek i zakłócają jego spokój. Aby uwolnić się od nieproszonych gości Shrek wyrusza na spotkanie ze sprawcą całego zamieszania - złym lordem Farquaadem. Okazuje się, że czeka tam na niego trudne zadanie. Aby odzyskać ziemię musi ocalić z łap smoka uroczą księżniczkę i całą i zdrową sprowadzić do królestwa Farquaadema, aby ten mógł ją poślubić.', 'Film animowany', 21.37, 10, 'shrek.jpg'),
(33, 'Drive', 'Nieznany z imienia młody kierowca (Ryan Gosling) jest kaskaderem filmowym. W nocy natomiast pomaga przestępcom uciekać z miejsc zbrodni, wykorzystując swoje ponadprzeciętne zdolności prowadzenia samochodu. Jego życie musi przez cały czas toczyć się na najwyższych obrotach. Mimo bezustannej jazdy na krawędzi wydaje się on całkowicie niewzruszony. Milczący, wiecznie spokojny i opanowany nie okazuje żadnych emocji, które jednak skumulowane w żywiącym się adrenaliną głównym bohaterze muszą kiedyś znaleźć ujście. Wtedy pojawia się Irene (Carey Mulligan), która odmieni jego życie na zawsze...', 'Film akcji', 24.99, 9.78, 'drive.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `opinie`
--

CREATE TABLE `opinie` (
  `id` int(11) NOT NULL,
  `user` text COLLATE utf8mb4_polish_ci NOT NULL,
  `text` text COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pomoc`
--

CREATE TABLE `pomoc` (
  `id` int(11) NOT NULL,
  `user` text NOT NULL,
  `tresc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(11) NOT NULL,
  `user` text COLLATE utf8_polish_ci NOT NULL,
  `pass` text COLLATE utf8_polish_ci NOT NULL,
  `email` text COLLATE utf8_polish_ci NOT NULL,
  `awatar` varchar(255) COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczenia`
--

CREATE TABLE `wypozyczenia` (
  `id` int(11) NOT NULL,
  `user` text NOT NULL,
  `id_filmu` int(11) NOT NULL,
  `test` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `administratorzy`
--
ALTER TABLE `administratorzy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `filmy`
--
ALTER TABLE `filmy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `opinie`
--
ALTER TABLE `opinie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pomoc`
--
ALTER TABLE `pomoc`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeksy dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `administratorzy`
--
ALTER TABLE `administratorzy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `filmy`
--
ALTER TABLE `filmy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT dla tabeli `opinie`
--
ALTER TABLE `opinie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT dla tabeli `pomoc`
--
ALTER TABLE `pomoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10001;

--
-- AUTO_INCREMENT dla tabeli `wypozyczenia`
--
ALTER TABLE `wypozyczenia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Baza danych: `hurttest1`
--
CREATE DATABASE IF NOT EXISTS `hurttest1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hurttest1`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `adres`
--

CREATE TABLE `adres` (
  `ID_Adres` int(11) NOT NULL,
  `Miejscowosc` varchar(50) NOT NULL,
  `Wojewodztwo` varchar(50) NOT NULL,
  `Kod_Pocztowy` varchar(50) NOT NULL,
  `Ulica` varchar(50) NOT NULL,
  `Nr_Domu` varchar(10) NOT NULL,
  `Nr_Lokalu` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `adres`
--

INSERT INTO `adres` (`ID_Adres`, `Miejscowosc`, `Wojewodztwo`, `Kod_Pocztowy`, `Ulica`, `Nr_Domu`, `Nr_Lokalu`) VALUES
(1, 'Kraków', 'Małopolskie', '31-087', 'Kwiecista', '33', '12'),
(2, 'Poznań', 'Wielkopolskie', '45-112', 'Gwiaździsta', '12', ''),
(3, 'Warszawa', 'Mazowieckie', '00-230', 'Jasna', '10', '33');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auto`
--

CREATE TABLE `auto` (
  `ID_Auto` int(11) NOT NULL,
  `Marka` varchar(50) NOT NULL,
  `Model` varchar(50) NOT NULL,
  `Ladownosc` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `auto`
--

INSERT INTO `auto` (`ID_Auto`, `Marka`, `Model`, `Ladownosc`) VALUES
(1, 'Ford', 'Transit', 1464);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dostawca`
--

CREATE TABLE `dostawca` (
  `ID_Dostawca` int(11) NOT NULL,
  `ID_Pracownik` int(11) NOT NULL,
  `ID_Auto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `dostawca`
--

INSERT INTO `dostawca` (`ID_Dostawca`, `ID_Pracownik`, `ID_Auto`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `faktura`
--

CREATE TABLE `faktura` (
  `ID_Faktura` int(11) NOT NULL,
  `Data_Utworzenia` datetime NOT NULL,
  `ID_Koszyk` int(11) NOT NULL,
  `ID_Klient` int(11) NOT NULL,
  `ID_Dostawca` int(11) NOT NULL,
  `Kwaota` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `faktura`
--

INSERT INTO `faktura` (`ID_Faktura`, `Data_Utworzenia`, `ID_Koszyk`, `ID_Klient`, `ID_Dostawca`, `Kwaota`) VALUES
(1, '2022-05-13 12:09:50', 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `firma`
--

CREATE TABLE `firma` (
  `ID_Firma` int(11) NOT NULL,
  `Nazwa_Firmy` varchar(50) NOT NULL,
  `Nr_NIP_Firma` int(11) NOT NULL,
  `Nr_Regon` int(11) NOT NULL,
  `Nr_Konta_Firma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `firma`
--

INSERT INTO `firma` (`ID_Firma`, `Nazwa_Firmy`, `Nr_NIP_Firma`, `Nr_Regon`, `Nr_Konta_Firma`) VALUES
(1, 'NowakWykończenia', 1231231, 666777, 55554444);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategoria`
--

CREATE TABLE `kategoria` (
  `ID_Kategoria` int(11) NOT NULL,
  `Nazwa_Kategorii` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `kategoria`
--

INSERT INTO `kategoria` (`ID_Kategoria`, `Nazwa_Kategorii`) VALUES
(1, 'Ogród');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE `klient` (
  `ID_Klient` int(11) NOT NULL,
  `Imie_Klienta` varchar(40) NOT NULL,
  `Nazwisko_Klienta` varchar(40) NOT NULL,
  `ID_Adres` int(11) NOT NULL,
  `Nr_Telefonu` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `ID_Firma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `klient`
--

INSERT INTO `klient` (`ID_Klient`, `Imie_Klienta`, `Nazwisko_Klienta`, `ID_Adres`, `Nr_Telefonu`, `Email`, `ID_Firma`) VALUES
(1, 'Jan', 'Nowak', 3, 666555333, 'Jnowak@onet.pl', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `koszyk`
--

CREATE TABLE `koszyk` (
  `ID_Koszyk` int(11) NOT NULL,
  `ID_Klient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `koszyk`
--

INSERT INTO `koszyk` (`ID_Koszyk`, `ID_Klient`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lista`
--

CREATE TABLE `lista` (
  `ID_Lista` int(11) NOT NULL,
  `ID_Koszyk` int(11) NOT NULL,
  `ID_Produkt` int(11) NOT NULL,
  `Ilosc_Lista` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `lista`
--

INSERT INTO `lista` (`ID_Lista`, `ID_Koszyk`, `ID_Produkt`, `Ilosc_Lista`) VALUES
(1, 1, 1, 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownik`
--

CREATE TABLE `pracownik` (
  `ID_Pracownik` int(11) NOT NULL,
  `Imie_Pracownika` varchar(50) NOT NULL,
  `Nazwisko_Pracownika` varchar(50) NOT NULL,
  `ID_Adres` int(11) NOT NULL,
  `NR_Konta_Pracownik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `pracownik`
--

INSERT INTO `pracownik` (`ID_Pracownik`, `Imie_Pracownika`, `Nazwisko_Pracownika`, `ID_Adres`, `NR_Konta_Pracownik`) VALUES
(1, 'Adam', 'Szafran', 1, 40004000);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `producent`
--

CREATE TABLE `producent` (
  `ID_Producent` int(11) NOT NULL,
  `Nazwa_Producenta` varchar(50) NOT NULL,
  `Adres_Producenta` int(11) NOT NULL,
  `Nr_NIP_Producent` int(11) NOT NULL,
  `NR_Konta_Producent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `producent`
--

INSERT INTO `producent` (`ID_Producent`, `Nazwa_Producenta`, `Adres_Producenta`, `Nr_NIP_Producent`, `NR_Konta_Producent`) VALUES
(1, 'Brukbet', 2, 123123, 12341234);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkt`
--

CREATE TABLE `produkt` (
  `ID_Produkt` int(11) NOT NULL,
  `Nazwa_Produktu` varchar(50) NOT NULL,
  `ID_Kategoria` int(11) NOT NULL,
  `ID_Producent` int(11) NOT NULL,
  `Rok_Produkcji` int(11) NOT NULL,
  `Opis` text NOT NULL,
  `Ilosc` int(11) NOT NULL,
  `Stan_Magazynowy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `produkt`
--

INSERT INTO `produkt` (`ID_Produkt`, `Nazwa_Produktu`, `ID_Kategoria`, `ID_Producent`, `Rok_Produkcji`, `Opis`, `Ilosc`, `Stan_Magazynowy`) VALUES
(1, 'Kostka Brukowa Ogrodowa', 1, 1, 2022, 'Kostka do ogrodu.', 500, 40);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `adres`
--
ALTER TABLE `adres`
  ADD PRIMARY KEY (`ID_Adres`);

--
-- Indeksy dla tabeli `auto`
--
ALTER TABLE `auto`
  ADD PRIMARY KEY (`ID_Auto`);

--
-- Indeksy dla tabeli `dostawca`
--
ALTER TABLE `dostawca`
  ADD PRIMARY KEY (`ID_Dostawca`),
  ADD KEY `ID_Auto` (`ID_Auto`),
  ADD KEY `ID_Pracownik` (`ID_Pracownik`);

--
-- Indeksy dla tabeli `faktura`
--
ALTER TABLE `faktura`
  ADD PRIMARY KEY (`ID_Faktura`),
  ADD KEY `ID_Koszyk` (`ID_Koszyk`),
  ADD KEY `ID_Klient` (`ID_Klient`),
  ADD KEY `ID_Dostawca` (`ID_Dostawca`);

--
-- Indeksy dla tabeli `firma`
--
ALTER TABLE `firma`
  ADD PRIMARY KEY (`ID_Firma`);

--
-- Indeksy dla tabeli `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`ID_Kategoria`);

--
-- Indeksy dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`ID_Klient`),
  ADD KEY `ID_Firma` (`ID_Firma`),
  ADD KEY `ID_Adres` (`ID_Adres`);

--
-- Indeksy dla tabeli `koszyk`
--
ALTER TABLE `koszyk`
  ADD PRIMARY KEY (`ID_Koszyk`),
  ADD KEY `ID_Klient` (`ID_Klient`);

--
-- Indeksy dla tabeli `lista`
--
ALTER TABLE `lista`
  ADD PRIMARY KEY (`ID_Lista`),
  ADD KEY `ID_Koszyk` (`ID_Koszyk`),
  ADD KEY `ID_Produkt` (`ID_Produkt`);

--
-- Indeksy dla tabeli `pracownik`
--
ALTER TABLE `pracownik`
  ADD PRIMARY KEY (`ID_Pracownik`),
  ADD KEY `ID_Adres` (`ID_Adres`);

--
-- Indeksy dla tabeli `producent`
--
ALTER TABLE `producent`
  ADD PRIMARY KEY (`ID_Producent`),
  ADD KEY `Adres_Producenta` (`Adres_Producenta`);

--
-- Indeksy dla tabeli `produkt`
--
ALTER TABLE `produkt`
  ADD PRIMARY KEY (`ID_Produkt`),
  ADD KEY `ID_Kategoria` (`ID_Kategoria`),
  ADD KEY `ID_Producent` (`ID_Producent`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `adres`
--
ALTER TABLE `adres`
  MODIFY `ID_Adres` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `auto`
--
ALTER TABLE `auto`
  MODIFY `ID_Auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `dostawca`
--
ALTER TABLE `dostawca`
  MODIFY `ID_Dostawca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `faktura`
--
ALTER TABLE `faktura`
  MODIFY `ID_Faktura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `firma`
--
ALTER TABLE `firma`
  MODIFY `ID_Firma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `kategoria`
--
ALTER TABLE `kategoria`
  MODIFY `ID_Kategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `klient`
--
ALTER TABLE `klient`
  MODIFY `ID_Klient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `koszyk`
--
ALTER TABLE `koszyk`
  MODIFY `ID_Koszyk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `lista`
--
ALTER TABLE `lista`
  MODIFY `ID_Lista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `pracownik`
--
ALTER TABLE `pracownik`
  MODIFY `ID_Pracownik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `producent`
--
ALTER TABLE `producent`
  MODIFY `ID_Producent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `produkt`
--
ALTER TABLE `produkt`
  MODIFY `ID_Produkt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `dostawca`
--
ALTER TABLE `dostawca`
  ADD CONSTRAINT `dostawca_ibfk_1` FOREIGN KEY (`ID_Auto`) REFERENCES `auto` (`ID_Auto`),
  ADD CONSTRAINT `dostawca_ibfk_2` FOREIGN KEY (`ID_Pracownik`) REFERENCES `pracownik` (`ID_Pracownik`);

--
-- Ograniczenia dla tabeli `faktura`
--
ALTER TABLE `faktura`
  ADD CONSTRAINT `faktura_ibfk_1` FOREIGN KEY (`ID_Koszyk`) REFERENCES `koszyk` (`ID_Koszyk`),
  ADD CONSTRAINT `faktura_ibfk_2` FOREIGN KEY (`ID_Klient`) REFERENCES `klient` (`ID_Klient`),
  ADD CONSTRAINT `faktura_ibfk_3` FOREIGN KEY (`ID_Dostawca`) REFERENCES `dostawca` (`ID_Dostawca`);

--
-- Ograniczenia dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD CONSTRAINT `klient_ibfk_1` FOREIGN KEY (`ID_Firma`) REFERENCES `firma` (`ID_Firma`),
  ADD CONSTRAINT `klient_ibfk_2` FOREIGN KEY (`ID_Adres`) REFERENCES `adres` (`ID_Adres`);

--
-- Ograniczenia dla tabeli `koszyk`
--
ALTER TABLE `koszyk`
  ADD CONSTRAINT `koszyk_ibfk_1` FOREIGN KEY (`ID_Klient`) REFERENCES `klient` (`ID_Klient`);

--
-- Ograniczenia dla tabeli `lista`
--
ALTER TABLE `lista`
  ADD CONSTRAINT `lista_ibfk_1` FOREIGN KEY (`ID_Koszyk`) REFERENCES `koszyk` (`ID_Koszyk`),
  ADD CONSTRAINT `lista_ibfk_2` FOREIGN KEY (`ID_Produkt`) REFERENCES `produkt` (`ID_Produkt`);

--
-- Ograniczenia dla tabeli `pracownik`
--
ALTER TABLE `pracownik`
  ADD CONSTRAINT `pracownik_ibfk_1` FOREIGN KEY (`ID_Adres`) REFERENCES `adres` (`ID_Adres`);

--
-- Ograniczenia dla tabeli `producent`
--
ALTER TABLE `producent`
  ADD CONSTRAINT `producent_ibfk_1` FOREIGN KEY (`Adres_Producenta`) REFERENCES `adres` (`ID_Adres`);

--
-- Ograniczenia dla tabeli `produkt`
--
ALTER TABLE `produkt`
  ADD CONSTRAINT `produkt_ibfk_1` FOREIGN KEY (`ID_Kategoria`) REFERENCES `kategoria` (`ID_Kategoria`),
  ADD CONSTRAINT `produkt_ibfk_2` FOREIGN KEY (`ID_Producent`) REFERENCES `producent` (`ID_Producent`);
--
-- Baza danych: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

--
-- Zrzut danych tabeli `pma__central_columns`
--

INSERT INTO `pma__central_columns` (`db_name`, `col_name`, `col_type`, `col_length`, `col_collation`, `col_isNull`, `col_extra`, `col_default`) VALUES
('flixgo', 'login', 'varchar', '20', 'utf8mb4_polish_ci', 0, ',', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Zrzut danych tabeli `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"relation_lines\":\"false\",\"angular_direct\":\"direct\"}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Zrzut danych tabeli `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"wypozyczalnia\",\"table\":\"koszyk\"},{\"db\":\"wypozyczalnia\",\"table\":\"przemioty_koszyka\"},{\"db\":\"wypozyczalnia\",\"table\":\"szczegoly_zamowienia\"},{\"db\":\"wypozyczalnia\",\"table\":\"zamowienie\"},{\"db\":\"wypozyczalnia\",\"table\":\"filmy\"},{\"db\":\"wypozyczalnia\",\"table\":\"uzytkownicy\"},{\"db\":\"flixgo\",\"table\":\"uzytkownicy\"},{\"db\":\"flixgo\",\"table\":\"filmy\"},{\"db\":\"flixgo\",\"table\":\"wypozyczenia\"},{\"db\":\"flixgo\",\"table\":\"opinie\"}]');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Zrzut danych tabeli `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-06-05 16:56:09', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pl\"}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Zrzut danych tabeli `pma__users`
--

INSERT INTO `pma__users` (`username`, `usergroup`) VALUES
('krzc', '');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeksy dla tabeli `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeksy dla tabeli `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeksy dla tabeli `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeksy dla tabeli `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeksy dla tabeli `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeksy dla tabeli `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeksy dla tabeli `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeksy dla tabeli `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeksy dla tabeli `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeksy dla tabeli `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeksy dla tabeli `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeksy dla tabeli `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeksy dla tabeli `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Baza danych: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Baza danych: `wypozyczalnia`
--
CREATE DATABASE IF NOT EXISTS `wypozyczalnia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `wypozyczalnia`;

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
