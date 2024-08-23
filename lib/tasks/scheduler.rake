# lib/tasks/scheduler.rake
namespace :scheduler do
  desc "Generate and email invoice PDFs"
  task generate_and_email_invoices: :environment do
    puts "Starting Rake Task"
    Rails.logger.info "Starting Rake Task"
    GenerateAndEmailInvoicesJob.perform_now
  end
end

namespace :generate_jobs do
  desc "Queue GenerateJobsJob to be performed"
  task perform: :environment do
    puts "Starting Rake Task"
    GenerateJobsJob.perform_later
  end
end
