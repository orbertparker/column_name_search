use cha_elite_live

select o.name AS 'Table',
c.name AS 'Column' 

from sys.columns c inner join sys.objects  o on c.object_id=o.object_id 
and o.type = 'U'
and CHARINDEX('unit', c.name)>=1  --Enter search term here, no wildcards