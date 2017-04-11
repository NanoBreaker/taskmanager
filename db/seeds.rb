# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

family_todo_list = [
    ['Купить молоко', true],
    ['Помыть машину', false],
    ['Убрать гараж', false],
    ['Вынести мусор', true]
]

work_todo_list = [
    ['Устроится на работу', false],
    ['Работать', false],
    ['Познать дзен', false]
]

education_todo_list = [
    ['Выучить Ruby on Rails', false],
    ['Выучить конституцию РФ', true]
]

therest_todo_list = [
    ['Почитать Франца Кафку - Замок', true],
    ['Почитать Филиппа Дика - Валис', true]
]

#Создаём список дел для группы Семья
family = Project.create(title: "Семья")
family_todo_list.each do |text, isCompleted|
  family.todos << Todo.create(text: text, isCompleted: isCompleted)
end

#Создаём список дел для группы Работа
work = Project.create(title: "Работа")
work_todo_list.each do |text, isCompleted|
  work.todos << Todo.create(text: text, isCompleted: isCompleted)
end

#Создаём список дел для группы Учёба
education = Project.create(title: "Учёба")
education_todo_list.each do |text, isCompleted|
  education.todos << Todo.create(text: text, isCompleted: isCompleted)
end

#Создаём список дел для группы Прочее
therest = Project.create(title: "Прочее")
therest_todo_list.each do |text, isCompleted|
  therest.todos << Todo.create(text: text, isCompleted: isCompleted)
end

=begin
seed_file = File.join(Rails.root, 'db', 'seeds.yml')
config = YAML::load_file(seed_file)
Project.create(config["projects"])
=end