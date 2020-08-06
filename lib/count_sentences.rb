require 'pry'

class String
# Call the end_with? method on self inside of your #sentence? method
  def sentence?
    self.end_with?(".")
  end
# instance method should use the self keyword to refer to the string on which it is being called
# method should return true if a string ends with a question mark and false if it does not
  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

# count_sentences method should use the self keyword to refer to the string on which it is called
# split the string on any and all periods, question marks and exclamation marks.
# count the number of elements that results from that split
# returns the number of sentences in a complex string


  def count_sentences
  
    self.split(/[.?!]+/).count
    
  end
  
end 


#binding.pry