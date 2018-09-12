var reverseString = function(word) {
 var Sarray=word.split("");
  var Rstring=[""];
  for (let i=Sarray.length-1;i>=0;i--){
       Rstring+=Sarray[i]
  }
  
  Rstring=Rstring.toString();
  return Rstring;
}

module.exports = reverseString
