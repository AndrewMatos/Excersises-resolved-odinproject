var sumAll = function(num1,num2) {

let suma=0;




//else
if (num1<0||num2<0||typeof num1!=="number" ||typeof num2!=="number") {return "ERROR";}

 else if (num1<num2) { 
	for (i=num1;i<=num2;i++){
		suma+=i;
		}
	}
else if (num2<num1){
	for (i=num2;i<=num1;i++){
		suma+=i;
		}

	}
else if (num1=num2) {suma=num1}


//||(typeof num1!==Number ||typeof num2!==Number)

return suma;
}

module.exports = sumAll
