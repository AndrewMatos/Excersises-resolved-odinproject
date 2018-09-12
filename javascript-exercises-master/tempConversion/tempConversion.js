var ftoc = function(temp) {
	let c=((temp-32)*5)/9;
	   c=Number(c.toFixed(1));
     return c;
  
}

var ctof = function(temp) {
	let f=(temp*(9/5))+32;
	f=Number(f.toFixed(1));
	return f;
  
}

module.exports = {
  ftoc,
  ctof
}
