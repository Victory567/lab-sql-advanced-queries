#List each pair of actors that have worked together
select f.film_id, fa1.actor_id, fa2.actor_id, concat(a1.first_name," ", a1.last_name), concat(a2.first_name," ", a2.last_name)
from film f
    inner join film_actor fa1
    on f.film_id=fa1.film_id
    
    inner join actor a1
    on fa1.actor_id=a1.actor_id
    
    inner join film_actor fa2
    on f.film_id=fa2.film_id
    
    inner join actor a2
    on fa2.actor_id=a2.actor_id   
where f.film_id = 82 ;

#For each film, list actor that has acted in more films.
FROM film_actor f INNER JOIN actor a ON f.actor_id = a.actor_id
GROUP BY f.actor_id
ORDER BY COUNT(f.actor_id) DESC
LIMIT 1;