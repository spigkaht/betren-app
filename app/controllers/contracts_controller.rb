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
    # @contract = Contract.find(params[:id])
    @contract = {
      Completed: "Wed 12/2/2020",
      CNTR: "100901",
      NAME: "Benjamin Jackson",
      custAddress: "73 Manna Gum Dr",
      custCity: "Pakenham",
      custZip: "3810",
      CNUM: "16233",
      DATE: "Wed 12/2/2020",
      date_completed: "Wed 12/2/2020",
      ordered_by: "Benjamin Jackson",
      items: [
        {
          QTY: "1",
          DAYS: "3",
          Name: "Excavator 5 Tonne",
          OutDate: "Wed 12/2/2020",
          TXTY: "Returned",
          DDT: "Wed 12/2/2020",
          PRIC: "$450.00"
        },
        {
          QTY: "1",
          DAYS: "3",
          Name: "Delivery",
          OutDate: "Wed 12/2/2020",
          TXTY: "Returned",
          DDT: "Wed 12/2/2020",
          PRIC: "$80.00"
        },
        {
          QTY: "1",
          DAYS: "3",
          Name: "Pickup",
          OutDate: "Wed 12/2/2020",
          TXTY: "Returned",
          DDT: "Wed 12/2/2020",
          PRIC: "$80.00"
        }
      ],
      TOTL: "$690.00",
      TAX: "$69.00",
      PAID: "$759.00"
    }

    respond_to do |format|
      format.html
      format.pdf do
        pdf = generate_invoice(@contract)
        send_data pdf.render, filename: "contract_#{@contract[:CNUM]}.pdf", type: 'application/pdf', disposition: 'inline'
      end
    end
  end

  private

  def generate_invoice(contract)
    Prawn::Document.new do |pdf|
      logopath = Rails.root.join('app/assets/images/br-logo.png')

      # Header Section
      header_data =
        "Better Rentals
        Hired From: Pakenham, 907 Princes Hwy
        Tel 03 5941 2299
        hello@betterrentals.com.au"

      pdf.font_size(10)

      pdf.bounding_box([pdf.bounds.left, pdf.bounds.top], width: 520, height: 20) do
        pdf.text_box "ABN 38 368 029 290", at: [pdf.bounds.left, pdf.bounds.top]
        pdf.text_box "Paid in Full", align: :right, size: 16, style: :bold
      end

      pdf.table([
          [
            header_data,
            {:image => logopath, :scale => 0.7},
            [
              ["Completed", "Tax Invoice"],
              [contract[:Completed], contract[:CNTR]]
            ]
          ]
        ]) do
        style(column(0), width: 200)
        style(column(1), width: 200)
        style(columns(1..2), borders: [])
        style(column(2), width: 200)
      end
      pdf.move_down 10

      pdf.text "Tax Invoice#", size: 12, style: :bold
      pdf.text "Invoice Number: #{contract[:CNTR]}"
      pdf.text "Invoice Date: #{contract[:DATE]}"
      pdf.move_down 10

      # Customer Information
      pdf.text "Customer #: #{contract[:CNUM]}"
      pdf.text "Bill to: #{contract[:NAME]}"
      pdf.text contract[:custAddress]
      pdf.text contract[:custCity]
      pdf.text contract[:custZIP]
      pdf.move_down 10

      # Hire Details

      # Items Table
      items_data = [["Qty", "Days Out", "Items", "Status", "Returned Date", "Price"]]
      contract[:items].each do |item|
        items_data << [item[:QTY], item[:DAYS], item[:Name], item[:TXTY], item[:OutDate], item[:PRIC]]
      end

      pdf.table(items_data, header: true, cell_style: { :size => 8, border_color: "dddddd", padding: [4, 5, 4, 5] }) do
        style(row(0), background_color: 'e9e9e9', font_style: :bold)
        style(row(0).columns(0), borders: [:top, :left, :bottom])
        style(row(0).columns(-1), borders: [:top, :right, :bottom])
        style(columns(0), width: 75)
        style(columns(1), width: 75)
        style(columns(2))
      end

      pdf.move_down 20

      # Totals Section
      totals_data = [
        ["GST:", contract[:TAX]],
        ["Total Amount:", contract[:TOTL]],
        ["Total Paid:", contract[:PAID]],
        ["Total Due:", contract[:TOTL]]
      ]

      pdf.table(totals_data, position: :right, width: 200) do
        style(row(1), font_style: :bold)
        style(row(3), background_color: 'e9e9e9', font_style: :bold)
        style(column(1), align: :right)
        style(rows(0..-1), borders: [])
      end

      pdf.move_down 20

      # Footer Section
      pdf.text "Payments: BSB 013322 Acc. 4830 80489; Credit Card: betterrentals.com.au/pay-your-bill", size: 10
      pdf.text "Thank you for doing business with Better Rentals!", size: 10, style: :italic, align: :center
    end
  end
end
