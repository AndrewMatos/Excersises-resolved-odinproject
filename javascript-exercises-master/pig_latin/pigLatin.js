function translate(string) {
//var b= a.slice(0,a.indexOf("a"));
 
 let array=string.split(" ");
 
 let array2=[]

array.forEach(piglatin)

let kk=array2.join(" ");

return kk


function piglatin(a){ 


let b=" "
let c=" "

if(a.charAt(0)=="q" ){b= a.slice(0,a.indexOf("qu")+2);c=a.slice(a.indexOf("qu")+2,);
let e=c.concat("",b)
     e=e.concat("","ay")
	array2.push(e);
}

else if(a.charAt(0)!="a" && a.charAt(0)!="e" && a.charAt(0)!="i" && a.charAt(0)!="o" && a.charAt(0)!="u" && a.charAt(0)!="q" ){
 	for(i=0; i<a.length;i++){  
     if (a.charAt(i)=='q'){b= a.slice(0,a.indexOf("qu")+2); c=a.slice(a.indexOf("qu")+2,);  break;}
     else if  (a.charAt(i)=='a'){b= a.slice(0,a.indexOf("a")); c=a.slice(a.indexOf("a"),);  break;}	
     else if  (a.charAt(i)=='e'){b= a.slice(0,a.indexOf("e")); c=a.slice(a.indexOf("e"),);  break;}	 
     else if  (a.charAt(i)=='i'){b= a.slice(0,a.indexOf("i")); c=a.slice(a.indexOf("i"),);  break;}	
     else if  (a.charAt(i)=='o'){b= a.slice(0,a.indexOf("o")); c=a.slice(a.indexOf("o"),);  break;}	
     else if  (a.charAt(i)=='u'){b= a.slice(0,a.indexOf("u")); c=a.slice(a.indexOf("u"),);  break;}	
     }
	let e=c.concat("",b)
     e=e.concat("","ay")
	array2.push(e);
}

else{ let e =a.concat("","ay")
       array2.push(e);}

}



}


module.exports = {
	translate
}

