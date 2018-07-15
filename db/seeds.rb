# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# ruby encoding: utf-8
Department.delete_all
#...
department_list = [
  [ "BOGOTA D.C.", 11],
  [ "AMAZONAS", 91 ],
  [ "ANTIOQUIA", 5 ],
  [ "ARAUCA", 81],
  [ "ATLANTICO", 8],
  ["BOLIVAR", 13],
  ["BOYACA", 15],
  [ "CALDAS", 17],
  [ "CAQUETA", 18],
  [ "CASANARE", 85],
  [ "CAUCA", 19],
  [ "CESAR", 20],
  [ "CHOCO", 27],
  [ "CORDOBA", 23],
  [ "CUNDINAMARCA", 25],
  [ "GUAINIA", 94],
  [ "GUAJIRA", 44],
  [ "GUAVIARE", 95],
  [ "HUILA", 41],
  [ "MAGDALENA", 47],
  [ "META", 50],
  [ "NARIÑO", 52],
  [ "NORTE DE SANTANDER", 54],
  [ "PUTUMAYO", 86],
  [ "QUINDIO", 63],
  [ "RISARALDA", 66],
  [ "SAN ANDRES Y PROVIDENCIA", 88],
  [ "SANTANDER", 68],
  [ "SUCRE", 70],
  [ "TOLIMA",73],
  [ "VALLE DEL CAUCA", 76],
  [ "VAUPES", 97],
  [ "VICHADA", 99]
  ]


department_list.each do |name_department, code_department|
  Department.create( name_department: name_department, code_department: code_department )
end