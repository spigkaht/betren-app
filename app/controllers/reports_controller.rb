class ReportsController < ApplicationController
  def index
    @stores = ["001", "002", "003", "004", "005"]
    @start_date = Date.today.beginning_of_day
    @end_date = Date.today.end_of_day
    @current_store = params[:store] if params[:store].present?

    if params[:start_date].present? && params[:end_date].present?
      @start_date = Date.strptime(params[:start_date], "%d/%m/%Y").beginning_of_day
      @end_date = Date.strptime(params[:end_date], "%d/%m/%Y").end_of_day

      @reports = Job
        .where(completed_at: @start_date..@end_date)
        .order(completed_at: :desc)
    else
      @reports = Job
        .where(completed_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day)
        .order(completed_at: :desc)
    end

    @reports = @reports.where(store: params[:store]) if params[:store].present?
  end


  def show
    @report = Job.find(params[:id])
  end
end
