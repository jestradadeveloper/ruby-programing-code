let word = "casa"
let book = "En la con casa de mi tia"

const findWord = (book, word) => {
  const words = book.toLowerCase().split(" ")
  let position = 0
  for (var i = 0; i < words.length -1 ; i++) {
    if (word == words[i]) {
      position = i
    }
  }
  return position;
}
console.log(findWord(book, word))
