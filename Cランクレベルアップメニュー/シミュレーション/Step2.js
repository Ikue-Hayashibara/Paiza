const main = (input) => {
    const lines = input.trim().split('\n');
    const n = lines[0];
    let count = 0;
    const [a,b] = lines[1].split(" ");
    let paizaNum = 1;
    let kirishimaNum = 1;
    
    while(kirishimaNum <= n){
        kirishimaNum += paizaNum * a;
        paizaNum += kirishimaNum % b;
        count++;
    }
    console.log(count);
    
    // const nums = {
    //     'paiza': 1,
    //     '霧島京子': 1
    // }

    // for (let i = 1; ; i++) {
    //     nums['霧島京子'] += nums['paiza'] * a;
    //     if (nums['霧島京子'] > n) {
    //         console.log(i);
    //         return;
    //     }
    //     nums['paiza'] += nums['霧島京子'] % b;
    // }
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));