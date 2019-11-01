def piglatinize (str)
  str1="aeiou"
  str2=(/\A[aeiou]/)
  vowel = str1.scan(/\w/)
  alpha =('a'..'z').to_a
  con = (alpha - vowel).join
  word = str.scan(/\w/)
  if  #first rule
    str =~ str2
    str + "ay"
  elsif # second rule
    str != str2
    s = str.slice!(/^./)
    str + s + "ay"
  elsif
    word[0.1]=~(/\A[con]/)
    s = str.slice!(/^../)
    str + s + "ay"
  else
    word[0..2]=~(/\A[con]/)
    s = str.slice!(/^.../)
    str + s + "ay"
  end
end
