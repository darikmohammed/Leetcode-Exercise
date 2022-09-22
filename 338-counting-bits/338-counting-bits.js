/**
 * @param {number} n
 * @return {number[]}
 */
var countBits = function(n) {
    let output = []
    for(let i=0; i<=n; i++){
        let binary_sum =0
        let number = i
        while (number >0){
            if(number%2 === 1){
                binary_sum ++
            }
            number =Math.floor(number/2) 
        }
        output.push(binary_sum)
    }
    return output
};
