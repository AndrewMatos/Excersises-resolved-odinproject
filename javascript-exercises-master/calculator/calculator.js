function add (n1,n2) {
return n1+n2
	
}

function subtract (n1,n2) {
	return n1-n2
}

function sum (x) {
 	const totalx=x.reduce((total,x)=>{return total+ x},0);
   return totalx;
}

function multiply (x) {

	const totalx=x.reduce((total,x)=>{return total* x},1);
   return totalx;
}

function power(n1,n2) {
	let total=1;
 for (i=1;i<=n2;i++)
 	{total*=n1}
 return total;
}

function factorial(n1) {
	let total=1;
	if (n1==0) {return 1}
	else {
		for(i=n1;i>0;i--){total*=i}
		return total;
	}
}

module.exports = {
	add,
	subtract,
	sum,
	multiply,
    power,
	factorial
}