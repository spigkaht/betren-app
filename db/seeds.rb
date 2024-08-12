# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# contract = Contract.new(
#   contract_number: "123993",
#   contract_status: "Closed",
#   contract_branch: "001",
#   start_date_time: DateTime.now,
#   end_date_time: DateTime.now,
#   customer_name: "Benjamin Jackson",
#   po_number: "S345",
#   price_total: "0034.00",
#   price_tax: "0003.40",
#   contract_info: "Ready",
#   notes: "Stuff stuff stuff",
#   delivery: "",
#   pickup: ""
# )

# if contract.save
#   puts "Contract created succesfully"
# else
#   puts "Error creating contract"
# end
