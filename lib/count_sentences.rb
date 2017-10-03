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
    binding.pry
    splits = self.split("." || "?" || "!")
    splits.reject {|strings| strings.empty?}
    splits.count
  end
end
