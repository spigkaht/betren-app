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


# jobs = Job.where(completed_at: nil)

# jobs.each do |job|
#   time = Time.now
#   puts "time #{time}"
#   job.completed_at = time
#   job.save
#   puts "job ##{job.id} item #{job.item_num}"
#   puts "completed date: #{job.completed_at}"
# end

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

puts "Seeding template questions data"

electrical_items =
  [
    "MIXERELECSM",
    "CARPETDRY",
    "FANEXTRACT",
    "COMP12",
    "FANMAN",
    "CONCGRINDHAN",
    "PUMPSUB50",
    "PLASTERSAND",
    "HANDTRUCK",
    "HEATBLOWDIES",
    "GRINDER100",
    "WALLPAPERSTR",
    "VSHAFT25MMEL",
    "BREAKTILE",
    "BRICKSAW",
    "LEAD240V",
    "LEAD3PHASE",
    "HEATRADDIES",
    "BRICKSAW",
    "MAGDRILL",
    "BREAKELLAR",
    "BREAKELMED",
    "BREAKELSM",
    "VACWET"
  ]

genlarge_items =
  [
    "GEN30",
    "GEN60",
    "GEN20"
  ]

earthmoving_items =
  [
    "SKID3.5TRACK",
    "STUMPGRINDER",
    "ROLLER1.2",
    "ROLLER3",
    "EXC5T"
  ]

hydraulic_tools =
  [
    "TRENCHER",
    "ROCKGRAB",
    "PHDMINILOAD",
    "PHDEXC1",
    "PHDEXC1.5",
    "PHDEXC5",
    "BREAKEXC5"
  ]

ladders_items =
  [
    "LADDER8.3",
    "LADDER9.8",
    "LADPLAT2.4",
    "LADPLAT3",
    "STEP2.4",
    "STEP3",
    "STEP4.2",
    "TREST2.4",
    "TREST3"
  ]

airtools_items =
  [
    "NEEDLEGUN",
    "CP9",
    "BREAKAIRMED",
    "BREAKAIRSM",
    "SCABBLER"
  ]

twostroke_items =
  [
    "BROOMPOWER",
    "BRUSHCUT",
    "BLOWER",
    "HEDGETRIM",
    "HEDGETRIMPOL",
    "POLESAW",
    "PHD1MINI"
  ]

petrol_items =
  [
    "STARDRIVEPET",
    "VIBPLATEMED",
    "VIBPLATESM",
    "VSHAFTPET",
    "RAMMER",
    "RAMMERNARROW",
    "GEN8",
    "GEN6.5",
    "GEN3",
    "GEN2",
    "FLEXMOTOR",
    "FORKLIFT2.5",
    "MOWER",
    "PHD1MED",
    "ROTARYHOE"
  ]

pumplarge_items =
  [
    "PUMP100",
    "PUMP150"
  ]

trailers_items =
  [
    "TRAIL3.5T",
    "TRAIL6X4RAMP",
    "TRAILMINILD",
    "TRAILEXC",
    "TRAIL6X4RAMP",
    "TRAIL8X5BOX",
    "TRAIL8X5CAGE",
    "TRAIL8X5TAND",
    "TRAILEXC",
    "TRAILEXC1",
    "COMPLARGE",
    "TANKTRAILER",
    "TRAILMINILD",
    "TRAILPLANT",
    "TRAILPLANTHI",
    "TRAILPLANTLG",
    "TRAILPLANTSM",
    "TRAILPUMP",
    "TRAILSCAFF",
    "TRAILSCISSOR",
    "TRAILSTUMP",
    "TRAILPMP",
    "TRAILPUMP",
    "LIGHTTOWER"
  ]

petrol_items.each do |item, index|
  template = Template.find_by(header: item)
  template.questions.destroy_all

  question = "Spray machine down with soap, scrub any areas with grease/oil buildup"
  qtype = "bool"
  template.questions.create!(order: 1, qtype: qtype, content: question)

  question = "Pressure wash machine until clean (repeat above if necessary)"
  qtype = "bool"
  template.questions.create!(order: 2, qtype: qtype, content: question)

  question = "Refuel petrol tank
* Unleaded fuel for unleaded machines
* 2-stroke fuel for 2-stroke machines"
  qtype = "bool"
  template.questions.create!(order: 3, qtype: qtype, content: question)

  question = "Start petrol motor"
  qtype = "bool"
  template.questions.create!(order: 4, qtype: qtype, content: question)

  question = "Check hydraulic oil level if applicable"
  qtype = "bool"
  template.questions.create!(order: 5, qtype: qtype, content: question)

  question = "Test operation of machine
IE: Does a vibrating plate vibrate?
Does a rotary hoe drive / blades turn easily?
Does a demo saw blade spin freely / water function correctly?"
  qtype = "bool"
  template.questions.create!(order: 6, qtype: qtype, content: question)

  template.save
  puts "questions created for template #{template.header}"
end

electrical_items.each do |item, index|
  template = Template.find_by(header: item)
  template.questions.destroy_all

  question = "Clean machine with compressed air and rag"
  qtype = "bool"
  template.questions.create!(order: 1, qtype: qtype, content: question)

  question = "Electrical test with test & tag machine as per procedure & training"
  qtype = "bool"
  template.questions.create!(order: 2, qtype: qtype, content: question)

  question = "Check body of tool, electrical lead and plug for any signs of damage"
  qtype = "bool"
  template.questions.create!(order: 3, qtype: qtype, content: question)

  question = "Test operation of machine
IE: Does a vibrating plate vibrate?
Does a rotary hoe drive / blades turn easily?
Does a demo saw blade spin freely / water function correctly?"
  qtype = "bool"
  template.questions.create!(order: 4, qtype: qtype, content: question)

  template.save
  puts "questions created for template #{template.header}"
end

genlarge_items.each do |item, index|
  template = Template.find_by(header: item)
  template.questions.destroy_all

  question = "Spray machine down with soap, scrub any areas with grease/oil buildup"
  qtype = "bool"
  template.questions.create!(order: 1, qtype: qtype, content: question)

  question = "Pressure wash machine until clean (repeat above if necessary)"
  qtype = "bool"
  template.questions.create!(order: 2, qtype: qtype, content: question)

  question = "Test 3 phase on Generator
* Check volts with metre
* Elect test and re-tag if required"
  qtype = "bool"
  template.questions.create!(order: 3, qtype: qtype, content: question)

  question = "Check on trailer:
* D-Shackle present
* Brake lever not too tight / loose
* Trailer lights with trolley tester"
  qtype = "bool"
  template.questions.create!(order: 4, qtype: qtype, content: question)

  template.save
  puts "questions created for template #{template.header}"
end

earthmoving_items.each do |item, index|
  template = Template.find_by(header: item)
  template.questions.destroy_all

  question = "Check for hydraulic leaks (before washing)"
  qtype = "bool"
  template.questions.create!(order: 1, qtype: qtype, content: question)

  question = "Remove excess dirt and mud prior to cleaning"
  qtype = "bool"
  template.questions.create!(order: 2, qtype: qtype, content: question)

  question = "Spray machine down with soap
Degreaser for any greasy areas
Scrub any areas with grease/oil buildup"
  qtype = "bool"
  template.questions.create!(order: 3, qtype: qtype, content: question)

  question = "Pressure wash machine until clean (repeat above if necessary)"
  qtype = "bool"
  template.questions.create!(order: 4, qtype: qtype, content: question)

  question = "Inspect for damage to hydraulic rams, hydarulic hoses, body panels, tracks"
  qtype = "bool"
  template.questions.create!(order: 5, qtype: qtype, content: question)

  question = "Damage = Not ready for hire"
  qtype = "alrt"
  template.questions.create!(order: 6, qtype: qtype, content: question)

  question = "Visual check of all rollover protection bolts (if loose = not ready for hire)"
  qtype = "bool"
  template.questions.create!(order: 7, qtype: qtype, content: question)

  question = "Check all safety decals & stickers"
  qtype = "bool"
  template.questions.create!(order: 8, qtype: qtype, content: question)

  question = "Check reverse beeper & flashing light both function"
  qtype = "bool"
  template.questions.create!(order: 9, qtype: qtype, content: question)

  question = "Grease all points on machine
* Remove excess grease beforehand with rag"
  qtype = "bool"
  template.questions.create!(order: 10, qtype: qtype, content: question)

  question = "Check hydraulic oil level"
  qtype = "bool"
  template.questions.create!(order: 11, qtype: qtype, content: question)

  question = "Test machine operation
Does it:
* Drive backward and forward?
* Turn?
* Arm & bucket movement operational and smooth?
* No sqeauling or grinding noises?
* Grader bar functions?
* Roller vibrates?"
  qtype = "bool"
  template.questions.create!(order: 12, qtype: qtype, content: question)

  template.save
  puts "questions created for template #{template.header}"
end

hydraulic_tools.each do |item, index|
  template = Template.find_by(header: item)
  template.questions.destroy_all

  question = "Check for hydraulic leaks (before washing)"
  qtype = "bool"
  template.questions.create!(order: 1, qtype: qtype, content: question)

  question = "Remove excess dirt and mud prior to cleaning"
  qtype = "bool"
  template.questions.create!(order: 2, qtype: qtype, content: question)

  question = "Spray machine down with soap
Degreaser for any greasy areas
Scrub any areas with grease/oil buildup"
  qtype = "bool"
  template.questions.create!(order: 3, qtype: qtype, content: question)

  question = "Pressure wash machine until clean (repeat above if necessary)"
  qtype = "bool"
  template.questions.create!(order: 4, qtype: qtype, content: question)

  question = "Inspect for damage to hydraulic rams, hydarulic hoses, body panels etc"
  qtype = "bool"
  template.questions.create!(order: 5, qtype: qtype, content: question)

  question = "Damage = Not ready for hire"
  qtype = "alrt"
  template.questions.create!(order: 6, qtype: qtype, content: question)

  question = "Check all safety decals & stickers"
  qtype = "bool"
  template.questions.create!(order: 7, qtype: qtype, content: question)

  question = "Test operation of machine
IE: Does a vibrating plate vibrate?
Does a rotary hoe drive / blades turn easily?
Does a demo saw blade spin freely / water function correctly?"
  qtype = "bool"
  template.questions.create!(order: 8, qtype: qtype, content: question)

  question = "Ensure hyraulic fittings are clean and plug male fitting into female fitting before putting attachment away"
  qtype = "bool"
  template.questions.create!(order: 9, qtype: qtype, content: question)

  template.save
  puts "questions created for template #{template.header}"
end

ladders_items.each do |item, index|
  template = Template.find_by(header: item)
  template.questions.destroy_all

  question = "Spray machine down with soap, scrub any areas with grease/oil buildup"
  qtype = "bool"
  template.questions.create!(order: 1, qtype: qtype, content: question)

  question = "Pressure wash machine until clean (repeat above if necessary)"
  qtype = "bool"
  template.questions.create!(order: 2, qtype: qtype, content: question)

  question = "Check basic operation and safety IE
Are all rungs in good condition?
Are feet in good condition and all rubber feet secured?"
  qtype = "bool"
  template.questions.create!(order: 3, qtype: qtype, content: question)

  template.save
  puts "questions created for template #{template.header}"
end

airtools_items.each do |item, index|
  template = Template.find_by(header: item)
  template.questions.destroy_all

  question = "Clean machine with compressed air and rag"
  qtype = "bool"
  template.questions.create!(order: 1, qtype: qtype, content: question)

  question = "Wash with pressure washer if necessary, safe to do so and won't damage machine"
  qtype = "bool"
  template.questions.create!(order: 2, qtype: qtype, content: question)

  question = "Check all air fittings & hoses for damage"
  qtype = "bool"
  template.questions.create!(order: 3, qtype: qtype, content: question)

  question = "Check body of tool for any damage"
  qtype = "bool"
  template.questions.create!(order: 4, qtype: qtype, content: question)

  question = "Test operation of machine
IE: Does a vibrating plate vibrate?
Does a rotary hoe drive / blades turn easily?
Does a demo saw blade spin freely / water function correctly?"
  qtype = "bool"
  template.questions.create!(order: 5, qtype: qtype, content: question)

  template.save
  puts "questions created for template #{template.header}"
end

twostroke_items.each do |item, index|
  template = Template.find_by(header: item)
  template.questions.destroy_all

  question = "Spray machine down with soap, scrub any areas with grease/oil buildup"
  qtype = "bool"
  template.questions.create!(order: 1, qtype: qtype, content: question)

  question = "Pressure wash machine until clean (repeat above if necessary)"
  qtype = "bool"
  template.questions.create!(order: 2, qtype: qtype, content: question)

  question = "Refuel petrol tank
Unleaded fuel for unleaded machines
2-stroke fuel for 2-stroke machines"
  qtype = "bool"
  template.questions.create!(order: 3, qtype: qtype, content: question)

  question = "Start motor"
  qtype = "bool"
  template.questions.create!(order: 4, qtype: qtype, content: question)

  question = "Check hydraulic oil level if applicable"
  qtype = "bool"
  template.questions.create!(order: 5, qtype: qtype, content: question)

  question = "Test operation of machine
IE: Does a vibrating plate vibrate?
Does a rotary hoe drive / blades turn easily?
Does a demo saw blade spin freely / water function correctly?"
  qtype = "bool"
  template.questions.create!(order: 6, qtype: qtype, content: question)

  template.save
  puts "questions created for template #{template.header}"
end

pumplarge_items.each do |item, index|
  template = Template.find_by(header: item)
  template.questions.destroy_all

  question = "Spray machine down with soap, scrub any areas with grease/oil buildup"
  qtype = "bool"
  template.questions.create!(order: 1, qtype: qtype, content: question)

  question = "Pressure wash machine until clean (repeat above if necessary)"
  qtype = "bool"
  template.questions.create!(order: 2, qtype: qtype, content: question)

  question = "Start pump motor"
  qtype = "bool"
  template.questions.create!(order: 3, qtype: qtype, content: question)

  question = "Test fitting with pressure gauge (between 60-80psi)"
  qtype = "bool"
  template.questions.create!(order: 4, qtype: qtype, content: question)

  question = "Check on trailer:
* D-Shackle present
* Brake lever not too tight / loose
* Trailer lights with trolley tester"
  qtype = "bool"
  template.questions.create!(order: 5, qtype: qtype, content: question)

  template.save
  puts "questions created for template #{template.header}"
end

trailers_items.each do |item, index|
  template = Template.find_by(header: item)
  template.questions.destroy_all

  question = "Spray machine down with soap, scrub any areas with grease/oil buildup"
  qtype = "bool"
  template.questions.create!(order: 1, qtype: qtype, content: question)

  question = "Pressure wash machine until clean (repeat above if necessary)"
  qtype = "bool"
  template.questions.create!(order: 2, qtype: qtype, content: question)

  question = "Test operation of machine
IE: Does a vibrating plate vibrate?
Does a rotary hoe drive / blades turn easily?
Does a demo saw blade spin freely / water function correctly?"
  qtype = "bool"
  template.questions.create!(order: 3, qtype: qtype, content: question)

  question = "Accessories
D-Shackle"
  qtype = "bool"
  template.questions.create!(order: 4, qtype: qtype, content: question)

  question = "Check load binders & chains for damage or wear
(example photos of damaged load binders below)
Oil load binders"
  qtype = "bool"
  template.questions.create!(order: 5, qtype: qtype, content: question)

  template.save
  puts "questions created for template #{template.header}"
end
