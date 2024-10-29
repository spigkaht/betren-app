class GroupItems
  def initialize(item_headers, store)
    @item_headers = item_headers
    @store = store
  end

  def group_and_calculate_min_sum(reservation_count)
    grouped_items = Item.where(Inactive: false, BulkItem: false, CurrentStore: @store)
                        .where(Header: @item_headers)
                        .select(:Header, :QTY, :QYOT)
                        .group_by(&:Header)

    min_sum_hash = {}
    grouped_items.each do |header, items|
      header_count = items.size
      # items.each do |item|
        # puts "=================== COUNTS ======================"
        # puts "header: #{header}"
        # puts "#{item.QTY.to_i}, #{item.QYOT.to_i}, #{header_count}"
      # end
      total_available = items.sum { |item| item.QTY.to_i - item.QYOT.to_i }
      min_sum_hash[header] = total_available - reservation_count[header].to_i
    end

    min_sum_hash
  end
end
