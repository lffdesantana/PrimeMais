# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Empresas
Company.create([
        {name: "AR8 PROMOTORA", cnpj: "14853455000164", phone: 5134655568, obs:"MASTER", total_strategy: 1000, total_consultation: 1000},
        {name: "UNIAO PROMOTORA", cnpj: "21602989000183", phone: 6140421998, obs:"MASTER", total_strategy: 1000, total_consultation: 1000},
        {name: "SUPORT SERVICOS", cnpj: "13698903000130", phone: 6186025430, obs:"", total_strategy: 1000, total_consultation: 1000}
        ])
