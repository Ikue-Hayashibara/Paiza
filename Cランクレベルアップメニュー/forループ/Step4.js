const main = (input) => {
    
    const lines = input.trim().split("\n");
    const n = Number(lines[0]);
    const m = lines[n + 1];
    const sLines = lines.slice(n + 2);
    const cLines = lines.slice(1,n + 1);

    for(const c of cLines){

        for(const s of sLines){
            
            console.log(s.indexOf(c) >= 0 ? "YES" : "NO");

        }

    }



    // const answer = cLines.flatMap(char => 
    //     sLines.map(string => 
    //         string.indexOf(char) >= 0 ? "YES" : "NO"
    //     )
    // );
    
    // answer.forEach(item => console.log(item));
    
}

main(require("fs").readFileSync("/dev/stdin","utf-8"));