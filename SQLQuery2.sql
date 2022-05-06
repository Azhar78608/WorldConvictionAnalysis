--Highest crime based on cities
Select top 6 Count(Crimes) as Crime_rate,Location
from dbo.Conviction
group by Location
order by Count(Crimes) Desc


--Most Crimes happens by years
Select top 5 Years,Count(Location) as cities
from dbo.Conviction
group by Years
order by Count(Location) Desc


--Crime resulted to death
Select Crimes,count(Punishment) as Death_Penalty
from dbo.Conviction
Where Punishment LIKE '%Death%'
group by Crimes
Order by count(Punishment) Desc 

--Legally exonarated by Cities and crime
Select top 6 count(Exonerated) as Legally_Exonerated,Location as cities
from dbo.Conviction
Where Exonerated like '%yes%'
group by Location
order by count(Exonerated) desc

--Legally Exonerated by Year 

Select top 6 count(Exonerated) as Legally_Exonerated,Years as years
from dbo.Conviction
Where Exonerated like '%yes%'
group by Years
order by count(Exonerated) desc



