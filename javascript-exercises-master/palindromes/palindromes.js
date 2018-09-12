var palindromes = function(a) {
   let array2=a.split("");
  let array = a.split("");
  array= array.reverse();
  array= array.filter(array=> {if ((array>="A" && array<="Z") ||(array>="a" && array<="z" )){return true;}})
  array2=array2.filter(array2=> {if ((array2>="A" && array2<="Z") ||(array2>="a" && array2<="z" )){return true;}})
  let b = array.join("");
  let c=array2.join("");

  b= b.toLowerCase();
  c= c.toLowerCase();

  return (c==b)? true : false;

}

module.exports = palindromes
