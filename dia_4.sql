select series.titulo as 'Titulo de la serie',
episodios.titulo as 'Titulo de Episodio'
from series
left join episodios
on series.serie_id = episodios.serie_id
order by series.titulo;


select series.titulo as 'Título de la Serie',
episodios.titulo as 'Título del Episodio',
episodios.rating_imdb as 'Rating IMDB'
from series
left join episodios
on series.serie_id = episodios.serie_id
where series.titulo = 'Stranger Things'
order by Episodios.rating_imdb DESC;

select series.titulo as 'Titulo de la Serie',
episodios.titulo as 'Titulo de Episodio',
episodios.rating_imdb as 'Rating IMDB'
from series
left join episodios
on series.serie_id = episodios.serie_id
order by series.titulo ASC;

select
	series.titulo as 'Titulo de la serie',
    episodios.titulo as 'Titulo del episodio'
from episodios
right join series
on episodios.serie_id = series.serie_id
order by series.titulo;

select
    Series.titulo as 'Título de la Serie',
    Episodios.titulo as 'Título del Episodio',
    Episodios.duracion as 'Duración'
from Episodios
right join Series
on Series.serie_id = Episodios.serie_id
where Episodios.duracion > 30
order by Series.titulo;

select titulo, genero from series
where genero = 'Ciencia ficcion'

union 

select titulo, genero from series
where genero = 'Drama'

union 

select titulo, genero from series
where genero = 'Drama';

-- que generos de series son mas prevalentes en la tabla de series
select genero, count(*) as cantidad_de_series
from series
group by genero
order by cantidad_de_series DESC;

-- cuales son las 3 series con mayor rating promedio de IMDB
select series.titulo, count(episodios.episodio_id) as numero_de_episodios, avg(episodios.rating_imdb) as promedio_imdb
from series
inner join episodios on series.serie_id = episodios.serie_id
group by series.serie_id
order by promedio_imdb desc
limit 3;

-- cual es la duracion total de todos los episios de la serie stranger things
select sum(episodios.duracion) as duracion_total from episodios
inner join series on series.serie_id = episodios.serie_id
where series.titulo = 'Stranger Things'


