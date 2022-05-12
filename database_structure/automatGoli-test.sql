DROP TRIGGER automatGoli;

CREATE OR REPLACE TRIGGER automatGoli
AFTER INSERT ON przebiegMeczu
FOR EACH ROW
DECLARE 
BEGIN
	UPDATE statystykiPilkarza set statystykiPilkarza.goal = (statystykiPilkarza.goal+1) where statystykiPilkarza.ID_pilarz= :NEW.ID_pilkarza;
END;
/

insert into przebiegMeczu values(11,5,1,3,91); --- id, mecz z city, gol, cristiano ronaldo, minuta 

select * from statystykiPilkarza where id=3;--cristiano ronaldo

delete from przebiegMeczu where ID_przebiegMeczu=11; -- usuwamy rekord