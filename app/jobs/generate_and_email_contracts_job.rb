# app/jobs/generate_and_email_contracts_job.rb
class GenerateAndEmailContractsJob < ApplicationJob
  queue_as :default

  def perform
    puts "Starting GenerateAndEmailContractsJob"

    today_beginning = 0.days.ago.beginning_of_day
    today_end = 0.days.ago.end_of_day

    puts "Fetching contracts completed between #{today_beginning and today_end}"

    contracts = Contract.where(Completed: today_beginning..today_end)
                        .where.not(TOTL: :PAID)
                        .where.not('CNTR LIKE ?', 'r%')
                        .where.not('CNTR LIKE ?', 't%')
                        .where('PYMT LIKE ?', 'D')

    puts "Found #{contracts.count} contracts"

    contracts.each do |contract|
      puts "Processing contract ##{contract.CNTR}"

      pdf = ContractPdfGenerator.new(contract).generate
      ContractMailer.send_contract_email(contract, pdf.render).deliver_now

      puts "Email sent for contract ##{contract.CNTR}"
    end

    puts "GenerateAndEmailContractsJob completed"
  end
end
