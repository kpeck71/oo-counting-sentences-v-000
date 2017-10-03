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
    splits = []
    splits = self.split("." || "?" || "!")
    splits.reject {|strings| strings.to_s.empty?}
    splits.count
  end
end
