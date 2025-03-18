const main = (input) => {
    
    const [n, ...nums] = input.trim().split('\n');
    const lists = nums.map(item => item.split(" "))
    const lastNum = lists.pop();
    let dic = {};
    
    for(const list of lists){
        dic[list[0]] = list[1];
        
    }
    console.log(dic[lastNum])

}

main(require("fs").readFileSync("/dev/stdin","utf-8"));