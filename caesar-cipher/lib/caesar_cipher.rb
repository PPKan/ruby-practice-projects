# frozen_string_literal: true

# 65~90 / 97~122
#
#
# Move a char to index after
def caesar_cipher(string, index)
  result = ''

  string.each_char do |char|
    if char.ord.between?(65, 90)
      shifted = char.ord + index
      shifted -= 26 if shifted > 90
      result += shifted.chr
    elsif char.ord.between?(97, 122)
      shifted = char.ord + index
      shifted -= 26 if shifted > 122
      result += shifted.chr
    else
      result += char
    end
  end

  result
end
