SELECT
	round(datediff(now(), '1993-07-12')/365.25) AS godina,
	round(datediff(now(), '1993-07-12')/30.4375) AS mjeseci,
	datediff(now(), '1993-07-12') AS dani,
	(datediff(now(), '1993-07-12')*24) AS sati;

# (365*3)+(366) = 365.25 
# (((3*365)+(366))/12)/4 = 30.4375 
	