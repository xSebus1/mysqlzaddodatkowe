SELECT * from produkty WHERE id_kategorii = 12;
SELECT imie, nazwisko, email, miasto from klienci WHERE miasto = "Warszawa";
SELECT imie, nazwisko from pracownicy WHERE dzial = "Sprzedaż" ORDER by nazwisko
SELECT nazwa_produktu, cena_sprzedazy from produkty WHERE cena_sprzedazy > 5000;
SELECT id_zamowienia, data_zamowienia, status_zamowienia from zamowienia WHERE status_zamowienia = "Zrealizowane";
SELECT nazwa from producenci ORDER by nazwa;
SELECT nr_faktury, kwota_brutto, data_wystawienia from faktury WHERE year(data_wystawienia) = 2023 and month(data_wystawienia) = 03;
SELECT imie, nazwisko, data_zatrudnienia from pracownicy WHERE year(data_zatrudnienia) = 2020;
SELECT imie, nazwisko from klienci WHERE imie like "a%";
SELECT nazwa_produktu, cena_sprzedazy from produkty WHERE jednostka_miary = "szt" ORDER by cena_sprzedazy DESC;
SELECT nazwa_magazynu, miasto from magazyny WHERE miasto = "Warszawa" or miasto = "Kraków";
SELECT id_zamowienia from zamowienia WHERE koszt_dostawy = 0
SELECT imie, nazwisko, pensja_podstawowa from pracownicy WHERE plec = "M" and pensja_podstawowa > 8000;
SELECT nazwa_kategorii from kategorie_produktow WHERE nadrzedna_kategoria_id IS null;
SELECT nazwa_produktu from produkty WHERE nazwa_produktu like "%Pro%";
SELECT id_kategorii, AVG(cena_sprzedazy) from produkty GROUP by id_kategorii;
SELECT nazwa_firmy, rabat_staly from klienci WHERE typ_klienta = "firma" AND rabat_staly > 3 ORDER BY rabat_staly DESC;
SELECT MONTH(termin_platnosci) AS miesiac, SUM(kwota_brutto) AS suma_kwoty FROM faktury GROUP BY MONTH(termin_platnosci) ORDER BY miesiac;
SELECT id_zamowienia, data_zamowienia from zamowienia WHERE date(data_zamowienia) BETWEEN "2023-03-10" and "2023-03-20";
SELECT stanowisko, COUNT(id_pracownika), sum(pensja_podstawowa) from pracownicy GROUP by stanowisko ORDER by pensja_podstawowa DESC
SELECT  nazwa_produktu, ROUND(cena_sprzedazy - cena_zakupu, 2) AS marza, ROUND((cena_sprzedazy - cena_zakupu) / cena_zakupu * 100, 2) AS procent_marzy FROM produkty WHERE (cena_sprzedazy - cena_zakupu) > 2000;
SELECT id_dostawy, nr_przesylki, DATEDIFF(rzeczywista_data_dostawy, data_wysylki) as roznica_w_dniach from dostawy WHERE status_dostawy = "dostarczona"
SELECT id_dostawy, nr_przesylki, DATEDIFF(rzeczywista_data_dostawy, data_wysylki) as roznica_w_dniach from dostawy WHERE status_dostawy = "dostarczona" ORDER by roznica_w_dniach DESC;
SELECT nr_faktury, kwota_brutto, DATEDIFF(CURRENT_DATE() , termin_platnosci) as dni_zalele from faktury WHERE status_platnosci = 'oczekuje na płatność';
