def caesar_cipher(string, shift)
  shift = shift % 26
  return string.split(//).map do |char|
    code = char.ord
    if char =~ /[[:upper:]]/
      new_code = code + shift
      new_code = code + shift
      new_code = 91 - (65 - new_code) if (new_code < 65)
      new_code = 64 + (new_code - 90) if (new_code > 90)
    elsif char =~ /[[:lower:]]/
      new_code = code + shift
      new_code = 123 - (97 - new_code) if (new_code < 97)
      new_code = 96 + (new_code - 122) if (new_code > 122)
    else
      new_code = code
    end
    new_code.chr
  end.join
end