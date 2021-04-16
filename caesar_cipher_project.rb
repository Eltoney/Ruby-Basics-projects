def upCi(c, shft)
  id = ((c.ord + shft) % 91).chr.ord
  if id < 65
    id += 65
  end
  id.chr
end

def dowCi(c, shft)
  id = ((c.ord + shft) % 123).chr.ord
  if id < 97
    id += 97
  end
  id.chr
end

def caesar_cipher(tt, shft)
  arr = Array.new
  str = tt.split("")
  #p str[0].ord
  for i in str
    if i.ord >= 65 and i.ord <= 90
      arr.(upCi(i, shft))
    elsif i.ord >= 97 and i.ord <= 122
      arr.push(dowCi(i, shft))
    else
      arr.push(i)
    end
  end
  #  p arr
  arr.join("")
end

puts "Enter the string"
str = gets.chomp
puts "Enter the encryption value"
enc = gets.chomp.to_i
puts caesar_cipher(str, enc)
