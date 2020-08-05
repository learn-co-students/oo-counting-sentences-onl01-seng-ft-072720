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
    # binding.pry
    split_sent = self.split(/[.?!...]/).reject(&:empty?)
    split_sent.length
    # binding.pry
  end
end
