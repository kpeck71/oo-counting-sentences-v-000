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
    #complex_string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
    self.split("." || "?" || "!").count
    complex_string.split("." || "?" || "!").count
    #complex_string.reject {|strings| strings.empty?}
  end
end
