
people = [
{first: "Jon", last: "Smith", age: 25, income: 50000, household_size: 1, gender: "Male", education: "College"},
{first: "Jane", last: "Davies", age: 30, income: 60000, household_size: 3, gender: "Female", education: "High School"},
{first: "Sam", last: "Farelly", age: 32, income: 80000, household_size: 2, gender: "Unspecified", education: "College"},
{first: "Joan", last: "Favreau", age: 35, income: 65000, household_size: 4, gender: "Female", education: "College"},
{first: "Sam", last: "McNulty", age: 38, income: 63000, household_size: 3, gender: "Male", education: "College"},
{first: "Mark", last: "Minahan", age: 48, income: 78000, household_size: 5, gender: "Male", education: "High School"},
{first: "Susan", last: "Umani", age: 45, income: 75000, household_size: 2, gender: "Female", education: "College"},
{first: "Bill", last: "Perault", age: 24, income: 45000, household_size: 1, gender: "Male", education: "Did Not Complete High School"},
{first: "Doug", last: "Stamper", age: 45, income: 75000, household_size: 1, gender: "Male", education: "College"},
{first: "Francis", last: "Underwood", age: 52, income: 100000, household_size: 2, gender: "Male", education: "College"}
]

average_age = 0
people.each do |ages|
  average_age += ages[:age]
end

puts "Average age: #{average = (average_age.to_f / people.length.to_f)}"

puts "========="

average_income = 0
people.each do |income|
  average_income += income[:income]
end

puts "Average income: #{average = (average_income.to_f / people.length.to_f)}"

puts "========="

average_house = 0
people.each do |house|
  average_house += house[:household_size]
end

puts "Average Household Size: #{average = (average_house.to_f / people.length.to_f)}"

puts "========="

female = 0
people.each do |gender|
  if gender[:gender] == "Female"
    female += 1
  end
end

puts "Female %: #{(female.to_f / people.length.to_f) * 100}"

puts "========="

male = 0
people.each do |gender|
  if gender[:gender] == "Male"
    male += 1
  end
end

puts "Male %: #{(male.to_f / people.length.to_f) * 100}"

puts "========="

unspecified = 0
people.each do |gender|
  if gender[:gender] == "Unspecified"
    unspecified += 1
  end
end

puts "Unspecified Gender %: #{(unspecified.to_f / people.length.to_f) * 100}"

puts "========="

college = 0
people.each do |education|
  if education[:education] == "College"
    college += 1
  end
end

puts "College %: #{(college.to_f / people.length.to_f) * 100}"

puts "========="

high_school = 0
people.each do |education|
  if education[:education] == "High School"
    high_school += 1
  end
end

puts "High School %: #{(high_school.to_f / people.length.to_f) * 100}"

puts "========="

did_not_finish = 0
people.each do |education|
  if education[:education] != "High School" && education[:education] != "College"
    did_not_finish += 1
  end
end

puts "Did Not Finish High School %: #{(did_not_finish.to_f / people.length.to_f) * 100}"
