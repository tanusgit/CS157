SELECT BUSINESS_ID,BUSINESS_NAME
FROM BUSINESS, BUSINESS_CATEGORY WHERE BUSINESS_NAME LIKE '%Coffee%' AND
Address LIKE '%CA%' AND BUSINESS_CATEGORY_ID IN(
SELECT BUSINESS_CATEGORY_ID FROM 
BUSINESS_CATEGORY
WHERE BUSINESS_CATEGORY_NAME LIKE '%Coffee%')
ORDER BY BUSINESS_ID ASC;
-- Address LIKE or Address = both works fine


select Y.YELP_ID
 from YELP_USER Y
  where Y.CHECKEDIN_BUSINESS NOT IN(select B.BUSINESS_ID
    from BUSINESS B where B.Address like '%CA%'
);


-- Born in ca
select * from yelp_user where BIRTH_PLACE like '%CA%';

select yelp_id,CHECKEDIN_BUSINESS from yelp_user where BIRTH_PLACE like '%CA%';

-- never visited california
select B.BUSINESS_ID from BUSINESS B where B.Address not like '%CA%';
