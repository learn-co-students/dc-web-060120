require_relative "../palindrome.rb"

describe "PalindromeChecker" do

    let (:checker) {PalindromeChecker.new}

    it "returns true when input is 'racecar'" do 
        expect(checker.is_palindrome?('racecar')).to be(true)
    end

    it "returns false when input is 'banana'" do 
        expect(checker.is_palindrome?('banana')).to be(false)
    end

    it "is not case sensitive" do 
        expect(checker.is_palindrome?('Racecar')).to be(true)
    end

    it "ignores spaces" do 
        expect(checker.is_palindrome?("taco cat")).to be(true)
    end

    it "raises ArgumentError when input is not a String" do 
        expect{checker.is_palindrome?(["things", 2])}.to raise_error ArgumentError
        expect{checker.is_palindrome?(false)}.to raise_error ArgumentError
        expect{checker.is_palindrome?(56)}.to raise_error ArgumentError

    end



end