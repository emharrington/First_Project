class GrammarStats
    def initialize
        @true_checks = 0
        @checks_run = 0
    end
  
    def check(text)
        fail "That's not a sentence." if text.empty?
        check_result = (text.match?(/^[A-Z]/) && text.match?(/[.!?]$/))
        if check_result == true
            @true_checks +=1
        end
        @checks_run +=1
        return check_result
    end
  
    def percentage_good
        @percentage_good = ((@true_checks / @checks_run.to_f)*100)
      # Returns as an integer the percentage of texts checked so far 
      # that passed
      # the check defined in the `check` method. The number 55 
      #represents 55%.
    end
end

#i want to see the percentage of checks that have been run within the
#check method & passed!!
#integer will = exact percentage, e.g. 55 = 55%