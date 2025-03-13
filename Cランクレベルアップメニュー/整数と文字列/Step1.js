const main = (input) =>{
    const lines = input.split("\n");
    const n = lines[0];
    
    for (var i = 1; i <= n; i++) {
        const strLength = lines[i].length;
        console.log(strLength)
    }
}

main(require("fs").readFileSync("/dev/stdin","utf-8"));