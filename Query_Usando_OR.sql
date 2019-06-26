SELECT COUNT(*) AS cnt  
FROM sighting
WHERE (state = 'hi' OR state = 'tx') 
AND YEAR(DATETIME) = 2000
AND shape = 'circle' 