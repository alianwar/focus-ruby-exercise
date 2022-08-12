# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Employee.create([{ first_name: 'John', last_name: 'Lennon', date_of_birth: '1940-10-04', secret: 'a' },
                 { first_name: 'Rino', last_name: 'Star', date_of_birth: '1940-07-07', secret: 'b' },
                 { first_name: 'Rino', last_name: 'Star', date_of_birth: '1940-07-07', secret: 'c' }])
