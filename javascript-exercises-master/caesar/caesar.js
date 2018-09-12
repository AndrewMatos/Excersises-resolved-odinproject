var caesar = function(a , n) {
	 let array=a.split("");

if (n>=0) {
	for (i=1;i<=n;i++)  {
			array.forEach(function(item, index, array) {
	  			if ((item>="A" && item<="Z") || (item>="a" && item<="z")){
	   				array[index] =item.charCodeAt(0);}
			});

			array.forEach(function(item, index, array) {
				if ((item>=65 && item<=90)|| (item>=97 && item<=122)){
	  				array[index] =item+1 ;}
				});

			array.forEach(function(item, index, array) {
				if (item>90 && item<97 ){array[index] =item-90+64;}
				else if (item>122){array[index] =item-122+96;}
			});

	  		array.forEach(function(item, index, array) {
	 		 	if (typeof item == "number") {
	  			array[index] = String.fromCharCode(item);}
			});

	}
}

else if (n<0) {

	for (i=0;i>n;i--)  {
			array.forEach(function(item, index, array) {
	  			if ((item>="A" && item<="Z") || (item>="a" && item<="z")){
	   				array[index] =item.charCodeAt(0);}
			});

			array.forEach(function(item, index, array) {
				if ((item>=65 && item<=90)|| (item>=97 && item<=122)){
	  				array[index] =item-1 ;}
				});

			array.forEach(function(item, index, array) {
				if (item>90 && item<97 ){array[index] =item-90+64;}
				else if (item>122 && typeof item=="number"){array[index] =item-122+96;}
				else if (item<65 && typeof item=="number") {array[index]=90;}
				else if (item<96 && item>91  && typeof item=="number" ) {array[index]=122;}
			});

		

	  		array.forEach(function(item, index, array) {
	 		 	if (typeof item == "number") {
	  			array[index] = String.fromCharCode(item);}
			});

	}

}



  word=array.join("");
 
	return word
}

module.exports = caesar



