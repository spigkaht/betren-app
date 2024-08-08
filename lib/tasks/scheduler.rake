# lib/tasks/scheduler.rake
namespace :scheduler do
  desc "Generate and email contract PDFs"
  task generate_and_email_contracts: :environment do
    puts "Starting Rake Task"
    Rails.logger.info "Starting Rake Task"
    GenerateAndEmailContractsJob.perform_now
  end
end
