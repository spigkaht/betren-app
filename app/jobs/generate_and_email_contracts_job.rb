# app/jobs/generate_and_email_contracts_job.rb
class GenerateAndEmailContractsJob < ApplicationJob
  queue_as :default

  def perform
    puts "Starting GenerateAndEmailContractsJob"

    yesterday_beginning = 1.day.ago.beginning_of_day
    yesterday_end = 1.day.ago.end_of_day

    puts "Fetching contracts completed between #{yesterday_beginning and yesterday_end}"

    contracts = Contract.where(Completed: yesterday_beginning..yesterday_end)
                        .where.not(TOTL: :PAID)
                        .where.not('CNTR LIKE ?', 'r%')
                        .where.not('CNTR LIKE ?', 't%')

    puts "Found #{contracts.count} contracts"

    contracts.each do |contract|
      puts "Processing contract ##{contract.CNTR}"

      pdf = ContractPdfGenerator.new(contract).generate # Assuming you have this class set up
      ContractMailer.send_contract_email(contract, pdf.render).deliver_now

      puts "Email sent for contract ##{contract.CNTR}"
    end

    puts "GenerateAndEmailContractsJob completed"
  end
end
