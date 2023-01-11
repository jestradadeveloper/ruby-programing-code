const factorialWithRecursion = (number) => {
  if(number == 0 || number == 1){
    return 1;
  }else{
    return number * factorialWithRecursion(number - 1 )
  }
}
const factorialWithFor = (number) => {
  let total = 1;
  for(let i = 0; i < number ; i++){
    total *= number - i;
  }
  return total;
}
console.log(factorial(5));
