-- 1
SELECT * FROM Viaggio
WHERE Durata < 15
;
-- 2
SELECT Localita FROM Viaggio
WHERE Durata > 7
AND Durata < 10
AND Costo < 500
;
-- 3
SELECT Nome, Cognome, Nascita FROM Turista
WHERE Cognome LIKE "Ro%"
ORDER BY "Cognome"
;
-- 4
SELECT Localita FROM Viaggio
INNER JOIN Prenotazione ON Viaggio.id_Viaggio = Prenotazione.id_Viaggio
INNER JOIN Turista ON Prenotazione.id_Turista = Turista.id_Turista
WHERE Nome = 'Mario'
AND Cognome = 'Rossi'
;
-- 5
SELECT tipo_pagamento FROM Viaggio
INNER JOIN Prenotazione ON Viaggio.id_Viaggio = Prenotazione.id_Viaggio
INNER JOIN Turista ON Prenotazione.id_Turista = Turista.id_Turista
WHERE Nome = 'Francesca'
AND Cognome = 'Verdi'
;
-- 6
SELECT Localita, durata FROM Viaggio
INNER JOIN Prenotazione ON Viaggio.id_Viaggio = Prenotazione.id_Viaggio
INNER JOIN Turista ON Prenotazione.id_Turista = Turista.id_Turista
WHERE Data_Prenotazione like "2018%"
;
-- 7
SELECT sum(Costo) AS CostoPrenotazioneMarioRossi FROM Viaggio
INNER JOIN Prenotazione ON Viaggio.id_Viaggio = Prenotazione.id_Viaggio
INNER JOIN Turista ON Prenotazione.id_Turista = Turista.id_Turista
WHERE Nome = 'Mario'
AND Cognome = 'Rossi'
;
-- 8
SELECT avg(Costo) AS CostoViaggiPrenotati FROM Viaggio
INNER JOIN Prenotazione ON Viaggio.id_Viaggio = Prenotazione.id_Viaggio
INNER JOIN Turista ON Prenotazione.id_Turista = Turista.id_Turista
;
-- 9 
SELECT  Nome, Cognome, sum(costo)  AS CostoTotaleViaggi FROM Viaggio
INNER JOIN Prenotazione ON Viaggio.id_Viaggio = Prenotazione.id_Viaggio
INNER JOIN Turista ON Prenotazione.id_Turista = Turista.id_Turista
Group By Nome
;
-- 10 
SELECT  Nome, Cognome, count(Id_Prenotazione) FROM Viaggio
INNER JOIN Prenotazione ON Viaggio.id_Viaggio = Prenotazione.id_Viaggio
INNER JOIN Turista ON Prenotazione.id_Turista = Turista.id_Turista
Group By Nome
;
-- 11
SELECT Viaggio.id_Viaggio, count(Turista.id_Turista) AS QuantitàTuristi FROM Viaggio
INNER JOIN Prenotazione ON Viaggio.id_Viaggio = Prenotazione.id_Viaggio
INNER JOIN Turista ON Prenotazione.id_Turista = Turista.id_Turista
Group By localita
;
-- 12
SELECT  localita, count(Id_Prenotazione) AS QuantitàTotaleDiPrenotazioni FROM Viaggio
INNER JOIN Prenotazione ON Viaggio.id_Viaggio = Prenotazione.id_Viaggio
INNER JOIN Turista ON Prenotazione.id_Turista = Turista.id_Turista
Group By localita
;