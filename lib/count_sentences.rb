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
    counter = 0
    counter += self.split.each_with_object {|sum, string| sum += 1 if string.include?('.' || '!' || '?') }
    counter
  end
end