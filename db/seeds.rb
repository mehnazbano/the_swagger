# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
puts "Creating Data for Thermostat"
# For creating thermostats
data = { "1234567892324242424242424276646497755" => "Indus Apartments, SIPCOT", "3334567892324242424242424276646497755" => "Opaline sequeel, Navallur", "4444567892324242424242424276646497755" => "Raipur, Dehradun", "4324567892324242424242424276646497755" => "Los Angels, Bakers Street", "9874567892324242424242424276646497755" => "Chingai airpot, Singapor"}
data.each do |key,value|
  Thermostat.create!(household_token: key, location: value)
end
puts "Thermostats created."
