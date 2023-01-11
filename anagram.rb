def is_anagram(s, t)
  return false if s.length != t.length

  hash = {}
  hash.default = 0
  s.each_char { |c| hash[c] += 1 }
  t.each_char { |c| hash[c] -= 1 }
  hash.select { |_k, v| v != 0 }.empty?
end

def is_anagram?(s, t)
  return false unless s.length == t.length

  hash = {}
  hash.default = 0
  s.each_char { |c| hash[c] += 1 }
  t.each_char { |t| hash[t] -= 1 }
  hash.reject { |_k, v| v.zero? }.empty?
end
