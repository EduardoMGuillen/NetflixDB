-- Quien es el actor que ha participado en la mayor cantidad de series?
select actor_id, count(serie_id) as actuaciones from actuaciones
group by actor_id;

-- cual es la serie con mejor rating promedio segun imdb?
select serie_id, avg(rating_imdb) as avg_rating from episodios
group by serie_id
order by avg_rating desc;

-- cual es el episodio con la duracion mas larga?
select episodio_id, max(duracion) as duracion from episodios
group by episodio_id
order by duracion desc;


