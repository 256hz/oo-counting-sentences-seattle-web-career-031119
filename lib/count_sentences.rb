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
    sum += self.split.each {|string|
      binding.pry
      sum += 1 if string.include?('.') || string.include('!') || string.include('?') 
    }
    sum
  end
end