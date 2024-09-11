class ReportsController < ApplicationController
  def index
    @stores = ["001", "002", "003", "004", "005"]
    @reports = Job.where.not(completed_at: nil).order(completed_at: :desc)
    @reports = @reports.where(store: params[:store]) if params[:store]
  end

  def show
    @report = Job.find(params[:id])
  end
end
