=begin
Write Number in Expanded Form
You will be given a number and you will need to return it as a string in Expanded Form. For example:

expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'
NOTE: All numbers will be whole numbers greater than 0.

=end

def expanded_form(num)
  num
      .to_s
      .reverse
      .chars
      .map.with_index { | i, idx | i == '0' ? nil : i + '0' * idx }
      .compact
      .reverse
      .join(' + ')
end