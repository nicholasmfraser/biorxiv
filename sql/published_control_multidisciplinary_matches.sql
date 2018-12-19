SELECT
    t1.PK_ITEMS_PUBLISHED, t2.PK_ITEMS, t2.FK_SOURCES, t2.FK_ISSUES, t2.DOI, t2.ARTICLE_TITLE, t2.PAGE_CNT, t2.PUBYEAR, t2.PUBTYPE, t2.DOCTYPE, t2.AUTHOR_CNT, t2.REF_CNT
FROM
    biorxiv_multi_matches t1
INNER JOIN
    wos_b_2018.items t2
ON
    t1.pk_items_control = t2.pk_items