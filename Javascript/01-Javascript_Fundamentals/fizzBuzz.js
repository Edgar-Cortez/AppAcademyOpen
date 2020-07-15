function fizzBuzz(array) {
    let container = [];
    
    array.forEach(element => {
        console.log(container);
        if ((element % 3 == 0 || element % 5 == 0) && !(element % 3 == 0 && element % 5 == 0)) {
            container.push(element);
        }
    });

    console.log("done");
}

fizzBuzz([ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 ]);