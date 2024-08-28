# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Job.establish_connection(:secondary)

puts "Clearing out your junk.."
Job.destroy_all
puts "All clean!"

items = Item.all
count = 0

puts "Processing items"
items.each do |item|
  next if item.CNTR == "" || item.NUM == "" || item.Inactive || item.BulkItem || item.PartNumber !~ /\A\d+\z/ || item.PartNumber.end_with?("000")
  puts "Item Num: #{item.NUM}"
  contract_item = ContractItem.where(ITEM: item.NUM).order(DDT: :asc).last
  job = Job.new(item_num: item.NUM, store: item.CurrentStore, completed_at: Time.now, last_return: contract_item.DDT, last_contract: item.CNTR)
  if job.last_return.to_date == Date.current
    job.completed_at = nil
    puts "JOB COMPLETED AT DATE SET TO NIL"
  end
  puts "Completed item ##{item.NUM}, job #{job.id}" if job.save
  count += 1
end
puts "Item processing complete!"
puts "#{count} jobs created"
