require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.include?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    num_of_sentences = self.split(/[!?.]/)
    num_of_sentences.delete_if{|sentence| sentence.empty?}
    num_of_sentences.length
  end
end