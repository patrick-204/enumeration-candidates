# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  @candidates.each do |candidate|
    if id == candidate[:id]
      return candidate
    end
  end
  return nil
end

def experienced?(candidate)
  if candidate[:years_of_experience] >= 2
    return true
  else
    return false
  end
end

def qualified_candidates(candidates)
  qualified = []

  candidates.each do |candidate|
    if experienced?(candidate) &&
       candidate[:github_points] >= 100 &&
       (candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')) &&
       candidate[:date_applied] >= 15.days.ago.to_date &&
       candidate[:age] > 17
       
      qualified.push(candidate)
    end
  end

  return qualified
end
  
def ordered_by_qualifications(candidates)
  sorted_candidates = candidates.sort_by do |candidate|
    [-candidate[:years_of_experience], -candidate[:github_points]]
  end
  
  return sorted_candidates
end