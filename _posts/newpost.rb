require 'date'

puts '####################'
puts '# New Post Creator #'
puts '####################'
puts ''

date  = ''
datee = ''
title = ''
categ = ''
comm  = 'true'

puts '1. Create post with current time? (Y/n)'
if ( gets.to_s.chomp == 'n' )
  puts '1.1. So, what is the intended date? (YYYY/MM/DD)'
  date  = gets.to_s
  puts '1.2. And the hour? (HH:MM)'
  date += ' ' + gets.to_s + ' ' + DateTime.now.strftime('%z')
  puts date
  date  = DateTime.parse(date)
else
  date = DateTime.now
end

datee = date.strftime('%Y-%m-%d %H:%I:%S %z')

puts '2. Now, what\'s the post title?'
title = gets.chomp

puts '3. And are there any categories?'
categ = gets.chomp

puts '4. Lastly, will comments be alowed? (Y/n)'
if ( gets.to_s.chomp == 'n' )
  comm = 'false'
end

file = %Q{---
layout: post
title:  "{{title}}"
date:   {{date}}
categories: {{categ}}
comments: {{comm}}
---

# CONTENTS HERE}
file.gsub!(/\{\{title\}\}/, title)
file.gsub!(/\{\{date\}\}/, datee)
file.gsub!(/\{\{categ\}\}/, categ)
file.gsub!(/\{\{comm\}\}/, comm)

File.open( date.strftime('%Y-%m-%d') + '-' + title.gsub(/\s/, '-').downcase + '.md', 'w' ) { |f| f.write(file) }
