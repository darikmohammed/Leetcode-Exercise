/**
 * @param {character[]} letters
 * @param {character} target
 * @return {character}
 */
var nextGreatestLetter = function(letters, target) {
    let pos = 0
    let target_number = target.charCodeAt(pos)
    let char = letters[0]
    let i = 1
    while(char &&char.charCodeAt(pos) <= target.charCodeAt(pos)){
        char = letters[i]
        i++
    }
    if(!char) return letters[0]
    letters.forEach(letter=>{
       let letter_number = letter.charCodeAt(pos)
        if(letter_number > target_number) {
                if(char.charCodeAt(pos) > letter_number){
                    char = letter
                }
        }
    })
    return char
};