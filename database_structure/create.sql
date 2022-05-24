CREATE TABLE narodowosc (
    ID_narodowosc NUMERIC PRIMARY KEY,
    nazwa varchar2(64) NOT NULL UNIQUE
);

CREATE TABLE miasto(
    ID_miasto NUMERIC PRIMARY KEY,
    nazwa varchar2(64) NOT NULL UNIQUE
);

CREATE TABLE osoba(
    ID_osoba NUMERIC PRIMARY KEY,
    imie varchar2(24) NOT NULL,
    nazwisko varchar2(32) NOT NULL,
    data_urodzenia DATE NOT NULL,
    ID_narodowosc NUMERIC REFERENCES narodowosc(ID_narodowosc) NOT NULL
);

CREATE TABLE sedzia(
    ID_sedzia NUMERIC PRIMARY KEY,
    licencja varchar2(32) NOT NULL,
    ID_osoba NUMERIC REFERENCES osoba(ID_osoba) NOT NULL
);

CREATE TABLE stadion(
    ID_stadion NUMERIC PRIMARY KEY,
    nazwa varchar2(64) NOT NULL UNIQUE,
    sponsor varchar2(64) NOT NULL,
    pojemnosc NUMERIC CHECK (pojemnosc>=0)
);

CREATE TABLE liga(
    ID_liga NUMERIC PRIMARY KEY,
    nazwa varchar2(32) NOT NULL UNIQUE,
    kraj NUMERIC REFERENCES narodowosc(ID_narodowosc) NOT NULL
);

CREATE TABLE klub(
    ID_klub NUMERIC PRIMARY KEY,
    nazwa varchar2(64) NOT NULL UNIQUE,
    budzet NUMERIC,
    Wlasciciel NUMERIC REFERENCES osoba(ID_osoba) NOT NULL,
    stadion NUMERIC REFERENCES stadion(ID_stadion) NOT NULL,
    miasto NUMERIC REFERENCES miasto(ID_miasto) NOT NULL,
    liga NUMERIC REFERENCES liga(ID_liga) NOT NULL
);

CREATE TABLE sezon(
    ID_sezon NUMERIC PRIMARY KEY,
    rok NUMERIC NOT NULL,
    ID_liga NUMERIC REFERENCES liga(ID_liga) NOT NULL
);

CREATE TABLE trofeum(
    ID_trofeum NUMERIC PRIMARY KEY,
    nazwa varchar2(32) NOT NULL,
    ID_sezon numeric REFERENCES sezon(ID_sezon) NOT NULL
);

CREATE TABLE zdobyteTrofeum(
    ID_zdobyteTrofeum NUMERIC PRIMARY KEY,
    ID_klub NUMERIC REFERENCES klub(ID_klub) NOT NULL,
    ID_trofeum NUMERIC REFERENCES trofeum(ID_trofeum) NOT NULL
);


CREATE TABLE pozycja(
    ID_pozycja NUMERIC PRIMARY KEY,
    nazwa varchar2(64) NOT NULL UNIQUE
);

CREATE TABLE pilkarz(
    ID_pilkarz NUMERIC PRIMARY KEY,
    ID_pozycja NUMERIC REFERENCES pozycja(ID_pozycja) NOT NULL,
    wartosc NUMERIC CHECK (wartosc >0),
    ID_klub NUMERIC REFERENCES klub(ID_klub) NOT NULL,
    ID_osoba NUMERIC REFERENCES osoba(ID_osoba) NOT NULL UNIQUE
);

CREATE TABLE manager(
    ID_manager NUMERIC PRIMARY KEY,
    ID_klub NUMERIC REFERENCES klub(ID_klub) NOT NULL,
    ID_osoba NUMERIC REFERENCES osoba(ID_osoba) NOT NULL
);

CREATE TABLE statystykiSedziego(
    ID_statystykiSedziego NUMERIC PRIMARY KEY,
    red NUMERIC,
    yellow NUMERIC,
    penelty NUMERIC,
    ID_sedzia NUMERIC REFERENCES sedzia(ID_sedzia) NOT NULL,
    ID_sezon NUMERIC REFERENCES sezon(ID_sezon) NOT NULL
);

CREATE TABLE statystykiPilkarza(
    ID_statystykiPilkarza NUMERIC PRIMARY KEY,
    goal numeric,
    assist numeric,
    matches numeric,
    yellow numeric,
    red numeric,
    ID_pilkarz NUMERIC REFERENCES pilkarz(ID_pilkarz) NOT NULL,
    ID_sezon NUMERIC REFERENCES sezon(ID_sezon) NOT NULL
);


CREATE TABLE statystykiManagera(
    ID_statystykiManagera NUMERIC PRIMARY KEY,
    win numeric,
    draw numeric,
    lost numeric,
    goalsScored numeric,
    goalsConceded numeric,
    ID_maganer NUMERIC REFERENCES manager(ID_manager) NOT NULL,
    ID_sezon NUMERIC REFERENCES sezon(ID_sezon) NOT NULL
);

CREATE TABLE statystykiKlubu(
    ID_statystykiKlubu NUMERIC PRIMARY KEY,
    win numeric,
    draw numeric,
    lost numeric,
    goalsScored numeric,
    goalsConceded numeric,
    points numeric,
    ID_klub numeric references klub(ID_klub) NOT NULL,
    ID_sezon numeric references sezon(ID_sezon) NOT NULL
);

CREATE TABLE mecz(
    ID_mecz NUMERIC PRIMARY KEY,
    ID_gospodarz numeric references klub(ID_klub) NOT NULL,
    ID_gosc numeric references klub(ID_klub) NOT NULL,
	gospGol numeric,
	goscGol numeric,
	rezultat numeric,
    ID_sedzia numeric references sedzia(ID_sedzia) NOT NULL,
    ID_sezon numeric references sezon(ID_sezon) NOT NULL,
    termin date NOT NULL
);

CREATE TABLE zdarzenie(
    ID_zdarzenie NUMERIC PRIMARY KEY,
    nazwa varchar2(32) not null unique
    
);
CREATE TABLE przebiegMeczu(
    ID_przebiegMeczu NUMERIC PRIMARY KEY,
    ID_mecz NUMERIC REFERENCES mecz(ID_mecz),
    ID_zdarzenie numeric references zdarzenie(ID_zdarzenie),
    ID_pilkarz numeric references pilkarz(ID_pilkarz),
	ID_klub numeric references klub(ID_klub),
    minuta numeric check (minuta>0 and minuta <130)
);
