SELECT
    t1.PK_ITEMS, t1.FK_SOURCES, t1.FK_ISSUES, t3.PK_CLASSIFICATIONS, t3.CLASSIFICATION
FROM
    biorxiv_published_final t1
INNER JOIN
    wos_b_2018.sources_classifications t2
ON
    t1.fk_sources = t2.fk_sources
INNER JOIN
    wos_b_2018.classifications t3
ON
    t3.pk_classifications = t2.fk_classifications
    AND t3.classification_type = 'sc_traditional'