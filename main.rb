# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

# Test for experienced?() method
test_candidate = @candidates[0]
test_result = experienced?(test_candidate)
puts "Is candidate experienced? #{test_result}"

# Test for find() method
test_candidate_id = 9
test_result_2 = find(test_candidate_id)
if test_result_2.nil?
  puts "No candidate found with id #{test_candidate_id}"
else
  puts "The candidate is: #{test_result_2}"
end

# Test for find() method
test_candidates = @candidates
test_result_3 = qualified_candidates(test_candidates)
pp test_result_3

# Test for ordered_by_qualifications() method
test_candidates = @candidates
test_result_4 = ordered_by_qualifications(test_candidates)
pp test_result_4

# pp @candidates