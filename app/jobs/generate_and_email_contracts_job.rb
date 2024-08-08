# app/jobs/generate_and_email_contracts_job.rb
class GenerateAndEmailContractsJob < ApplicationJob
  queue_as :default

  def perform
    Rails.logger.info "Starting GenerateAndEmailContractsJob"
    puts "Starting GenerateAndEmailContractsJob"

    yesterday_beginning = 1.day.ago.beginning_of_day
    yesterday_end = 1.day.ago.end_of_day

    Rails.logger.info "Fetching contracts completed between #{yesterday_beginning and yesterday_end}"
    puts "Fetching contracts completed between #{yesterday_beginning and yesterday_end}"

    contracts = Contract.where(Completed: yesterday_beginning..yesterday_end)
                        .where.not(TOTL: :PAID)

    Rails.logger.info "Found #{contracts.count} contracts"
    puts "Found #{contracts.count} contracts"

    contracts.each do |contract|
      Rails.logger.info "Processing contract ##{contract.CNTR}"
      puts "Processing contract ##{contract.CNTR}"

      pdf = ContractPdfGenerator.new(contract).generate # Assuming you have this class set up
      ContractMailer.send_contract_email(contract, pdf.render).deliver_now

      Rails.logger.info "Email sent for contract ##{contract.CNTR}"
      puts "Email sent for contract ##{contract.CNTR}"
    end

    Rails.logger.info "GenerateAndEmailContractsJob completed"
    puts "GenerateAndEmailContractsJob completed"
  end
end
