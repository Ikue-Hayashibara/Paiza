const main = (input) =>{
    const lines = input.split("\n");
    const lines2 = lines[1].split(" ");
    const n =lines[0];
    
    
    for (let i = 0; i < n; i++) {
        console.log(lines2[i])
    }
    
}

main(require("fs").readFileSync("/dev/stdin","utf-8"));