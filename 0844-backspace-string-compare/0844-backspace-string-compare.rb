# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s, t)
    s_output = []
    t_output = []
    
    s.split('').each do |s_char|
       # if s_char is != # push to s_output
        #else if s_char == # pop from s_output
        if s_char == '#'
            s_output.pop 
        else
            s_output << s_char
        end
    end
    
    t.split('').each do |t_char|
        # if t_char is != # push to t_output
        #else if t_char == # pop from t_output
        if t_char == '#' 
            t_output.pop 
        else
            t_output << t_char
        end
    end
    
    #check if t_output === s_output return true 
    #return false 
    return true if t_output == s_output
    false
end