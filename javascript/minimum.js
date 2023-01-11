const cambioEnMonedas = (dinero) => {
  if (dinero < 1){
    return 0;
  }
  let coins = [25, 10, 5, 1];
  let numeroDeCoins = 0;
  for (let coin of coins){
     numeroDeCoins += Math.floor(dinero / coin);
     dinero = dinero % coin

     if (dinero === 0 ){
      break;
     }
  }
  return numeroDeCoins;
}

console.log(cambioEnMonedas(35));
