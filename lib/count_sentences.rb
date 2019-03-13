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

  def count_sentences(strings)
    counter = 0
    strings.split.each {|string| counter += 1 if string.include?('!' || '?' || '!') }
    counter
  end
end