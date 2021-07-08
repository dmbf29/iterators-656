def greet(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.capitalize}"
  # puts "Hi, #{full_name}"
  puts block_given? ? yield(full_name) : "GENERIC HELLO #{full_name}"
  return full_name
end

full_name = greet('daniel', 'rabottini') do |name|
  "HOWDY #{name} 🤠"
end
greet('jose', 'miranda') do |full_name|
  "Hola #{full_name} 🇨🇷"
end

greet('a', 'b')
