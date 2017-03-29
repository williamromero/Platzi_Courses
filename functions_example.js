// COMMON FUNCTION


let base = 5;
let height = 7;
function triangleArea(base, height){
  return base * height / 2;
}
// with variables interpolation inside string text
console.log(`El área del triángulo de base ${base} y altura ${height} es: ${triangleArea(base, height)}`);

// ARROW FUNCTION

let base = 5;
let height = 7;
// let triangleArea = (base, height) => return base * height / 2
let triangleArea = (base, height) => base * height / 2
console.log(`El área del triángulo de base ${base} y altura ${height} es: ${triangleArea(base, height)}`);
