CREATE TABLE ITEMS_FOR_IF AS SELECT DISTINCT
  t2.PK_ITEMS AS FK_ITEMS, t1.PK_SOURCES AS FK_SOURCES, t2.PUBYEAR, lower(t1.SOURCETITLE) AS SOURCETITLE
FROM
  SCOPUS_B_2018.SOURCES t1
INNER JOIN
  SCOPUS_B_2018.ITEMS t2
ON
  t1.PK_SOURCES = t2.FK_SOURCES
  AND t2.PUBTYPE = 'J'
  AND t2.DOCTYPE IN ('ar', 're')
  AND t2.PUBYEAR >= 2011
  AND t2.PUBYEAR <= 2017
  AND t2.REF_CNT > 0
INNER JOIN
  BIORXIV_ALL_ARTICLES t3
ON
  lower(t1.SOURCETITLE) = t3.SOURCETITLE;