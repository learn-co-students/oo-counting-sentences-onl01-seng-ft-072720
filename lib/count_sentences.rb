require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    array = self.split(" ")
    #binding.pry
    array2 = array.find_all do |index|
      #binding.pry
      index.include?("!") || index.include?("?") || index.include?(".")
    end
    array2.length
  end
end
