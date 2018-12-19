SELECT
    t1.PK_ITEMS, t1.FK_SOURCES, t1.FK_ISSUES, t5.PK_CLASSIFICATIONS, t5.CLASSIFICATION
FROM
    wos_b_2018.items t1
INNER JOIN
    wos_b_2018.citingitems t2
ON
    t1.pk_items = t2.fk_items_citing
    AND t1.fk_issues IN (SELECT DISTINCT fk_issues FROM biorxiv_multi_cat)
    AND t1.PUBTYPE = 'Journal'
    AND t1.DOCTYPE IN ('Article', 'Review')
    AND t1.REF_CNT > 0
INNER JOIN
    wos_b_2018.items t3
ON
    t3.pk_items = t2.fk_items_cited
INNER JOIN
    wos_b_2018.sources_classifications t4
ON
    t4.fk_sources = t3.fk_sources
INNER JOIN
    wos_b_2018.classifications t5
ON
    t5.pk_classifications = t4.fk_classifications
    AND t5.classification_type = 'sc_traditional'