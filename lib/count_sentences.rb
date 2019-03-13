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
    sentences = 0
    #['. ', '? ', '! ', '...'].each {|punct| sentences += self.count(punct)}
    self.scan(/[A-Z]/).size
    binding.pry
    sentences
  end
end