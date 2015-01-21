def select_elements_starting_with_a(fruits)
  fruits.select {|fruit| fruit.start_with?('a') }
end

def select_elements_starting_with_vowel(names)
  names.select {|name| name.start_with?('a', 'e', 'i', 'o', 'u')}
end

def remove_nils_from_array(array)
  array.compact
end

def remove_nils_and_false_from_array(array)
  remove_nils_from_array(array).reject {|item| item == false}
end

def reverse_every_element_in_array(animals)
  animals.map {|animal| animal.reverse}
end

def every_possible_pairing_of_students(students)
  students.combination(2).to_a
end

def all_elements_except_first_3(array)
  array.drop(3)
end

def add_element_to_beginning_of_array(array, element)
  array.unshift(element)
end

def array_sort_by_last_letter_of_word(array)
  array.sort_by {|word| word.reverse}
end

def get_first_half_of_string(string)
  half = (string.length.to_f/2).ceil
  string[0, half]
end

def make_numbers_negative(number)
  -number.abs
end

def separate_array_into_even_and_odd_numbers(array)
  array.partition { |number| number.even? }
  # [array.select{|i| i% 2==0}] + [array.select{|b| b% 2!=0}]
end

def number_of_elements_that_are_palindromes(array)
  array.select {|word| word == word.reverse}.length
end

def shortest_word_in_array(array)
  array.min_by(&:length)
end

def longest_word_in_array(array)
  array.max_by(&:length)
end

def total_of_array(array)
  array.inject(:+)
  # array.inject{ |number, collection| number + collection}
end

def double_array(array)
  array.dup + array.clone
end

def turn_symbol_into_string(sym)
  sym.to_s
end

def average_of_array(array)
  (array.inject(:+) / array.length.to_f).round
end

def get_elements_until_greater_than_five(array)
  array.take_while {|num| num < 6 }
end

def convert_array_to_a_hash(array)
  Hash[*array]
end

def get_all_letters_in_array_of_words(array)
  array.map {|word| word.chars }.flatten.sort
end

def swap_keys_and_values_in_a_hash(hash)
  hash.invert
end

def add_together_keys_and_values(hash)
  hash.flatten.inject(:+)
end

def remove_capital_letters_from_string(string)
  string.gsub(/[A-Z]/, '')
end

def round_up_number(number)
  number.ceil
end

def round_down_number(number)
  number.floor
end

def format_date_nicely(date)
  date.strftime("%d/%m/%Y")
end

def get_domain_name_from_email_address(email)
  email[/@(\w+)/,1]
end

def titleize_a_string(str)
  forbidden = ['the', 'and']
  str.capitalize.split(' ').map{|word|forbidden.include?(word) ? word : word.capitalize }.join(' ')
end

def check_a_string_for_special_characters(str)
  str =~ /\W/ ? true : false
end

def get_upper_limit_of(range)
  range.to_a.last
end

def is_a_3_dot_range?(range)
  range.last != range.to_a.last
end

def square_root_of(number)
  Math.sqrt(number)
end

def word_count_a_file(file)
  b = []
  File.open(file, 'r').each_line do |line|
    line.split(' ').each {|word| b << word}
  end
  b.length
end

def is_a_2014_bank_holiday?(time)
  [Time.new(2014, 8, 25), Time.new(2014, 12, 25)].include?(time)
end

def your_birthday_is_on_a_friday_in_the_year(date)
  until date.friday? == true
    date += (365*24*60*60)
  end
  date.year
end

def count_words_of_each_length_in_a_file(file)

end


