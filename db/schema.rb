# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_10_10_205257) do
  create_schema "NT AUTHORITY\\SYSTEM"

  create_table "AT_OPTIONS", primary_key: "OPT_DOMAIN", id: { type: :varchar, limit: 30 }, force: :cascade do |t|
    t.varchar "OPT_OPTION_VALUE", limit: 512
    t.varchar "OPT_FRM_CONTROL_NAME", limit: 60
    t.varchar "OPT_ALW_VALS", limit: 1000
  end

  create_table "AccountNumbers", primary_key: "Store", id: { type: :string, limit: 3 }, force: :cascade do |t|
    t.string "BankDeposits", limit: 50
    t.string "CreditCards", limit: 50
    t.string "AccountPayments", limit: 50
    t.string "AddedCash", limit: 50
    t.string "PettyCash", limit: 50
    t.string "OverUnder", limit: 50
    t.string "SuspenseFund", limit: 50
    t.string "AccountsReceivable", limit: 50
    t.string "CustomerDeposits", limit: 50
    t.string "SalesTax", limit: 50
    t.string "RentalIncome", limit: 50
    t.string "SalesIncome", limit: 50
    t.string "DmgWaiverIncome", limit: 50
    t.string "AssetSalesIncome", limit: 50
    t.string "OtherIncome", limit: 50
    t.string "Disbursements", limit: 50
    t.string "Miscellaneous", limit: 50
    t.string "Depreciation", limit: 50
    t.string "AccDepreciation", limit: 50
    t.string "Equipment", limit: 50
    t.string "ExportLocation", limit: 50
    t.string "AssetCost", limit: 50
    t.string "DiscountsTaken", limit: 50
    t.string "DebitCards", limit: 50
    t.integer "ExportFormat", limit: 2
    t.integer "ExportFreq", limit: 2
    t.string "CostOfGoods", limit: 50
    t.string "Inventory", limit: 50
    t.string "ItemPercentage", limit: 50
    t.string "Class", limit: 50
    t.string "Repairs", limit: 50
    t.string "InventoryAdjustment", limit: 50
    t.string "InterStoreBalance", limit: 50
    t.string "POShipping", limit: 50
    t.string "POTax", limit: 50
    t.string "POMiscellaneous", limit: 50
    t.string "POExpense", limit: 50
    t.string "AccountsPayable", limit: 50
    t.string "AmericanExpress", limit: 50
    t.string "ExportFileExtension", limit: 20
    t.string "Loyalty", limit: 50
    t.string "EmailAddress", limit: 254, default: "", null: false
    t.string "TaxItem", limit: 255
    t.string "CurrencyExchangeGainLoss", limit: 50
    t.string "APIToken", limit: 255
    t.integer "AccountingLocationId"
    t.string "DiscountsGiven", limit: 50
    t.string "UndepositedFunds", limit: 50
    t.string "EquipmentSuspense", limit: 50
    t.string "InventorySuspense", limit: 50
    t.string "SubrentLiability", limit: 50
    t.string "OtherLiability", limit: 50
    t.string "SubrentExpense", limit: 50
  end

  create_table "AccountingAPIQueueCustomer", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "CustomerNumber", limit: 255, null: false
    t.string "CustomerName", limit: 255, null: false
    t.string "CustomerAddress1", limit: 255
    t.string "CustomerAddress2", limit: 255
    t.string "CustomerCityState", limit: 255
    t.string "CustomerZip", limit: 255
    t.string "CustomerPhone", limit: 255
    t.string "CustomerFax", limit: 255
    t.string "CustomerContact1", limit: 255
    t.string "CustomerContact1Phone", limit: 255
    t.string "CustomerContact2Phone", limit: 255
    t.string "CustomerAccountNumber", limit: 255
    t.text "CustomerTerms"
    t.money "CustomerMinimumOrder", precision: 19, scale: 4
    t.text "CustomerNotes"
    t.integer "CustomerCurrencyNumber"
    t.string "CustomerCurrencyName", limit: 255
    t.integer "CustomerLanguage"
    t.datetime "DateQueued", precision: nil, null: false
    t.datetime "DateApproved", precision: nil
    t.datetime "DatePosted", precision: nil
    t.datetime "DateCancelled", precision: nil
    t.datetime "DateError", precision: nil
    t.string "ErrorCode", limit: 255
    t.text "ErrorMsg"
    t.integer "RetryCount", default: 0, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.datetime "DateExported", precision: nil
    t.integer "Direction", default: 1, null: false
    t.string "ExternalId", limit: 1
    t.string "AccountingLink", limit: 255
  end

  create_table "AccountingAPIQueueCustomer_2019", primary_key: "AccountingAPIQueueCustomerId", id: :integer, force: :cascade do |t|
    t.integer "AccountingAPIQueueARId"
    t.integer "ExportFormatId", null: false
    t.string "CustomerNumber", limit: 255, null: false
    t.string "CustomerName", limit: 255, null: false
    t.string "CustomerAddress1", limit: 255
    t.string "CustomerAddress2", limit: 255
    t.string "CustomerCityState", limit: 255
    t.string "CustomerZip", limit: 255
    t.string "CustomerPhone", limit: 255
    t.string "CustomerFax", limit: 255
    t.string "CustomerContact1", limit: 255
    t.string "CustomerContact1Phone", limit: 255
    t.string "CustomerContact2Phone", limit: 255
    t.string "CustomerAccountNumber", limit: 255
    t.ntext "CustomerTerms"
    t.money "CustomerMinimumOrder", precision: 19, scale: 4
    t.ntext "CustomerNotes"
    t.integer "CustomerCurrencyNumber"
    t.string "CustomerCurrencyName", limit: 255
    t.integer "CustomerLanguage"
    t.datetime "DateQueued", precision: nil, null: false
    t.datetime "DateApproved", precision: nil
    t.datetime "DatePosted", precision: nil
    t.datetime "DateCancelled", precision: nil
    t.datetime "DateError", precision: nil
    t.string "ErrorCode", limit: 255
    t.ntext "ErrorMsg"
    t.integer "RetryCount", null: false
    t.integer "CreatedBy", null: false
    t.datetime "DateCreated", precision: nil, null: false
    t.integer "ChangedBy", null: false
    t.datetime "DateChanged", precision: nil, null: false
    t.ntext "ChangeNote"
    t.datetime "DateExported", precision: nil
    t.integer "Direction", limit: 2, null: false
    t.string "ExternalId", limit: 255
    t.boolean "NoExport", null: false
  end

  create_table "AccountingAPIQueueGL", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "GLTransactionGroupId", null: false
    t.integer "Batch", null: false
    t.datetime "TransDate", precision: nil, null: false
    t.varchar "TransCode", limit: 20, null: false
    t.integer "TransCodeId", null: false
    t.varchar "Reference", limit: 255
    t.varchar "TransMemo", limit: 7000
    t.datetime "DateQueued", precision: nil
    t.datetime "DateApproved", precision: nil
    t.datetime "DateExported", precision: nil
    t.datetime "DatePosted", precision: nil
    t.datetime "DateCancelled", precision: nil
    t.datetime "DateError", precision: nil
    t.integer "RetryCount", default: 0, null: false
    t.varchar "ExternalId", limit: 255
    t.varchar "ErrorCode", limit: 255
    t.text "ErrorMsg"
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "NoExport", default: false, null: false
    t.integer "Direction", limit: 2, default: 1, null: false
  end

  create_table "AccountingAPIQueueGLDetail", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "AccountingAPIQueueGLId"
    t.string "Store", limit: 3, null: false
    t.string "CNTR", limit: 20
    t.string "TransCode", limit: 255, null: false
    t.string "TransType", limit: 255
    t.money "TransAmount", precision: 19, scale: 4, default: 0.0, null: false
    t.varchar "TransMemo", limit: 255
    t.string "TransName", limit: 255
    t.string "TransClass", limit: 255
    t.string "AccountNumber", limit: 255, null: false
    t.string "DocNumber", limit: 255
    t.string "GLTransKey", limit: 255
    t.string "GLTransId", limit: 255
    t.integer "GLTransactionGroupId"
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "NoExport", default: false, null: false
  end

  create_table "AccountingAPIQueueGLDimensions", primary_key: "AccountingAPIQueueGLDimensionsId", id: :integer, force: :cascade do |t|
    t.integer "AccountingAPIQueueGLId"
    t.integer "DimensionId"
    t.string "DimensionKey", limit: 20
  end

  create_table "AccountingAPIQueueGL_2019", primary_key: "AccountingAPIQueueGLId", id: :integer, force: :cascade do |t|
    t.string "Store", limit: 3, null: false
    t.integer "ExportFormatId", null: false
    t.integer "Batch", null: false
    t.string "CNTR", limit: 20
    t.string "TransCode", limit: 255, null: false
    t.string "TransType", limit: 255
    t.datetime "TransDate", precision: nil, null: false
    t.money "TransAmount", precision: 19, scale: 4, null: false
    t.string "TransMemo", limit: 255
    t.string "TransName", limit: 255
    t.string "TransClass", limit: 255
    t.string "AccountNumber", limit: 255, null: false
    t.string "DocNumber", limit: 255
    t.datetime "DateQueued", precision: nil, null: false
    t.datetime "DateApproved", precision: nil
    t.datetime "DatePosted", precision: nil
    t.datetime "DateCancelled", precision: nil
    t.datetime "DateError", precision: nil
    t.string "ErrorCode", limit: 255
    t.ntext "ErrorMsg"
    t.integer "RetryCount", null: false
    t.string "GLTransKey", limit: 255
    t.string "GLTransId", limit: 255
    t.integer "GLTransactionGroupId"
    t.integer "CreatedBy", null: false
    t.datetime "DateCreated", precision: nil, null: false
    t.integer "ChangedBy", null: false
    t.datetime "DateChanged", precision: nil, null: false
    t.ntext "ChangeNote"
    t.boolean "NoExport", null: false
    t.integer "TransCodeId", null: false
  end

  create_table "AccountingAPIQueuePO", primary_key: "AccountingAPIQueuePOId", id: :integer, force: :cascade do |t|
    t.integer "ExportFormatId", null: false
    t.integer "PONumber", null: false
    t.integer "Sequence", null: false
    t.datetime "PODate", precision: nil, null: false
    t.integer "Batch", null: false
    t.string "Store", limit: 3, null: false
    t.string "Status", limit: 2, null: false
    t.integer "VendorNumber", null: false
    t.string "InvoiceNumber", limit: 100, null: false
    t.string "AccountsPayableAccount", limit: 255, null: false
    t.money "TotalAmount", precision: 19, scale: 4, null: false
    t.money "PurchaseAmount", precision: 19, scale: 4, null: false
    t.string "POShippingAccount", limit: 255, null: false
    t.money "ShippingCost", precision: 19, scale: 4, default: 0.0, null: false
    t.string "POTaxAccount", limit: 255, null: false
    t.money "Tax", precision: 19, scale: 4, default: 0.0, null: false
    t.string "POMiscellaneousAccount", limit: 255, null: false
    t.money "Miscellaneous", precision: 19, scale: 4, default: 0.0, null: false
    t.text "Notes"
    t.integer "CurrencyNumber"
    t.float "ExchangeRate", null: false
    t.datetime "InvoiceDate", precision: nil, default: -> { "getdate()" }, null: false
    t.string "APPurchaseOrderId", limit: 255
    t.string "APInvoiceId", limit: 255
    t.datetime "DateQueued", precision: nil, null: false
    t.datetime "DateApproved", precision: nil
    t.datetime "DatePosted", precision: nil
    t.datetime "DateCancelled", precision: nil
    t.datetime "DateError", precision: nil
    t.string "ErrorCode", limit: 255
    t.text "ErrorMsg"
    t.integer "RetryCount", default: 0, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.datetime "DateExported", precision: nil
    t.integer "Direction", limit: 2, default: 1, null: false
    t.string "ExternalId", limit: 255
    t.boolean "NoExport", default: false, null: false
  end

  create_table "AccountingAPIQueuePODetail", primary_key: "AccountingAPIQueuePODetailid", id: :integer, force: :cascade do |t|
    t.integer "AccountingAPIQueuePOid", null: false
    t.integer "ExportFormatId", null: false
    t.integer "PONumber", null: false
    t.integer "Sequence", null: false
    t.integer "LineNumber"
    t.string "AccountNumber", limit: 255, null: false
    t.money "Amount", precision: 19, scale: 4, null: false
    t.string "Reference", limit: 255
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.string "TaxCodeLink", limit: 255
    t.money "TaxAmount", precision: 19, scale: 4, default: 0.0, null: false
  end

  create_table "AccountingAPIQueuePODimensions", primary_key: "AccountingAPIQueuePODimensionsId", id: :integer, force: :cascade do |t|
    t.integer "AccountingAPIQueuePODetailId"
    t.integer "DimensionId"
    t.string "DimensionKey", limit: 20
  end

  create_table "AccountingAPIQueueTR", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "AccountsReceivableId"
    t.integer "ExportFormatId", null: false
    t.integer "Batch", null: false
    t.string "Store", limit: 3, null: false
    t.string "ContractNumber", limit: 10, null: false
    t.string "CustomerNumber", limit: 6, null: false
    t.integer "TransCodeId", null: false
    t.datetime "TransDate", precision: nil, default: -> { "getdate()" }, null: false
    t.money "TransAmount", precision: 19, scale: 4, default: 0.0, null: false
    t.money "TotalAmount", precision: 19, scale: 4, default: 0.0, null: false
    t.money "PaidAmount", precision: 19, scale: 4, default: 0.0, null: false
    t.money "RentAmount", precision: 19, scale: 4, default: 0.0, null: false
    t.money "SaleAmount", precision: 19, scale: 4, default: 0.0, null: false
    t.money "TaxAmount", precision: 19, scale: 4, default: 0.0, null: false
    t.money "DamageWaiverAmount", precision: 19, scale: 4, default: 0.0, null: false
    t.money "OtherAmount", precision: 19, scale: 4, default: 0.0, null: false
    t.string "TransMemo", limit: 255
    t.string "TransClass", limit: 255
    t.string "AccountNumber", limit: 255, null: false
    t.string "OffsetAccountNumber", limit: 255, null: false
    t.string "ExternalInvoiceId", limit: 255
    t.string "CustomerPONumber", limit: 255
    t.float "ExchangeRate", null: false
    t.string "AccountingLink", limit: 255
    t.string "Direction", limit: 1, null: false
    t.integer "GLTransactionGroupId", null: false
    t.datetime "DateQueued", precision: nil, default: -> { "getdate()" }, null: false
    t.datetime "DateApproved", precision: nil
    t.datetime "DatePosted", precision: nil
    t.datetime "DateCancelled", precision: nil
    t.datetime "DateError", precision: nil
    t.string "ErrorCode", limit: 255
    t.text "ErrorMsg"
    t.integer "RetryCount", default: 0, null: false
    t.integer "CreatedBy", default: -1, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: -1, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "NoExport", default: false, null: false
    t.string "KeyValue", limit: 255
    t.datetime "DateExported", precision: nil
    t.string "ExternalId", limit: 255
    t.string "Reference", limit: 255
    t.string "InvoiceNumber", limit: 50
  end

  create_table "AccountingAPIQueueTRDetail", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "AccountingAPIQueueTRId", null: false
    t.string "AccountNumber", limit: 255
    t.string "OffsetAccountNumber", limit: 255
    t.string "ItemNumber", limit: 255
    t.money "ItemAmount", precision: 19, scale: 4, default: 0.0, null: false
    t.string "ItemMemo", limit: 255
    t.integer "ItemQuantity", default: 0, null: false
    t.integer "LineNumber", default: 0, null: false
    t.integer "ItemCategoryId", default: 0, null: false
    t.integer "AccountingClassId"
    t.integer "LineItemTypeId", default: 1, null: false
  end

