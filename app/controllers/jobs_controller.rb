class JobsController < ApplicationController
  def index
    @jobs = Job.where(completed_at: nil).order(created_at: :desc)
  end
end
