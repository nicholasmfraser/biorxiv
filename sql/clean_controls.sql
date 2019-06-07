DELETE FROM 
  BIORXIV_ALL_CONTROLS 
WHERE
  lower(ARTICLE_TITLE) LIKE '%in this issue%'
  OR lower(ARTICLE_TITLE) LIKE '%corrigendum%'
  OR lower(ARTICLE_TITLE) LIKE '%erratum%'
  OR lower(ARTICLE_TITLE) LIKE '%table of contents%'
  OR lower(ARTICLE_TITLE) LIKE '%announcement%'
  OR lower(ARTICLE_TITLE) LIKE '%preface%'
  OR lower(ARTICLE_TITLE) LIKE '%books received%'
  OR lower(ARTICLE_TITLE) LIKE '%letter to the editor%'
  OR lower(ARTICLE_TITLE) LIKE '%introduction%'
  OR lower(ARTICLE_TITLE) LIKE '%foreword%'