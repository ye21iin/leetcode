select id, movie, description, rating
from cinema
where (mod(id,2) != 0) and (description != 'boring')
order by 4 desc