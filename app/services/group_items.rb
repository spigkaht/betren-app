class GroupItems
  def initialize(item_headers, store, jobs)
    @item_headers = item_headers
    @store = store
    @jobs = jobs
  end

  def group_and_calculate_min_sum(reservation_count)
    # puts "item headers: #{@item_headers}"
    grouped_items = Item.where(Inactive: false, BulkItem: false, CurrentStore: @store)
                        .where(Header: @item_headers)
                        .select(:Header, :QTY, :QYOT, :PartNumber)
                        .group_by(&:Header)

    item_counts = @jobs.group_by { |job| job.template.header }.transform_values(&:count)
    # puts "item counts: #{item_counts}"
    # puts "grouped items: #{grouped_items}"

    min_sum_hash = {}
    grouped_items.each do |header, items|
      # puts "header: #{header}, items: #{items}"
      header_count = items.size

      total_qty = items.sum { |item| item.QTY.to_i }
      total_out = items.sum { |item| item.QYOT.to_i }
      # puts "item qty: #{total_qty}, qty out: #{total_out}, qty to runup: #{item_counts[header]}"

      # items.each do |item|
      #   puts "=================== COUNTS ======================"
      #   puts "header: #{header}, plant num: #{item.PartNumber}"
      #   puts "item qty: #{item.QTY.to_i}, qty out: #{item.QYOT.to_i}, qty to runup: #{header_count}"
      # end
      total_available = total_qty - total_out - item_counts[header] unless item_counts[header].nil?
      min_sum_hash[header] = item_counts[header].nil? ? 0 : total_available
      # - reservation_count[header].to_i
    end

    min_sum_hash
  end
end
