# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    return "" if strs.nil? || strs[0].size == 0
    output = ''
    first_string = strs[0].split('')
    first_string.each_with_index do |string, index|
         strs.each do |str|
           # return "" if strs.nil? || strs[index].size == 0
           if str[index] != strs[0][index]
             return str.slice(0, index)
           end
         end
         output << strs[0][index]
    end
  # return strs[0]
    output
    
#     return "" if strs.nil? || strs.size == 0
#   return strs[0] if strs.size == 1
  
#   output = ""
  
#   for i in 0...strs[0].size do
#     for j in 1...strs.size do
#       if strs[j][i] != strs[0][i]
#         output = strs[0][0...i]
#         return output
#       end
#     end
#     output << strs[0][i]
#   end
  
#   output
  
end