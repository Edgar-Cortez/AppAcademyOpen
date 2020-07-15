function madLib(verb, adjective, noun) {
    // uppercase
    let x = verb.toUpperCase();
    let y = adjective.toUpperCase();
    let z = noun.toUpperCase();
    // interpolate with template literals e.g.`We shall ${verb} the ${adjective}${noun}.`
    console.log(`We shall ${x} the ${y} ${z}.`);
}

madLib('make', 'best', 'guac');
// OUTPUT: "We shall MAKE the BEST GUAC."