/*Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's old broken wand. Hermione decides the best way to choose is by determining the 
minimum number of gold galleons needed to buy each non-evil wand of high power and age. Write a query to print the id, age, coins_needed, and power of the wands that 
Ron's interested in, sorted in order of descending power. If more than one wand has same power, sort the result in order of descending age.*/

with temp as (select * from wands inner join wands_property on wands.code = wands_property.code where wands_property.is_evil = 0) 
  select id, age, coins_needed, power from temp order by power, age;
