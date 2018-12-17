SELECT
    DISTINCT t2.LASTNAME, t4.PK_ITEMS, t4.FK_SOURCES, t4.FK_ISSUES, t4.DOI, t4.ARTICLE_TITLE, t4.PAGE_CNT, t4.PUBYEAR, t4.PUBTYPE, t4.DOCTYPE, t4.AUTHOR_CNT, t4.REF_CNT
FROM
    BIORXIV_CR_PREPRINTS t1
INNER JOIN
    wos_b_2018.authors t2
ON
    LOWER(t2.lastname) = t1.cr_preprint_author
INNER JOIN
    wos_b_2018.items_authors_institutions t3
ON
    t2.pk_authors = t3.fk_authors
    AND t3.author_position = '1'
INNER JOIN
    wos_b_2018.items t4
ON
    t3.fk_items = t4.pk_items
    AND t4.PUBYEAR >= t1.cr_preprint_posted_year
    AND t4.PUBTYPE = 'Journal'
    AND t4.DOCTYPE IN ('Article', 'Review')
    AND t4.REF_CNT > 0
    AND t4.DOI IS NOT NULL