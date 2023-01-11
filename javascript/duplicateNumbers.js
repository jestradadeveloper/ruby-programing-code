const duplicates = (nums) => {
  let obj = {}
  let dup = []
  for(let i = 0; i < nums.length ; i++){
    if (!obj[nums[i]]){
      obj[nums[i]] = 1
    }else{
      dup.push(nums[i])
    }
  }
  return dup;
}

const numeros = [2,4,5,4,7,9,5];

console.log(duplicates(numeros))
