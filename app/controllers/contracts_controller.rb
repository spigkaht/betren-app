include ActionView::Helpers::NumberHelper

class ContractsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    # @contracts = Contract.where(Status: "D", Completed: "2024-07-23")
      # .includes(
      #           :contract_items,
      #           :customer,
      #           :contract_status,
      #           :contract_secondary_status,
      #           :operator,
      #           :payment_type,
      #           :branch
      #           )
      # .limit(5)
  end

  def show
    @contract = Contract.find(params[:id])

    respond_to do |format|
      format.html
      format.pdf do
        pdf = generate_invoice(@contract)
        send_data pdf.render, filename: "contract_#{@contract}.pdf", type: 'application/pdf', disposition: 'inline'
      end
    end
  end

  private

  def generate_invoice(contract)
    Prawn::Document.new do |pdf|
      logopath = Rails.root.join('app/assets/images/br-logo.png')

      # Header section text
      header_data =
        "Better Rentals
        Hired From: #{contract.branch.AddressCity}, #{contract.branch.AddressLine1}
        Tel #{contract.branch.Phone}
        hello@betterrentals.com.au"

      pdf.font_size(10)

      # Top header
      pdf.bounding_box([pdf.bounds.left, pdf.bounds.top], width: 520, height: 20) do
        pdf.text_box "ABN 38 368 029 290", at: [pdf.bounds.left, pdf.bounds.top]
        pdf.text_box "Paid in Full", align: :right, size: 16, style: :bold
      end

      date_completed = contract.Completed.strftime("%a %d/%m/%Y")

      # Header section table
      pdf.table([
          [
            header_data,
            {:image => logopath, :scale => 0.7},
            [
              ["Completed", "Tax Invoice"],
              [date_completed, contract.CNTR]
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
      out_date = contract.DATE.strftime("%a %d/%m/%Y")
      pdf.bounding_box([pdf.bounds.left + 20, pdf.cursor], width: 520, height: 20) do
        pdf.text_box "Bill to:"
        pdf.text_box "Customer # #{contract.customer.CNUM}", align: :center
        pdf.text_box "Date Out: #{out_date}", align: :right
      end

      # Customer details
      customer_address =
      "#{contract.customer.NAME}
      #{contract.customer.Address}

      #{contract.customer.CITY} #{contract.customer.ZIP}"

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
      pdf.text "Ordered By: #{contract.OrderedBy}"
      pdf.move_down 2
      pdf.text "Operator: #{contract.operator.OPNM}"
      pdf.move_down 2

      del_date = contract.DeliveryDate.strftime("%a %d/%m/%Y %H:%M")
      pu_date = contract.PickupDate.strftime("%a %d/%m/%Y %H:%M")
      if contract.Delvr
        pdf.table([
          ["Delivery #{del_date}", "Pickup #{pu_date}"],
          [contract.DeliveryAddress, contract.DeliveryAddress],
          ["#{contract.DeliveryCity} #{contract.DeliveryZip}", "#{contract.DeliveryCity} #{contract.DeliveryZip}"]
        ], :position => 100, :width => 450, :cell_style => { :height => 12, padding: [0, 0, 0, 0] }) do
          style(rows(0..-1), borders: [])
          style(row(0), font_style: :bold)
        end
        pdf.move_down 10
      end

      # Items table data
      items_data = [["Qty", "Days Out", "Items", "Hire Start", "Status", "Returned Date", "Price"]]
      conditional_rows = []

      contract.contract_items.each do |item, index|
        item_out = item.OutDate.strftime("%a %d/%m/%Y")
        item_in = item.DDT.strftime("%a %d/%m/%Y")
        days_out = ((item.DDT - item.OutDate) / 86400).round()
        status = item.item.TYPE == "T" || item.item.TYPE == "H" ? "Returned" : "Sold"
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
          items_data << ["", "", "12Hrs #{min_rate}    1day #{day_rate}    2dys #{days_rate}", "1week #{week_rate}", "1month #{month_rate}", ""]
          conditional_rows << items_data.size - 1
        end
      end

      # Items table
      pdf.table(items_data, header: true, cell_style: { :overflow => :true, :size => 8, padding: [4, 5, 4, 5] }) do
        style(row(0), font_style: :bold)
        style(row(0).columns(0), borders: [:top, :left, :bottom, :right])
        style(row(0).columns(-1), borders: [:top, :right, :bottom])
        style(rows(0..-1).columns(1..4), borders: [:top, :bottom])
        style(rows(0..-1).column(0), borders: [:top, :bottom, :right])
        style(rows(0..-1).column(-1), borders: [:top, :bottom, :left])
        style(columns(0), width: 30)
        style(columns(1), width: 50)
        style(columns(2), width: 180)
        style(columns(3), width: 75)
        style(columns(4), width: 75)
        style(columns(5), width: 80)
        style(columns(6), width: 50)

        # Apply conditional styling
        conditional_rows.each do |row_index|
          style(row(row_index), borders: [:top, :bottom])
        end
      end

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
          number_to_currency(contract.RENT + contract.SALE),
          "",
          "",
          "",
          number_to_currency(contract.TAX)
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
          "Total amount:    #{number_to_currency(contract.TOTL)}",
          "",
          "Total Paid:     #{number_to_currency(contract.PAID)}",
          "Total Due:     #{number_to_currency(contract.TOTL - contract.PAID)}"
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
