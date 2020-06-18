


class PalindromeChecker

    def is_palindrome?(word)
        # return boolean of whether same backwards or forwards
        if !word.is_a?(String)
            raise ArgumentError
        end
        word.downcase!
        word.gsub!(/[[:space:]]/, '')
        # word = word.downcase
        (0...word.length / 2).each do |position|
            corresponding_index = word.length - position - 1
            if word[position] != word[corresponding_index]
                return false
            end
        end
        return true
    end

    # def recursion
    #     puts("I'm recursing")
    #     return recursion
    # end

    # def is_palindrome?(word)
    #     puts word
    #     if word.length <= 1
    #         return true 
    #     end
    #     # if first and last letters are the same, check the inner word without those letters
    #     if word[0] == word[-1]
    #         return is_palindrome?(word[1...-1])
    #     else
    #         # otherwise return false
    #         return false
    #     end
    # end

end


checker = PalindromeChecker.new
# puts checker.is_palindrome?("racecar") == true
# puts checker.is_palindrome?("tacocat") == true 
# puts checker.is_palindrome?("Banana") == false
# checker.recursion
# 0123456
# racecar 

# 1 > 5
# word length = 7

# abba 
# ["r", "a" "c" "e" "c" "a" "r'"]