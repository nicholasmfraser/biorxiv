SELECT
    t1.PK_ITEMS, t3.PK_ITEMS, t3.DOI
FROM
    biorxiv_control_final t1
INNER JOIN
    wos_b_2018.citingitems t2
ON
    t1.pk_items = t2.fk_items_cited
INNER JOIN
    wos_b_2018.items t3
ON
    t3.pk_items = t2.fk_items_citing