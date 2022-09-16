def verify_text(string)
    fail "That's not a sentence." if string.empty?
    first_letter_is_uppercase = string[0] == string[0].upcase
    last_character_is_punctuation = [".", "!", "?"].include? string[-1]
    if first_letter_is_uppercase && last_character_is_punctuation
        return true
    else
        return false
    end
end