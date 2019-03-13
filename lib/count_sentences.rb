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
    self.split.each { |string| 
      if string.include?('!' || '?' || '!') 
        counter += 1
      end
    }
    counter
  end
end