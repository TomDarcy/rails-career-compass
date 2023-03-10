# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Career Options:
# When you press wizard, you need to land on a page to enter two career options
# Submit, then user creates two career options
# Need to create an object of options

# seed for 3 users with name, email, password = password
puts "cleaning DB..."
Answer.destroy_all
CareerOption.destroy_all
Question.destroy_all
Priority.destroy_all
Goal.destroy_all
User.destroy_all


puts "creating seed..."
tom = User.create(name: "tom", email: "tom@gmail.com", password: "password")
anna = User.create(name: "anna", email: "anna@gmail.com", password: "password")
aigerim = User.create(name: "aigerim", email: "aigerim@gmail.com", password: "password")
sarah = User.create(name: "sarah", email: "sarah@gmail.com", password: "password")

# seed for 2 career options for user 1

one = CareerOption.create(option: "Software Engineer", user_id: tom.id)
two = CareerOption.create(option: "Data Scientist", user_id: tom.id)

# seed for priorities for user 1. Priorities are salary,impact,work/life, balance,location,status,stability,progression. scored between 1 and 10

psalary = Priority.create(priority_name: "Salary", score: 10, user_id: tom.id)
pimpact = Priority.create(priority_name: "Social Impact", score: 8, user_id: tom.id)
pbalance = Priority.create(priority_name: "Work/life balance", score: 8, user_id: tom.id)
plocation = Priority.create(priority_name: "Location", score: 5, user_id: tom.id)
pstatus = Priority.create(priority_name: "Status", score: 2, user_id: tom.id)
pstability = Priority.create(priority_name: "Stability", score: 7, user_id: tom.id)
pprogression = Priority.create(priority_name: "Career Growth Potential", score: 6, user_id: tom.id)

# seed for questions for user 1. Questions are salary,impact,work/life, balance,location,status,stability,progression.

salary = Question.create(question: "Salary", priority_id: psalary.id)
impact = Question.create(question: "Social Impact", priority_id: pimpact.id)
balance = Question.create(question: "Work/Life Balance", priority_id: pbalance.id)
location = Question.create(question: "Location", priority_id: plocation.id)
status = Question.create(question: "Status", priority_id: pstatus.id)
stability = Question.create(question: "Stability", priority_id: pstability.id)
progression = Question.create(question: "Career Growth Potential", priority_id: pprogression.id)

# seed for answers with question id,career_option id, and score between 1 and 5 for career option 1 and 2

Answer.create(question_id: salary.id, career_option_id: one.id, score: 5)
Answer.create(question_id: impact.id, career_option_id: one.id, score: 4)
Answer.create(question_id: balance.id, career_option_id: one.id, score: 3)
Answer.create(question_id: location.id, career_option_id: one.id, score: 2)
Answer.create(question_id: status.id, career_option_id: one.id, score: 1)
Answer.create(question_id: stability.id, career_option_id: one.id, score: 5)
Answer.create(question_id: progression.id, career_option_id: one.id, score: 4)
Answer.create(question_id: salary.id, career_option_id: two.id, score: 3)
Answer.create(question_id: impact.id, career_option_id: two.id, score: 2)
Answer.create(question_id: balance.id, career_option_id: two.id, score: 1)
Answer.create(question_id: location.id, career_option_id: two.id, score: 5)
Answer.create(question_id: status.id, career_option_id: two.id, score: 4)
Answer.create(question_id: stability.id, career_option_id: two.id, score: 3)
Answer.create(question_id: progression.id, career_option_id: two.id, score: 2)

# seed goals for sarah

Goal.create!(goal_name: "Complete Le Wagon Bootcamp", user_id: sarah.id, start_value: 0, target_value: 1, current_value: 1, unit: "completed", goal_status: "Completed", theme: "career", goal_completion_date: "2021-12-31")
puts "goal seeded"
Goal.create!(goal_name: "Get a job as a Software Engineer", user_id: sarah.id, start_value: 0, target_value: 1, current_value: 1, unit: "completed", goal_status: "Completed", theme: "career", goal_completion_date: "2022-04-25")
puts "goal seeded"
Goal.create!(goal_name: "Read 20 Books this Year", user_id: sarah.id, start_value: 0, target_value: 20, current_value: 12, unit: "books", goal_status: "In Progress", theme: "career", goal_completion_date: "2023-04-25")
puts "goal seeded"
Goal.create!(goal_name: "Take Career Compass Test", user_id: sarah.id, start_value: 0, target_value: 1, current_value: 0, unit: "completed", goal_status: "In Progress", theme: "career", goal_completion_date: "2023-04-17")
puts "goal seeded"
Goal.create!(goal_name: "Get 1000 readers on my blog", user_id: sarah.id, start_value: 0, target_value: 1000, current_value: 300, unit: "readers", goal_status: "In Progress", theme: "career", goal_completion_date: "2023-04-17")
puts "goal seeded"
Goal.create!(goal_name: "Get 1000 followers on my professional twitter", user_id: sarah.id, start_value: 0, target_value: 1000, current_value: 1000, unit: "followers", goal_status: "Completed", theme: "career", goal_completion_date: "2023-04-17")

# end of seed
puts "Seeded database"
