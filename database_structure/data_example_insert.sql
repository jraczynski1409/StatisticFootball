INSERT INTO narodowosc VALUES(1,'Anglia');
INSERT INTO narodowosc VALUES(2,'Brazylia');
INSERT INTO narodowosc VALUES(3,'Portugalia');
INSERT INTO narodowosc VALUES(4,'Wlochy');
INSERT INTO narodowosc VALUES(5,'Hiszpania');

INSERT INTO miasto VALUES(1, 'Manchester');
INSERT INTO miasto VALUES(2, 'Liverpool');

INSERT INTO osoba VALUES(1, 'Cristiano', 'Ronaldo', to_date('25/02/1988','DD/MM/YYYY'),3);
INSERT INTO osoba VALUES(2, 'Jack', 'Grealish', to_date('10/05/1996','DD/MM/YYYY'),1);
INSERT INTO osoba VALUES(3, 'Alisson', 'Becker', to_date('14/11/1985','DD/MM/YYYY'),2);
INSERT INTO osoba VALUES(4, 'Joshep', 'Guardiola', to_date('15/11/1965','DD/MM/YYYY'),5);
INSERT INTO osoba VALUES(5, 'Graham', 'Potter', to_date('11/12/1975','DD/MM/YYYY'),1);
INSERT INTO osoba VALUES(6, 'Mike', 'Dean', to_date('15/01/1967','DD/MM/YYYY'),1);
INSERT INTO osoba VALUES(7, 'Diogo','Jota', to_date('23/08/1995','DD/MM/YYYY'),3);
INSERT INTO osoba VALUES(8, 'Scott','Atkinson',to_date('22/04/1968','DD/MM/YYYY'),4);

INSERT INTO sedzia VALUES(1,'UEFA PRO kat.A',6);
INSERT INTO sedzia VALUES(2,'UEFA PRO kat.A',8);

INSERT INTO stadion VALUES(1,'Old Trafford', 'Adidas', 78000);
INSERT INTO stadion VALUES(2,'Anfield', 'New Balance', 75000);
INSERT INTO stadion VALUES(3,'Etihad Stadium','Emirates',67500);

INSERT INTO liga VALUES(1, 'Premier League',1,'Barclays',1,20);
INSERT INTO liga VALUES(2,'La liga',5,'Santander',1,20);


INSERT INTO klub VALUES(1, 'Manchester United', 100,1300, 'Glazerowie', 1,1,1,1);
INSERT INTO klub VALUES(2, 'Liverpool', 87,1100, 'Liverpools owner', 1,2,2,1);
INSERT INTO klub VALUES(3, 'Manchester City', 85, 1350,'Petro oil' , 1, 3 ,1 , 1);

INSERT INTO sezon VALUES(1,2022,1);
INSERT INTO sezon VALUES(2,2023,1);

INSERT INTO trofeum VALUES(1,'Premier League Champion', 1);
INSERT INTO trofeum VALUES(2,'Carabao Cup', 1);
INSERT INTO trofeum VALUES(3,'FA cup', 1);

INSERT INTO zdobyteTrofeum VALUES(1,1,1);
INSERT INTO zdobyteTrofeum VALUES(2,2,2);
INSERT INTO zdobyteTrofeum VALUES(3,3,3);

INSERT INTO pozycja VALUES(1,'Bramkarz');
INSERT INTO pozycja VALUES(2,'Boczny Obronca');
INSERT INTO pozycja VALUES(3,'Stoper');
INSERT INTO pozycja VALUES(5,'Defensywny pomocnik');
INSERT INTO pozycja VALUES(4,'Srodkowy pomocnik');
INSERT INTO pozycja VALUES(6,'Ofensywny pomocnik');
INSERT INTO pozycja VALUES(7,'Skrzydlowy');
INSERT INTO pozycja VALUES(8,'Napastnik');

INSERT INTO pilkarz VALUES(1,1,50,2,3);
INSERT INTO pilkarz VALUES(2,7,100,1,2);
INSERT INTO pilkarz VALUES(3,8,65,1,1);
INSERT INTO pilkarz VALUES(4,8,80,2,4);

INSERT INTO manager VALUES(1,'UEFA PRO A',1,5);
INSERT INTO manager VALUES(2,'UEFA PRO B',2,4);

INSERT INTO mecz VALUES(1,1,2,'','','',1,1,to_date('25/05/2022','DD/MM/YYYY'));
INSERT INTO mecz VALUES(2,1,3,'','','',2,1,to_date('26/05/2022','DD/MM/YYYY'));
INSERT INTO mecz VALUES(3,2,3,'','','',1,1,to_date('27/05/2022','DD/MM/YYYY'));
INSERT INTO mecz VALUES(4,2,1,'','','',1,1,to_date('28/05/2022','DD/MM/YYYY'));
INSERT INTO mecz VALUES(5,3,1,'','','',2,1,to_date('29/05/2022','DD/MM/YYYY'));
INSERT INTO mecz VALUES(6,3,2,'','','',2,1,to_date('30/05/2022','DD/MM/YYYY'));

INSERT INTO zdarzenie VALUES(1,'Gol');
INSERT INTO zdarzenie VALUES(2,'Asysta');
INSERT INTO zdarzenie VALUES(3,'Zolta');
INSERT INTO zdarzenie VALUES(4,'Czerwona');
INSERT INTO zdarzenie VALUES(5,'StrzelonyKarny');
INSERT INTO zdarzenie VALUES(6,'SpudlowanyKarny');

INSERT INTO przebiegMeczu VALUES(1,1,1,3,50);
INSERT INTO przebiegMeczu VALUES(2,1,2,1,51);
INSERT INTO przebiegMeczu VALUES(3,2,4,1,57);
INSERT INTO przebiegMeczu VALUES(4,2,1,3,90);
INSERT INTO przebiegMeczu VALUES(5,3,4,1,55);
INSERT INTO przebiegMeczu VALUES(6,4,3,3,60);
INSERT INTO przebiegMeczu VALUES(7,4,3,1,1);
INSERT INTO przebiegMeczu VALUES(8,5,1,1,24);
INSERT INTO przebiegMeczu VALUES(9,5,1,3,28);
INSERT INTO przebiegMeczu VALUES(10,6,4,2,51);
