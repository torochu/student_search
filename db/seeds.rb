# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Department.create(name:'Business')
Department.create(name:'Economy')
Department.create(name:'Literature')
Department.create(name:'Sociology')
Department.create(name:'Computer Science')
Subject.create(name:'Math')
Subject.create(name:'Antropology')
Subject.create(name:'Chemistry')
Student.create(name:'Jason 3/4" Allan', sex:'Male', 'age':18, department_id:1)
Student.create(name:'Donna Bachand', sex:'Female', 'age':19, department_id:2)
Student.create(name:'Chuck Barr', sex:'Male', 'age':20, department_id:3)
Student.create(name:'Max Batsch', sex:'Male', 'age':22, department_id:4)
Student.create(name:'Wes “Bo” Baumeister', sex:'Male', 'age':42, department_id:4)
Student.create(name:'陳小明 王', sex:'Male', 'age':32, department_id:5)
Student.create(name:'白目 AW HCG', sex:'Male', 'age':39, department_id:5)
StudentSubject.create(student_id:1, subject_id:1)
StudentSubject.create(student_id:1, subject_id:2)
StudentSubject.create(student_id:2, subject_id:3)
StudentSubject.create(student_id:3, subject_id:2)
StudentSubject.create(student_id:4, subject_id:1)
StudentSubject.create(student_id:4, subject_id:3)
StudentSubject.create(student_id:5, subject_id:2)
StudentSubject.create(student_id:5, subject_id:1)
StudentSubject.create(student_id:5, subject_id:3)
StudentSubject.create(student_id:6, subject_id:3)
StudentSubject.create(student_id:6, subject_id:3)
StudentSubject.create(student_id:7, subject_id:1)