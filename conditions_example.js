const movie = 'Star Wars'
const movie_pg = 13

const name_will = 'William'
const age_will = 29

const name_luisa = 'Luisa Fernanda'
const age_luisa = 13

function canWatchStarMovie(name, age, isWithAdult = false) {
  if (age >= movie_pg) {
    alert(`${name} puede ingresar a ver ${movie}`);
  } else if (isWithAdult) {
    alert(`${name} puede ingresar a ver ${movie} debido a está acompañada por un adulto.`);
  } else {
    alert(`${name} no puede ingresar a ver ${movie}. La edad mínima permitida es ${movie_pg} y ${name} tiene ${age}`);
  }
}

canWatchStarMovie('Alice', 28);
canWatchStarMovie('Kiara', 8);
canWatchStarMovie('Kiara', 8, true);
