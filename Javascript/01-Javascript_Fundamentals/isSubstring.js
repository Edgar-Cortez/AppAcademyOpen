function isSubstring(searchString, subString) {
    // take the searchString words into an array, seperate by space
    let sentence  = searchString.split(' ');
    let matched = '';
    // for loop through array
    for (let i = 0; i < sentence.length; i++) {
        if (sentence[i] === subString){
            console.log(true);
            return true;
       } else {
           console.log(false);
           return false;
       }
    }
}

isSubstring("time to program", "time");
// true

isSubstring("Jump for joy", "joys");
// false