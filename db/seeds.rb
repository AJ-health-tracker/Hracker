# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@cardio = ExerciseType.create(name: 'Cardio')
@water_sports = ExerciseType.create(name: 'Water sports')
@weights = ExerciseType.create(name: 'Weights')
@flexibility = ExerciseType.create(name: 'Flexibility')
