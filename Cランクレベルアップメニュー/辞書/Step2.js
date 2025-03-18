const main = (input) => { 
    const lists = input.trim().split('\n');
    const n = Number(lists.shift());
    const M = Number(lists[n]);
    const S = lists.pop();
    const names = lists.slice(0,n);
    const namesAndAssets = lists.slice(n + 1);
    const arrNamesAndAssets = namesAndAssets.map(item => item.split(" "));
    const damages = names.map(name => [name,0]);
    const dicDamages = Object.fromEntries(damages);
    for (let i = 0; i < arrNamesAndAssets.length; i++) {
        dicDamages[arrNamesAndAssets[i][0]] += Number(arrNamesAndAssets[i][1]);
    } 
    console.log(dicDamages[S]);
}
main(require("fs").readFileSync("/dev/stdin","utf-8"));