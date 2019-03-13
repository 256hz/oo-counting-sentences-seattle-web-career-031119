require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    sum = 0
    sum += self.split.each_with_object {|sum, string|
      binding.pry
      sum += 1 if string.include?('.' || '!' || '?') }
    sum
  end
end