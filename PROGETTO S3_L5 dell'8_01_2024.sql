-- creazione tab vendite
CREATE TABLE vendite (
    ID_transazione VARCHAR (100),
    categoria_prodotto TEXT (100),
    costo DECIMAL (5,2),
    sconto INT 
);

-- creazione tab dettagli_vendite
CREATE TABLE dettagli_vendite (
    ID_transazione VARCHAR (100),
    data_transizione DATE,
    quant INT
);

-- inserisco dati nella tab vendite
INSERT INTO vendite (ID_transazione, categoria_prodotto, costo, sconto)
VALUES
('1', 'Elettronica', 150.99, 10),
('2', 'Abbigliamento', 79.50, 60),
('3', 'Giochi', 49.99, 0),
('4', 'Cucina', 30.75, 55),
('5', 'Sport', 120.00, 15),
('6', 'Libri', 25.50, 3),
('7', 'Arredamento', 200.00, 12),
('8', 'Giardino', 45.25, 6),
('9', 'Fai da te', 70.80, 50),
('10', 'Bellezza', 90.45, 7),
('11', 'Elettronica', 130.50, 8),
('12', 'Abbigliamento', 60.25, 3),
('13', 'Giochi', 55.00, 5),
('14', 'Cucina', 40.20, 25),
('15', 'Sport', 85.75, 7),
('16', 'Libri', 20.99, 80),
('17', 'Arredamento', 180.00, 15),
('18', 'Giardino', 55.60, 4),
('19', 'Fai da te', 65.30, 6),
('20', 'Bellezza', 75.20, 8),
('21', 'Elettronica', 110.25, 5),
('22', 'Abbigliamento', 70.00, 12),
('23', 'Giochi', 40.99, 70),
('24', 'Cucina', 25.50, 15),
('25', 'Sport', 90.75, 20),
('26', 'Libri', 18.99, 5),
('27', 'Arredamento', 160.00, 18),
('28', 'Giardino', 40.60, 60),
('29', 'Fai da te', 60.30, 8),
('30', 'Bellezza', 80.20, 15),
('31', 'Elettronica', 95.50, 6),
('32', 'Abbigliamento', 45.25, 10),
('33', 'Giochi', 35.00, 0),
('34', 'Cucina', 20.20, 8),
('35', 'Sport', 75.75, 12),
('36', 'Libri', 15.99, 2),
('37', 'Arredamento', 140.00, 75),
('38', 'Giardino', 35.60, 8),
('39', 'Elettronica', 110.25, 5),
('40', 'Abbigliamento', 70.00, 12);


-- inserisco dati nella tab dettagli_vendite
INSERT INTO dettagli_vendite (ID_transazione, data_transizione, quant)
VALUES
('1', '2023-09-08', 2),
('2', '2023-09-08', 5),
('3', '2023-09-07', 3),
('4', '2023-09-07', 1),
('5', '2023-09-06', 4),
('6', '2023-09-06', 2),
('7', '2023-09-06', 7),
('8', '2023-09-06', 3),
('9', '2023-08-04', 6),
('10', '2023-08-04', 1),
('11', '2023-08-03', 4),
('12', '2023-08-03', 2),
('13', '2023-08-02', 8),
('14', '2023-07-02', 3),
('15', '2023-07-01', 5),
('16', '2023-07-01', 2),
('17', '2023-12-31', 3),
('18', '2023-12-31', 6),
('19', '2023-12-30', 1),
('20', '2023-12-30', 7),
('21', '2023-12-29', 4),
('22', '2023-12-29', 2),
('23', '2023-12-28', 3),
('24', '2023-12-28', 5),
('25', '2023-12-27', 2),
('26', '2023-12-27', 4),
('27', '2023-12-26', 6),
('28', '2023-12-26', 3),
('29', '2023-12-25', 1),
('30', '2023-12-25', 8),
('31', '2023-12-24', 3),
('32', '2023-10-24', 2),
('33', '2023-10-23', 5),
('34', '2023-10-23', 4),
('35', '2023-10-22', 2),
('36', '2023-12-22', 6),
('37', '2023-12-21', 1),
('38', '2023-12-21', 7),
('39', '2023-11-20', 4),
('40', '2023-11-19', 2),
('41', '2023-11-18', 5),
('42', '2023-11-17', 3),
('43', '2023-11-16', 1),
('44', '2023-11-15', 8),
('45', '2023-11-14', 3),
('46', '2023-11-13', 2),
('47', '2023-11-12', 5),
('48', '2023-11-11', 4),
('49', '2023-11-10', 2),
('50', '2023-11-09', 6),
('51', '2023-11-08', 3),
('52', '2023-11-07', 5),
('53', '2023-11-06', 2),
('54', '2023-11-05', 4),
('55', '2023-11-04', 6),
('56', '2023-11-03', 3),
('57', '2023-11-02', 1),
('58', '2023-11-01', 7),
('59', '2023-10-31', 3),
('60', '2023-10-30', 2),
('61', '2023-10-29', 5),
('62', '2023-10-28', 4),
('63', '2023-10-27', 2),
('64', '2023-10-26', 6),
('65', '2023-10-25', 1),
('66', '2023-10-24', 7),
('67', '2023-10-23', 3),
('68', '2023-10-22', 5),
('69', '2023-10-21', 2);

#SELECT * FROM vendite;
#SELECT * FROM dettagli_vendite;

#1. Seleziona tutte le vendite avvenute in una specifica data.
SELECT *
FROM dettagli_vendite
WHERE data_transizione='2023-09-08';


#2.Elenco delle vendite con sconti maggiori del 50%
SELECT *
FROM vendite
WHERE sconto > 50;

#3. Calcola il totale delle vendite per categoria
SELECT categoria_prodotto, SUM(costo) AS totale_vendite
FROM vendite
GROUP BY categoria_prodotto;


#4. Trova il numero totale di prodotti venduti per ogni categoria
SELECT v.categoria_prodotto AS categoria, SUM(d.quant) AS quant_tot
FROM vendite v 
JOIN dettagli_vendite d ON v.ID_transazione=d.ID_transazione
GROUP BY v.categoria_prodotto
ORDER BY v.categoria_prodotto;

#5. Seleziona le vendite dell'ultimo trimestre. 
SELECT v.*
FROM vendite v
JOIN dettagli_vendite d ON v.ID_transazione = d.ID_transazione
WHERE d.data_transizione >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH);


#6. Raggruppa le vendite per mese e calcola il totale delle vendite per ogni mese.
SELECT MONTH (d.data_transizione) AS mese, YEAR(d.data_transizione) AS anno, SUM(v.costo) AS tot_vendite
FROM vendite v
JOIN dettagli_vendite d ON v.ID_transazione = d.ID_transazione
GROUP BY mese, anno
ORDER BY mese;

#7. Trova la categoria con lo sconto medio più alto.
SELECT categoria_prodotto, AVG (sconto) AS sconto_medio
FROM vendite
GROUP BY categoria_prodotto
ORDER BY AVG (sconto) DESC -- ho prima ordinato dallo sconto medio più alto
LIMIT 1; -- poi gli ho detto di darmi solo la categoria con lo sconto medio più alto

#8. Confronta le vendite mese per mese per vedere l'incremento o il decremento delle vendite. Calcola l’incremento o decremento mese per mese
CREATE VIEW vista_vendite_mese AS 
SELECT MONTH(d.data_transizione) AS mese, YEAR(d.data_transizione) AS anno, SUM(v.costo) AS vendite_tot
FROM vendite v
JOIN dettagli_vendite d ON v.ID_transazione = d.ID_transazione
GROUP BY anno, mese
ORDER BY anno, mese;

SELECT anno, mese, vendite_tot, vendite_tot - LAG(vendite_tot) OVER (ORDER BY anno, mese) AS DifferenzaMesePerMese
FROM vista_vendite_mese
WHERE anno = 2023;

#9. Confronta le vendite totali in diverse stagioni.
SELECT 
CASE 
WHEN MONTH(data_transizione) = 12 AND DAY(data_transizione) >= 21 OR MONTH(data_transizione) = 1 OR MONTH(data_transizione) = 2 OR (MONTH(data_transizione) = 3 AND DAY(data_transizione) < 20) THEN 'Inverno'
WHEN MONTH(data_transizione) = 3 AND DAY(data_transizione) >= 20 OR MONTH(data_transizione) = 4 OR MONTH(data_transizione) = 5 OR (MONTH(data_transizione) = 6 AND DAY(data_transizione) < 21) THEN 'Primavera'
WHEN MONTH(data_transizione) = 6 AND DAY(data_transizione) >= 21 OR MONTH(data_transizione) = 7 OR MONTH(data_transizione) = 8 OR (MONTH(data_transizione) = 9 AND DAY(data_transizione) < 22) THEN 'Estate'
WHEN MONTH(data_transizione) = 9 AND DAY(data_transizione) >= 22 OR MONTH(data_transizione) = 10 OR MONTH(data_transizione) = 11 OR (MONTH(data_transizione) = 12 AND DAY(data_transizione) < 21) THEN 'Autunno'
END AS stagione, SUM(quant) AS totale_vendite
FROM dettagli_vendite
GROUP BY stagione
ORDER BY totale_vendite DESC; -- l'ho ordinato, anche se non richiesto, perché così ci ridà subito la stagione in cui sono stati venduti più prodotti

#10. Supponendo di avere una tabella clienti con i campi IDCliente e IDVendita, scrivi una query per trovare i top 5 clienti con il maggior numero di acquisti. 
-- creo tab clienti
CREATE TABLE clienti (
    ID_clienti VARCHAR (100),
    ID_vendita INT
);

-- inserisco dati nella tab clienti
INSERT INTO clienti (ID_clienti, ID_vendita)
VALUES
('C1', 1),
('C1', 2),
('C1', 3),
('C2', 2),
('C2', 3),
('C2', 5),
('C2', 4),
('C2', 9),
('C3', 3),
('C3', 7),
('C3', 8),
('C3', 9),
('C3', 10),
('C3', 11),
('C4', 12),
('C5', 5),
('C5', 2),
('C5', 1),
('C5', 13),
('C5', 14),
('C5', 15),
('C5', 16),
('C5', 17),
('C5', 18),
('C6', 6),
('C6', 19),
('C6', 20),
('C6', 21),
('C6', 22),
('C6', 23),
('C6', 24),
('C6', 36),
('C6', 25),
('C6', 26),
('C6', 27),
('C7', 7),
('C7', 28),
('C7', 29),
('C7', 30),
('C7', 31),
('C7', 32),
('C7', 33),
('C7', 34),
('C7', 35),
('C7', 37),
('C7', 38),
('C7', 19),
('C8', 40),
('C8', 4),
('C8', 14),
('C8', 24),
('C8', 44),
('C8', 34),
('C8', 12),
('C8', 10),
('C8', 20),
('C8', 30),
('C8', 23),
('C9', 21),
('C9', 1),
('C9', 2),
('C9', 3),
('C9', 5),
('C9', 15),
('C9', 16),
('C10', 17),
('C10', 18),
('C10', 19),
('C10', 27),
('C10', 29),
('C10', 9),
('C10', 19),
('C10', 39),
('C10', 25),
('C10', 26),
('C10', 27);

-- rispondo alla query 10
SELECT ID_clienti, COUNT(DISTINCT ID_vendita) AS numero_acquisti
FROM clienti
GROUP BY ID_clienti
ORDER BY numero_acquisti DESC
LIMIT 5;


-- invento altre query che potrebbero essere utili per questo database

#10 il tot delle vendite per ogni cliente ordinato per il cliente che ha speso di più
SELECT c.ID_clienti, SUM(v.costo) AS tot_costo
FROM clienti c
JOIN vendite v ON c.ID_vendita = v.ID_transazione
JOIN dettagli_vendite d ON v.ID_transazione = d.ID_transazione
GROUP BY c.ID_clienti
ORDER BY tot_costo DESC;

#11. trovare le 3 categoria più vendute 
SELECT v.categoria_prodotto, AVG(d.quant) AS media_quantita
FROM vendite v
JOIN dettagli_vendite d ON v.ID_transazione = d.ID_transazione
GROUP BY v.categoria_prodotto
ORDER BY media_quantita DESC
LIMIT 3; 

#12. quale categoria è stata meno acquistata in inverno
SELECT v.categoria_prodotto, SUM(d.quant) AS quantita_totale
FROM vendite v
JOIN dettagli_vendite d ON v.ID_transazione = d.ID_transazione
WHERE (MONTH(d.data_transizione) = 12 AND DAY(d.data_transizione) >= 21)
OR MONTH(d.data_transizione) = 1
OR (MONTH(d.data_transizione) = 2)
OR (MONTH(d.data_transizione) = 3 AND DAY(d.data_transizione) < 20)
GROUP BY v.categoria_prodotto
ORDER BY quantita_totale ASC
LIMIT 1;

