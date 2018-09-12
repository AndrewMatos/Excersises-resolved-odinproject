var snakeCase = function(a) {
	

	a=a.replace(/-/g," ");
//	a=a.replace(\\.\\g," ")
    //$1
	a=a.split("....").join("")
	a=a.split("..").join(" ");
	 if (a.indexOf(" ")<0  ) {a=a.replace(/([A-Z])/g, " $1")}
	let array = a.split("");
	array= array.filter(array=> {if 
	((array>="A" && array<="Z" ) ||(array>="a" && array<="z" ) ||(array==" ")){return true;}})
	let b = array.join("");
	array= b.split(" ")
	 b = array.join("_");
	b= b.toLowerCase();

	return b

}

module.exports = snakeCase
