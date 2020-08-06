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
    new_array = []

    #replace target punctuation with "*"
    string = self.tr('!.?', '*')
    #create array with "*" as delimiter
    string = string.split("*")

    #push everything that is not an empty string into new_array
    string.each do |string|
      if string != ""
        new_array.push(string)
      end
    end
    return new_array.count

  end


end

# count_sentences("Hello! What is this? A string.")
# binding.pry
