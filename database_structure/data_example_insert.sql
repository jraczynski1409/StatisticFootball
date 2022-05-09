INSERT INTO narodowosc VALUES(1,'Anglia');
INSERT INTO narodowosc VALUES(2,'Brazylia');
INSERT INTO narodowosc VALUES(3,'Portugalia');

INSERT INTO miasto VALUES(1, 'Manchester');
INSERT INTO miasto VALUES(2, 'Liverpool');

INSERT INTO osoba VALUES(1, 'Cristiano', 'Ronaldo', to_date('25/02/1988','DD/MM/YYYY'),3);
INSERT INTO osoba VALUES(2, 'Jack', 'Grealish', to_date('10/05/1996','DD/MM/YYYY'),1);
INSERT INTO osoba VALUES(3, 'Alisson', 'Becker', to_date('14/11/1985','DD/MM/YYYY'),2);
INSERT INTO osoba VALUES(4, 'Joshep', 'Guardiola', to_date('15/11/1965','DD/MM/YYYY'),3);
INSERT INTO osoba VALUES(5, 'Graham', 'Potter', to_date('11/12/1975','DD/MM/YYYY'),1);
INSERT INTO osoba VALUES(6, 'Mike', 'Dean', to_date('15/01/1967','DD/MM/YYYY'),1);

INSERT INTO sedzia VALUES(1,'UEFA kat.A',6);

INSERT INTO stadion VALUES(1,'Old Trafford', 'Adidas', 78000);
INSERT INTO stadion VALUES(2,'Anfield', 'New Balance', 75000);

INSERT INTO liga VALUES(1, 'Premier League',1,'Barclays',1,20);

INSERT INTO klub VALUES(1, 'Manchester United', 100,1300, 1, 1,1,1,1);
INSERT INTO klub VALUES(2, 'Liverpool', 87,1100, 6, 1,2,2,1);

INSERT INTO sezon VALUES(1,2022,1);

INSERT INTO trofeum VALUES(1,'Premier League Champion', 1);

INSERT INTO zdobyteTrofeum VALUES(1,1,1);

INSERT INTO pozycja VALUES(1,'Bramkarz');
INSERT INTO pozycja VALUES(2,'Skrzydlowy');
INSERT INTO pozycja VALUES(3,'Srodkowy Napastnik');

INSERT INTO pilkarz VALUES(1,1,50,2,3);
INSERT INTO pilkarz VALUES(2,2,100,1,2);
INSERT INTO pilkarz VALUES(3,3,65,1,1);

INSERT INTO manager VALUES(1,'UEFA PRO A',1,5);
INSERT INTO manager VALUES(2,'UEFA PRO B',2,4);


INSERT INTO mecz VALUES(1,1,2,1,1,to_date('25/05/2022','DD/MM/YYYY'));

INSERT INTO zdarzenie VALUES(1,'Gol');
INSERT INTO zdarzenie VALUES(2,'Zolta');

INSERT INTO przebiegMeczu VALUES(1,1,1,3,50);
INSERT INTO przebiegMeczu VALUES(2,1,2,1,51);

