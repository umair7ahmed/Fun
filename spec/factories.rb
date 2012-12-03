factory :course do
  name "Physics"
  number 3
  association :professor 
end

factory :schedule do
  association :course
  association :student
end
