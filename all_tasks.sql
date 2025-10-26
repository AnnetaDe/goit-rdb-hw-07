-- 1 id, original date, year, month, day
SELECT
  id,
  `date`,
  YEAR(`date`)  AS y,
  MONTH(`date`) AS m,
  DAY(`date`)   AS d
FROM orders;

-- 2 add one day to date
SELECT
  id,
  `date`,
  DATE_ADD(`date`, INTERVAL 1 DAY) AS date_plus_1
FROM orders;

-- 3) UNIX 
SELECT
  id,
  `date`,
  UNIX_TIMESTAMP(`date`) AS ts
FROM orders;

-- 4) count rows in range
SELECT COUNT(*) AS cnt
FROM orders
WHERE `date` BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';

-- 5) id, date to JSON object
SELECT
  id,
  `date`,
  JSON_OBJECT('id', id, 'date', `date`) AS json_obj
FROM orders;
