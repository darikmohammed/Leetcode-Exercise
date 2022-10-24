# @param {Integer[]} original
# @param {Integer} m
# @param {Integer} n
# @return {Integer[][]}
def construct2_d_array(original, m, n)
    return [] if m*n != original.length
    result = []
    arr_index = 0;
    m.times do |col|
        row = []
        n.times do |j|
            val =  original[arr_index]
            row << val
            arr_index += 1;
        end
        result << row
    end
    result 
end