const main = (input) =>{
    const s = input;
    for (let i = 0; i < s; i++) {
        console.log("paiza");
        
    }
    console.log(s);
}

main(require("fs").readFileSync("/dev/stdin","utf-8"));