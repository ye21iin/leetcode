select distinct a.num as ConsecutiveNums 
from logs a
left join logs b on a.id + 1 = b.id
left join logs c on b.id + 1 = c.id
where a.num = b.num and b.num = c.num