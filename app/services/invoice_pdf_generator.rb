require 'prawn'
include ActionView::Helpers::NumberHelper

class InvoicePdfGenerator
  def initialize(invoice)
    @invoice = invoice
  end

  def generate
    Prawn::Document.new do |pdf|
      # set initial variables
      logopath = Rails.root.join('app/assets/images/br-logo.png')

      if @invoice.branch.Id == "001"
        @invoice.branch.Phone = "03 5996 6088"
      end

      case @invoice.branch.Id
      when "001"
        @invoice.branch.Phone = "03 5996 6088"
        email = "cran@betterrentals.com.au"
      when "002"
        email = "pak@betterrentals.com.au"
      when "003"
        email = "morn@betterrentals.com.au"
      when "004"
        email = "ftg@betterrentals.com.au"
      else
        email = "hello@betterrentals.com.au"
      end


      # Header section text
      header_data =
        "Better Rentals
        Hired From: #{@invoice.branch.AddressCity}, #{@invoice.branch.AddressLine1}
        Tel #{@invoice.branch.Phone}
        #{email}"

      pdf.font_size(10)

      # Top header
      pdf.bounding_box([pdf.bounds.left, pdf.bounds.top], width: 520, height: 20) do
        pdf.text_box "ABN 38 368 029 290", at: [pdf.bounds.left, pdf.bounds.top]
        pdf.text_box "Paid in Full", align: :right, size: 16, style: :bold
      end

      date_completed = @invoice.Completed.strftime("%a %d/%m/%Y")

      # Header section table
      pdf.table([
          [
            header_data,
            {:image => logopath, :scale => 0.7},
            [
              ["Completed", "Tax Invoice"],
              [date_completed, "#{@invoice.CNTR}-#{@invoice.STR.last}"]
            ]
          ]
        ]) do
        style(column(0), width: 200)
        style(column(1), width: 195)
        style(columns(1..2), borders: [])
        style(column(2), width: 200)
      end

      pdf.move_down 30

      # Customer detail header
      out_date = @invoice.DATE.strftime("%a %d/%m/%Y")
      pdf.bounding_box([pdf.bounds.left + 20, pdf.cursor], width: 520, height: 20) do
        pdf.text_box "Bill to:                Customer # #{@invoice.customer.CNUM}"
        pdf.text_box "Date Out: #{out_date}", align: :right
      end

      # Customer details
      customer_address =
      "#{@invoice.customer.NAME}
      #{@invoice.customer.Address}

      #{@invoice.customer.CITY} #{@invoice.customer.ZIP}"

      # Customer detail table
      pdf.move_up 5
      pdf.table([
          [
            customer_address,
            "",
            [
              ["Terms", "Invoice Date"],
              ["Due upon receipt", date_completed]
            ]
          ]
        ], :position => 20) do
        style(column(0), width: 200)
        style(column(1), width: 155)
        style(column(1..2), borders: [])
        style(column(2), width: 200)
      end

      pdf.move_down 10
      pdf.line [pdf.bounds.left, pdf.cursor], [pdf.bounds.right, pdf.cursor]
      pdf.stroke
      pdf.move_down 10
      pdf.font_size 8

      # Ordered by, operator details
      pdf.text "Ordered By: #{@invoice.OrderedBy}"
      pdf.move_down 2
      pdf.text "Picked up by: #{@invoice.PickedUpBy}                                                                                                 Rates don't include GST"
      pdf.move_down 2

      del_date = @invoice.DeliveryDate.strftime("%a %d/%m/%Y %H:%M")
      pu_date = @invoice.PickupDate.strftime("%a %d/%m/%Y %H:%M")
      if @invoice.Delvr
        pdf.table([
          ["Delivery #{del_date}", "Pickup #{pu_date}"],
          [@invoice.DeliveryAddress, @invoice.DeliveryAddress],
          ["#{@invoice.DeliveryCity} #{@invoice.DeliveryZip}", "#{@invoice.DeliveryCity} #{@invoice.DeliveryZip}"]
        ], :position => 100, :width => 450, :cell_style => { :height => 12, padding: [0, 0, 0, 0] }) do
          style(rows(0..-1), borders: [])
          style(row(0), font_style: :bold)
        end
        pdf.move_down 10
      end

      # Items table data
      items_data = [["Qty", "Days Out", "Items", "Hire Start", "Status", "Returned Date", "Price"]]
      conditional_rows = []

      @invoice.contract_items.each do |item|
        item_out = item.OutDate.strftime("%a %d/%m/%Y %l:%m%P")
        item_in = item.DDT.strftime("%a %d/%m/%Y %l:%m%P")
        days_out = ((item.DDT - item.OutDate) / 86400).round()
        days_out = 1 if days_out == 0
        status = item.item.TYPE == "T" || item.item.TYPE == "H" ? "Returned" : "Sold"
        days_out = "" if status != "Returned"

        if item.PRIC.positive?
          items_data << [item.QTY.round(), days_out, item.item.Name, item_out, status, item_in, number_to_currency(item.PRIC)]
        end

        if item.ReadingOut.positive?
          items_data << ["", "", "", "Hrs out: #{item.ReadingOut.round(1)}", "Hrs in: #{item.ReadingIn.round(1)}", "Hrs used: #{(item.ReadingIn - item.ReadingOut).round(1)}", ""]
          conditional_rows << items_data.size - 1
        end

        min_rate = number_to_currency(item.item.RATE1)
        day_rate = number_to_currency(item.item.RATE2)
        days_rate = number_to_currency(item.item.RATE4)
        week_rate = number_to_currency(item.item.RATE5)
        month_rate = number_to_currency(item.item.RATE6)

        if item.PRIC.positive? && (item.item.TYPE == "T" || item.item.TYPE == "H")
          items_data << ["", "", "12Hrs #{min_rate}        1day #{day_rate}        2dys #{days_rate}", "1week #{week_rate}      1month #{month_rate}", ""]
          conditional_rows << items_data.size - 1
        end
      end

      # Items table
      pdf.table(items_data, header: true, cell_style: { :overflow => :true, :size => 6, padding: [4, 5, 4, 5] }) do
        style(row(0), font_style: :bold)
        style(row(0).columns(0), borders: [:top, :left, :bottom, :right])
        style(row(0).columns(-1), borders: [:top, :right, :bottom])
        style(rows(0..-1).columns(1..4), borders: [:top, :bottom])
        style(rows(0..-1).column(0), borders: [:top, :bottom, :right])
        style(rows(0..-1).column(-1), borders: [:top, :bottom, :left])
        style(columns(0), width: 25)
        style(columns(1), width: 40)
        style(columns(2), width: 170)
        style(columns(3), width: 120)
        style(columns(4), width: 45)
        style(columns(5), width: 100)
        style(columns(6), width: 40)

        # Apply conditional styling
        conditional_rows.each do |row_index|
          style(row(row_index), borders: [:top, :bottom])
        end
      end

      pdf.line [pdf.bounds.left, pdf.cursor], [pdf.bounds.right, pdf.cursor]
      pdf.stroke
      pdf.move_cursor_to 220

      # Sales images
      dumper_image = Rails.root.join('app/assets/images/tracked-dumper-hire.jpg')
      pump_image = Rails.root.join('app/assets/images/pump-100mm-silenced.jpg')
      stump_image = Rails.root.join('app/assets/images/stump-grinder-hire1.jpg')
      roller_image = Rails.root.join('app/assets/images/roller-hire-3t-1.jpg')
      exc_image = Rails.root.join('app/assets/images/excavator-hire-micro.jpg')
      scissor_image = Rails.root.join('app/assets/images/scissor-lift.jpg')

      # Sales image data
      sales_table = [
        [
          {:image => dumper_image, :scale => 0.9},
          {:image => pump_image, :scale => 0.9},
          {:image => stump_image, :scale => 0.9},
          {:image => roller_image, :scale => 0.9},
          {:image => exc_image, :scale => 0.9},
          {:image => scissor_image, :scale => 0.9}
        ],
        [
          "Hi Lift Dumpers",
          "150mm Pumps",
          "Stump Grinders",
          "CAT 3 Tonne Rollers",
          "Micro Excavators",
          "Scissor Lifts",
        ]
      ]

      # Sales image table
      pdf.table(sales_table, cell_style: { :size => 8, align: :center }) do
        style(columns(0..-1), width: 90, borders: [])
      end

      pdf.move_down 10

      pdf.text "Thanks for hiring from Better Rentals...", align: :center, size: 12, style: :bold

      # Totals section data
      totals_data = [
        [
          "Rental and Sales",
          "",
          "",
          "",
          "GST"
        ],
        [
          number_to_currency(@invoice.RENT + @invoice.SALE),
          "",
          "",
          "",
          number_to_currency(@invoice.TAX)
        ]
      ]

      # Totals section tables
      pdf.table(totals_data, width: 550, cell_style: { :size => 8 }) do
        style(column(-1), align: :right)
        style(row(0), font_style: :bold)
      end

      pdf.move_down 5

      pdf.table([
        [
          "Total amount:    #{number_to_currency(@invoice.TOTL)}",
          "",
          "Total Paid:     #{number_to_currency(@invoice.PAID)}",
          "Total Due:     #{number_to_currency(@invoice.TOTL - @invoice.PAID)}"
        ]
      ], width: 550, cell_style: { :size => 8 }) do
        style(columns(0..-1), align: :right)
        style(columns(1..-1), font_style: :bold)
      end

      pdf.move_down 10

      # Footer section
      pdf.text "Payments: BSB 013322 Acc. 4830 80489; Credit Card: betterrentals.com.au/pay-your-bill", size: 8, align: :center
      pdf.text "hello@betterrentals.com.au", size: 7, align: :center
    end
  end
end
