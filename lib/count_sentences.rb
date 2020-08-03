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
    count = self.split(". ").map do |i|
      i.split("! ").map do |i|
        if i.kind_of?(Array)
          i.flatten.split("? ")
        else
          i.split("? ")
        end
      end
    end.flatten
    count.size
  end
end