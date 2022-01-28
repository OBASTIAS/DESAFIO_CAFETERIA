class DashboardController < ApplicationController
  def index
    @sales_grouped_by_month_sum = Sale.where('date_time> ? ', 1.year.ago).group_by_month(:date_time).order(date_time: :asc).sum(:amount)
    @sales_grouped_by_month_count = Sale.where('date_time > ? ', 1.year.ago).group_by_month(:date_time).order(date_time: :asc).count
    @sales_grouped_by_month_avg = Sale.where('date_time > ? ', 1.year.ago).group_by_month(:date_time).order(date_time: :asc).average(:amount)


    @sales_grouped_by_origin_12 = Sale.where('date_time> ? ', 12.month.ago).group(:origin).order(origin: :asc).count
    @sales_grouped_by_origin_6 = Sale.where('date_time> ? ', 6.month.ago).group(:origin).order(origin: :asc).count
    @sales_grouped_by_origin_3 = Sale.where('date_time> ? ', 3.month.ago).group(:origin).order(origin: :asc).count
    @sales_grouped_by_origin_1 = Sale.where('date_time> ? ', 1.month.ago).group(:origin).order(origin: :asc).count


    @sales_grouped_by_variety_12 = Sale.where('date_time> ? ', 12.month.ago).group(:variety).order(variety: :asc).count
    @sales_grouped_by_variety_6 = Sale.where('date_time> ? ', 6.month.ago).group(:variety).order(variety: :asc).count
    @sales_grouped_by_variety_3 = Sale.where('date_time> ? ', 3.month.ago).group(:variety).order(variety: :asc).count
    @sales_grouped_by_variety_1 = Sale.where('date_time> ? ', 1.month.ago).group(:variety).order(variety: :asc).count

  end
end
