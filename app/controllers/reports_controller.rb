class ReportsController < ApplicationController
  def index
    @stores = ["001", "002", "003", "004", "005"]
    params[:store].present? ? @store = params[:store] : current_user.store
    # @start_date = Date.today.beginning_of_day
    # @end_date = Date.today.end_of_day
    # @current_store = params[:store] if params[:store].present?

    if params[:start_date].present? && params[:end_date].present?
      @start_date = Date.strptime(params[:start_date], "%d/%m/%Y").beginning_of_day
      @end_date = Date.strptime(params[:end_date], "%d/%m/%Y").end_of_day
    else
      @start_date = Time.zone.now.beginning_of_day
      @end_date = Time.zone.now.end_of_day
    end

    begin
      Timeout.timeout(20) do
        @reports = Job
          .includes(:item)
          .where(completed_at: @start_date..@end_date)
          .where(store: @store)
          .order(completed_at: :desc)
      end
    rescue Timeout::Error
      Rails.logger.error("Query timed out in ReportsController#index for store #{params[:store]}")
      @reports = []
      flash[:alert] = "Taking too long to load. Please refine search."
    end
  end

  def show
    @report = Job.find(params[:id])
  end
end
