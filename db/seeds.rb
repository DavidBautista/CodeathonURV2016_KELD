require 'open-uri'

Center.create name: "Universitat Rovira i Virgili", country: "Espanya", address: "Campus Sascelades"
Degree.create name: "Filosofia", description: "Filosofia per a universitaris"
Subject.create name: "Filosofs del mon", description: "Assignatura dedica a l'estudi dels filosofs", center_id: 1, degree_id: 1
User.create password: "1234", password_confirmation: "1234", first_name: "Karen", last_name: "Sanchez", email: "test1@gmail.com", center_id: 1, degree_id: 1, experience: 0, level: 1
User.create password: "1234", password_confirmation: "1234", first_name: "Laura", last_name: "Martinez", email: "test2@gmail.com", center_id: 1, degree_id: 1, experience: 0, level: 1
User.create password: "1234", password_confirmation: "1234", first_name: "David", last_name: "Bautista", email: "test3@gmail.com", center_id: 1, degree_id: 1, experience: 0, level: 1
User.create password: "1234", password_confirmation: "1234", first_name: "Ennio", last_name: "Casas", email: "test4@gmail.com", center_id: 1, degree_id: 1, experience: 0, level: 1

UserSubject.create user_id:1, subject_id: 1, role: 0
UserSubject.create user_id:2, subject_id: 1, role: 0
UserSubject.create user_id:3, subject_id: 1, role: 0
UserSubject.create user_id:4, subject_id: 1, role: 0

Exam.create name: "Examen Tema 2", description: "Examen del segon tema de la assignatura", end_date: Time.now+10.days, subject_id: 1


def load_data_from_csv(klassname)
  filename = klassname[0].downcase + klassname[1..-1]
  klass = Object.const_get klassname
  klass.delete_all
  open("db/seeds/#{filename}.csv") do |objlist|
    header = objlist.readline.chomp.split(";")
    objlist.read.each_line do |obj|
      data = header.zip(obj.chomp.split(";")).to_h
      klass.create!(data )
    end
  end
end


models = ["Question"]

models.each do |m|
  load_data_from_csv m
end

