

# for parameter in array/range
  # do whatever for each thing
# end
# for musician in musicians
#   # puts "#{musicians.index(musician) + 1}. #{musician} is in our band"
# end

# for index in (0...musicians.length)
#   puts "#{index + 1}. #{musicians[index]}"
# end
musicians = ['derek torres', 'allen last', 'viddy last', 'cheri kennedy', 'mew lee']
# This is the same as .map / .collect
upcased = []
musicians.each do |musician|
  upcased << musician.upcase
end

musicians.each_with_index do |musician, index|
  # puts "#{index + 1}. #{musician}"
end

upcased = musicians.map do |musician|
  musician.upcase
end

def map(array)
  new_array = []
  array.each do |element|
    new_array << yield(element)
  end
  return new_array
end




first_names = musicians.map do |musician|
  first, last = musician.split(' ')
  # names.last.capitalize
end
musicians = ['derek torres', 'allen last', 'viddy last', 'cheri kennedy', 'mew lee']
l_names = musicians.count do |musician|
  musician.split.last.start_with?('l')
  # musician.split.last[0] == 'l'
  # true/false
end

l_names = musicians.select do |musician|
  musician.split.last.start_with?('z')
end

non_l_names = musicians.reject do |musician|
  musician.split.last.start_with?('l')
end

# find will give you the first match
l_name = musicians.find do |musician|
  musician.split.last.start_with?('z')
end

l_names = musicians.all? do |musician|

  musician.class == String && musician.split.last.start_with?('l')
end

p musicians
p l_names

# .each => original Array
# .map => new Array (transformed)
# .count => Integer
# .select/reject => new Array (filtered)
# .find => the element / nil
