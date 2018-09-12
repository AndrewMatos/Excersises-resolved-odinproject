

var removeFromArray = function(...arguments) {
 
  let array =arguments [0];

   //for (var i = 0; i < arguments.length; i++)
        //args[i] = arguments[i]; alternative

   
 return array.filter(val => !arguments.includes(val));

}

module.exports = removeFromArray

//notes :

//The Spread Syntax = ... 
//THe Spread Syntax allows an iterable to expand in places where 0+ arguments are expected.
//Rest parameter
//Rest parameter allows function to receive indefinite number of arguments as an array.

//    function <function name> (…args)

//Note: spread syntax (…) needs to be used as a prefix of the last named parameter.
//Unlike arguments, Rest parameter:
 //   is actually instances of Array, with full support Array built-in functionalities.
 //   only contains the ones that haven’t been given a separate name as array elements, while arguments contains all parameters passed.

//parameters => expression

// is equivalent to:

//function (parameters){
//  return expression;}

//The filter() method creates a new array with 
//all elements that pass the test implemented by the provided function.
//example : const result = words.filter(word => word.length > 6);
//syntaxsis var newArray = arr.filter(callback(element[, index[, array]])[, thisArg]

//filter() calls a provided callback function once for each element in an array, 
//and constructs a new array of all the values for which callback 
//returns a value that coerces to true


//The includes() method determines whether an array contains a specified element.
//This method returns true if the array contains the  element, and false if not.