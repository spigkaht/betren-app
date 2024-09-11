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

# puts "Clearing out your junk.."
# Job.destroy_all
# Template.destroy_all
# puts "All clean!"

# templates = Template.all

# templates.each_with_index do |template, index|
#   template.photo_qty = 4
#   template.save
#   puts "template ##{index} saved"
# end

# puts "All done!"

# if Template.count < 5
#   template = Template.new(header: "NOTEMPLATE")
#   template.save
#   headers = Item.where(TYPE: "V").where(Inactive: false).pluck(:Header)
#   headers.each do |header|
#     template = Template.new(header: header)
#     puts "template #{header} created" if template.save
#   end
# end

# items = Item.all
# count = 0

# puts "Processing items"
# items.each do |item|
#   next if item.CNTR == "" || item.NUM == "" || item.Inactive || item.BulkItem || item.PartNumber !~ /\A\d+\z/ || item.PartNumber.end_with?("000")
#   puts "Item Num: #{item.NUM}"
#   contract_item = ContractItem.where(ITEM: item.NUM).order(DDT: :asc).last
#   template = Template.find_by(header: item.Header)
#   next if contract_item.QTY == 0 || contract_item.HRSC == 0 || contract_item.CNTR.start_with?("r") || contract_item.CNTR.start_with?("t")
#   job = Job.new(item_num: item.NUM, store: item.CurrentStore, completed_at: Time.now, last_return: contract_item.DDT, last_contract: item.CNTR, template: template)
#   if job.last_return.to_date == Date.current
#     job.completed_at = nil
#     puts "JOB COMPLETED AT DATE SET TO NIL"
#   end
#   puts job.save ? "Completed item ##{item.NUM}, job #{job.id}" : "No template exists for this item"
#   count += 1
# end

# puts "Item processing complete!"
# puts "#{count} jobs created"

# Question.destroy_all

# templates = Template.all

# templates.each do |template|
#   content = "Clean as necessary - wipe down with rag & cleaning spray OR wash with pressure washer & soap"
#   Question.create!(template: template, qtype: "bool", content: content)
#   puts "question #1 completed"
#   content = "Test operation of machine
#   IE: Does a vibrating plate vibrate?
#   Does a rotary hoe drive / blades turn easily?
#   Does a demo saw blade spin freely / water function correctly?"
#   Question.create!(template: template, qtype: "bool", content: content)
#   puts "question #2 completed"
# end


jobs = Job.where(completed_at: nil)

jobs.each do |job|
  time = Time.now
  puts "time #{time}"
  job.completed_at = time
  job.save
  puts "job ##{job.id} item #{job.item_num}"
  puts "completed date: #{job.completed_at}"
end

# one_day_ago = 1.day.ago
# contract_items = ContractItem.joins(:item)
#                               .where(item: { Inactive: false, BulkItem: false })
#                               .where.not('item.PartNumber LIKE ?', '%000')
#                               .where.not('item.PartNumber LIKE ?', '%[^0-9]%')
#                               .where('TransactionItems.DDT >= ?', one_day_ago)
#                               .where('TransactionItems.TXTY IN (?)', ["RR", "RX"])
#                               .where('TransactionItems.HRSC > ?', 0)
#                               .where('TransactionItems.QTY > ?', 0)
#                               .where.not('TransactionItems.CNTR LIKE ?', 'r%')
#                               .where.not('TransactionItems.CNTR LIKE ?', 't%')
#                               .select('TransactionItems.id, TransactionItems.ITEM, TransactionItems.CNTR, TransactionItems.DDT')

# item_nums = contract_items.pluck(:ITEM)
# items = Item.where(NUM: item_nums).index_by(&:NUM)

# contract_items.each do |contract_item|
#   item = items[contract_item.ITEM]
#   next unless item || contract_item.contract.STAT != ""
#   next if contract_item.contract.CONT != ""

#   last_job = Job.where(item_num: item.NUM).order(completed_at: :desc).first
#   template = Template.find_by(header: item.Header)
#   puts "LAST JOB COMPLETED_AT: #{last_job.completed_at.strftime("%a %d/%m/%Y %H:%M %z")} ------- LAST RETURN: #{last_job.last_return.strftime("%a %d/%m/%Y %H:%M %z")}"
#   if last_job.nil?
#     job = Job.create(item_num: item.NUM, store: item.CurrentStore, last_contract: contract_item.CNTR, last_return: contract_item.DDT, completed_at: nil, template: template)
#     puts "Job created: item_num: #{job.item_num}, store: #{job.store}, last_contract: #{job.last_contract}, last_return: #{job.last_return}, template: #{job.template}" if job.save
#   elsif last_job.completed_at.nil?
#     puts "--------------- last job not completed ------------------"
#   elsif contract_item.DDT > last_job.completed_at
#     puts "Job created because DDT greater than completed_at"
#     puts "#{contract_item.DDT - last_job.completed_at}"
#     job = Job.new(item_num: item.NUM, store: item.CurrentStore, last_contract: contract_item.CNTR, last_return: contract_item.DDT, completed_at: nil, template: template)
#     puts "Job created: item_num: #{job.item_num}, store: #{job.store}, last_contract: #{job.last_contract}, last_return: #{job.last_return}, template: #{job.template}" if job.save
#   else
#     puts "Job exists, last_job completed_at is NOT Nil, last_job completed_at is greater than contract_item.DDT"
#     next
#   end
# end

# current_store = "004"
# @stores = Job.where(store: ["001", "002", "003", "004"])
#               .distinct
#               .pluck(:store)
#               .sort

# @jobs = Job.includes(:item)
#             .where(completed_at: nil)

# @jobs = @jobs.where(store: current_store)

# @jobs = @jobs.order(last_return: :desc)
