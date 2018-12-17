SELECT
    t3.PK_ITEMS, t3.FK_SOURCES, t3.FK_ISSUES, t5.PK_CLASSIFICATIONS, t5.CLASSIFICATION
FROM
    biorxiv_multi_cat t1
INNER JOIN
    wos_b_2018.citingitems t2
ON
    t1.pk_items = t2.fk_items_citing
INNER JOIN
    wos_b_2018.items t3
ON
    t2.fk_items_cited = t3.pk_items
INNER JOIN
    wos_b_2018.sources_classifications t4
ON
    t4.fk_sources = t3.fk_sources
INNER JOIN
    wos_b_2018.classifications t5
ON
    t5.pk_classifications = t4.fk_classifications
    AND t5.classification_type = 'sc_traditional'