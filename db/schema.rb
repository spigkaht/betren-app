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

ActiveRecord::Schema[7.1].define(version: 2024_09_10_231452) do
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

  create_table "AccountingAPIQueueTRDimensions", primary_key: "AccountingAPIQueueTRDimensionsId", id: :integer, force: :cascade do |t|
    t.integer "AccountingAPIQueueTRDetailId"
    t.integer "DimensionId"
    t.string "DimensionKey", limit: 20
  end

  create_table "AccountingAPIQueueVendor", primary_key: "AccountingAPIQueueVendorId", id: :integer, force: :cascade do |t|
    t.integer "AccountingAPIQueuePOId", null: false
    t.integer "ExportFormatId", null: false
    t.string "VendorNumber", limit: 255, null: false
    t.string "VendorName", limit: 255, null: false
    t.string "VendorAddress1", limit: 255
    t.string "VendorAddress2", limit: 255
    t.string "VendorCityState", limit: 255
    t.string "VendorZip", limit: 255
    t.string "VendorPhone", limit: 255
    t.string "VendorFax", limit: 255
    t.string "VendorContact1", limit: 255
    t.string "VendorContact1Phone", limit: 255
    t.string "VendorContact2Phone", limit: 255
    t.string "VendorAccountNumber", limit: 255
    t.text "VendorTerms"
    t.money "VendorMinimumOrder", precision: 19, scale: 4
    t.text "VendorNotes"
    t.integer "VendorCurrencyNumber"
    t.string "VendorCurrencyName", limit: 255
    t.integer "VendorLanguage"
    t.string "PurchasingVendorId", limit: 255
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

  create_table "AccountingClass", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Title", limit: 100
    t.string "Description", limit: 255
    t.string "AccountingLink", limit: 20
    t.boolean "Disabled", default: false, null: false
    t.index ["AccountingLink", "Title"], name: "AccountingClass_Title_AccountingLink", unique: true
  end

  create_table "AccountingCustomer", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Title", limit: 100
    t.string "Description", limit: 255
    t.string "AccountingLink", limit: 20
    t.boolean "Disabled", default: false, null: false
    t.index ["AccountingLink", "Title"], name: "AccountingClass_Title_AccountingLink", unique: true
  end

  create_table "AccountingDepartment", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Title", limit: 100
    t.string "Description", limit: 255
    t.string "AccountingLink", limit: 20
    t.boolean "Disabled", default: false, null: false
    t.index ["AccountingLink", "Title"], name: "AccountingClass_Title_AccountingLink", unique: true
  end

  create_table "AccountingEmployee", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Title", limit: 100
    t.string "Description", limit: 255
    t.string "AccountingLink", limit: 20
    t.boolean "Disabled", default: false, null: false
    t.index ["AccountingLink", "Title"], name: "AccountingClass_Title_AccountingLink", unique: true
  end

  create_table "AccountingItem", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Title", limit: 100
    t.string "Description", limit: 255
    t.string "AccountingLink", limit: 20
    t.boolean "Disabled", default: false, null: false
    t.index ["AccountingLink", "Title"], name: "AccountingClass_Title_AccountingLink", unique: true
  end

  create_table "AccountingJobsite", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Title", limit: 100
    t.string "Description", limit: 255
    t.string "AccountingLink", limit: 20
    t.boolean "Disabled", default: false, null: false
    t.index ["AccountingLink", "Title"], name: "AccountingClass_Title_AccountingLink", unique: true
  end

  create_table "AccountingLocation", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Title", limit: 100
    t.string "Description", limit: 255
    t.string "AccountingLink", limit: 20
    t.boolean "Disabled", default: false, null: false
    t.index ["AccountingLink", "Title"], name: "AccountingClass_Title_AccountingLink", unique: true
  end

  create_table "AccountingMethod", primary_key: "AccountingMethodId", id: :integer, default: nil, force: :cascade do |t|
    t.string "AccountingMethodCode", limit: 2, null: false
    t.string "Description", limit: 255, null: false
    t.boolean "Inactive", default: false, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
  end

  create_table "AccountingProject", primary_key: "AccountingProjectId", id: :integer, force: :cascade do |t|
    t.string "Title", limit: 100
    t.string "Description", limit: 255
    t.string "AccountingLink", limit: 20
    t.boolean "Disabled", default: false, null: false
    t.datetime "StartDate", precision: nil
    t.datetime "EndDate", precision: nil
    t.index ["AccountingLink", "Title"], name: "AccountingClass_Title_AccountingLink", unique: true
  end

  create_table "AccountingSalesman", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Title", limit: 100
    t.string "Description", limit: 255
    t.string "AccountingLink", limit: 20
    t.boolean "Disabled", default: false, null: false
    t.index ["AccountingLink", "Title"], name: "AccountingClass_Title_AccountingLink", unique: true
  end

  create_table "AccountingTransType", primary_key: "AccountingTransTypeId", id: :integer, default: nil, force: :cascade do |t|
    t.string "TransCode", limit: 255, null: false
    t.string "Description", limit: 255, null: false
    t.boolean "Inactive", default: false, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
  end

  create_table "AccountingTransaction", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Title", limit: 100
    t.string "Description", limit: 255
    t.string "AccountingLink", limit: 20
    t.boolean "Disabled", default: false, null: false
  end

  create_table "AccountingVendor", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Title", limit: 100
    t.string "Description", limit: 255
    t.string "AccountingLink", limit: 20
    t.boolean "Disabled", default: false, null: false
    t.index ["AccountingLink", "Title"], name: "AccountingClass_Title_AccountingLink", unique: true
  end

  create_table "AccountsReceivable", primary_key: "AccountsReceivableId", id: :integer, force: :cascade do |t|
    t.integer "Batch", null: false
    t.string "Store", limit: 3, null: false
    t.datetime "TransactionDate", precision: nil, null: false
    t.string "AccountingMethodCode", limit: 2, null: false
    t.string "IncomeTypeCode", limit: 20
    t.string "PaymentTypeCode", limit: 1, null: false
    t.string "CNTR", limit: 20, null: false
    t.money "ChangeAmount", precision: 19, scale: 4, default: 0.0, null: false
    t.integer "GLTransactionGroupId", null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
  end

  create_table "AccountsReceivableAssigned", primary_key: "ARNumber", id: :integer, force: :cascade do |t|
    t.string "CNUM", limit: 6, null: false
    t.integer "Jobsite", null: false
    t.integer "Salesman", null: false
    t.integer "ARAssigned", null: false
    t.datetime "LastCall", precision: nil, null: false
    t.datetime "NextCall", precision: nil, null: false
    t.integer "Frequency", null: false
    t.integer "Priority", limit: 2, null: false
    t.integer "ARStatus", null: false
    t.integer "Level", null: false
    t.string "ARComment", limit: 255
  end

  create_table "AccountsReceivable_BKUP", primary_key: "AccountsReceivableId", id: :integer, force: :cascade do |t|
    t.integer "Batch", null: false
    t.string "Store", limit: 3, null: false
    t.datetime "TransactionDate", precision: nil, null: false
    t.string "AccountingMethodCode", limit: 2, null: false
    t.string "IncomeTypeCode", limit: 20
    t.string "PaymentTypeCode", limit: 1, null: false
    t.string "CNTR", limit: 20, null: false
    t.money "ChangeAmount", precision: 19, scale: 4, null: false
    t.integer "GLTransactionGroupId", null: false
    t.integer "CreatedBy", null: false
    t.datetime "DateCreated", precision: nil, null: false
    t.integer "ChangedBy", null: false
    t.datetime "DateChanged", precision: nil, null: false
    t.text "ChangeNote"
  end

  create_table "Attachments", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Link", limit: 50, null: false
    t.integer "LinkType", null: false
    t.string "Description", limit: 255, null: false
    t.string "Location", limit: 255, null: false
    t.datetime "FileDate", precision: nil, null: false
    t.boolean "Inactive", null: false
    t.boolean "HideOnWebsite", null: false
    t.string "Group", limit: 255
    t.integer "SortOrder", default: 0
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.integer "PasswordLevel", default: 6
  end

  create_table "AttachmentsLinkType", primary_key: "LinkType", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
  end

  create_table "Authorized", primary_key: "Number", id: :integer, force: :cascade do |t|
    t.string "CNUM", limit: 6
    t.string "Name", limit: 50
    t.string "DlNo", limit: 30
    t.string "EmployeeId", limit: 30
    t.datetime "ActiveDate", precision: nil
    t.datetime "InactiveDate", precision: nil
    t.boolean "ForceVerify", default: false
    t.string "EmployeeCNum", limit: 6
    t.string "Department", limit: 50
    t.string "Phone", limit: 50
    t.string "Mobile", limit: 50
    t.string "Fax", limit: 50
    t.string "Email", limit: 254, default: "", null: false
    t.string "AuthorizedNotes", limit: 255
    t.boolean "NoEmail"
    t.boolean "OptIn"
    t.string "Title", limit: 255
    t.datetime "OptInDate", precision: nil
    t.boolean "APILink", default: false, null: false
    t.integer "CreatedBy"
    t.datetime "DateCreated", precision: nil
    t.integer "ChangedBy"
    t.datetime "DateChanged", precision: nil
    t.text "ChangeNote"
    t.ss_timestamp "Version", null: false
    t.index ["CNUM"], name: "Authorized$CNUM"
    t.index ["DlNo"], name: "Authorized$DlNo"
    t.index ["Number"], name: "Authorized$Number", unique: true
    t.index ["Version"], name: "IDX_Authorized_Version"
  end

  create_table "AutoContinuationTemplates", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "Name", limit: 50, null: false
    t.string "Description", limit: 255, null: false
    t.integer "ContinueTypeEnum", null: false
    t.integer "ContinueTypeDueByDaysOut", null: false
    t.integer "ContinueTypeOpenedForDaysOut", null: false
    t.integer "BillThroughTypeEnum", null: false
    t.integer "BillThroughDaysOut", null: false
    t.integer "BillContractsThroughEnum", null: false
    t.boolean "UpdateMeterReading", null: false
    t.boolean "PayCreditCards", null: false
    t.string "IncludedStores", limit: 50, null: false
    t.boolean "IncludeAccountCustomers", null: false
    t.boolean "IncludeCashCustomers", null: false
    t.string "CategoriesToReport", limit: 255, null: false
    t.string "IncludedOperations", limit: 255, null: false
    t.string "ExcludedOperations", limit: 255, null: false
    t.string "PrinterName", limit: 50, null: false
    t.integer "OpenContractCopies", null: false
    t.integer "ClosedContractCopies", null: false
    t.boolean "UpdateContractInformation", null: false
    t.string "Note", limit: 50
    t.float "RunOrder", default: 0.0, null: false
    t.boolean "ScheduleEnabled", default: false, null: false
    t.datetime "LastRunTime", precision: nil
    t.boolean "LastRunResult", default: true, null: false
    t.boolean "LastRunHadSkips", default: false, null: false
    t.integer "DayOfEnum"
    t.string "DayOfEnumValues", limit: 50
    t.boolean "IncludeMultipleOutDates", default: false, null: false
    t.integer "IncreaseSpecialRate", default: 0, null: false
    t.integer "DecreaseSpecialRates", default: 0, null: false
    t.boolean "CheckForMonthlyRateDate", default: false, null: false
  end

  create_table "BI_AccessTypes", primary_key: "ID", id: { type: :integer, limit: 1 }, force: :cascade do |t|
    t.string "TypeName", limit: 16, null: false
    t.string "TypeDescription", limit: 50
    t.integer "CreatedBy", null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "BI_ControlTypes", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "Description", limit: 100
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.ntext "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "BI_DashboardTypeGroups", primary_key: ["DashboardTypeId", "DataGroupId"], force: :cascade do |t|
    t.integer "DashboardTypeId", null: false
    t.integer "DataGroupId", limit: 2, null: false
  end

  create_table "BI_DashboardTypes", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "DashboardTypeName", limit: 50, null: false
    t.string "DashboardTypeDescription", limit: 100
    t.boolean "NotOverridable", default: false, null: false
    t.integer "MaxNumberOfWidgets", limit: 1, default: 10, null: false
    t.string "StartDateFilter", limit: 100
    t.string "EndDateFilter", limit: 100
    t.string "StoreFilter", limit: 100
    t.integer "SecurityListId"
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.ntext "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "BI_DashboardUserPreferences", primary_key: ["DashboardId", "OperatorNo"], force: :cascade do |t|
    t.integer "DashboardId", null: false
    t.integer "OperatorNo", null: false
    t.integer "CreatedBy", null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.boolean "Inactive", null: false
    t.integer "DashboardOrder", limit: 2
  end

  create_table "BI_Dashboards", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "UserProfileId", null: false
    t.integer "DashboardTypeId", null: false
    t.integer "OperatorId"
    t.string "DashboardTitle", limit: 75, null: false
    t.integer "DashboardOrder", limit: 1, null: false
    t.string "StartDateFilter", limit: 100
    t.string "EndDateFilter", limit: 100
    t.string "StoreFilter", limit: 100
    t.boolean "OverrideChildSettings", default: false, null: false
    t.integer "CreatedBy", null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "BI_DataGroups", primary_key: "ID", id: { type: :integer, limit: 2 }, force: :cascade do |t|
    t.integer "SecurityListId"
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.ntext "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "BI_FilterDefinitions", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "Title", limit: 100
    t.integer "ReferenceId", null: false
    t.integer "ReferenceType", null: false
    t.integer "ControlTypeId", null: false
    t.string "DefaultValue", limit: 100
    t.string "OptionsKey", limit: 100
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.ntext "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "BI_FilterValues", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "FilterDefinitionId", null: false
    t.integer "ReferenceId", null: false
    t.integer "OperatorId", null: false
    t.text "ControlValue"
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.ntext "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "BI_FleetUtilizationCache", id: false, force: :cascade do |t|
    t.char "Store", limit: 3
    t.varchar "Period", limit: 6
    t.date "StartDate"
    t.date "EndDate"
    t.float "Revenue"
    t.float "HoursRented"
    t.float "Quantity"
    t.float "QtyOwned"
    t.float "Oec"
    t.float "QtyHours"
    t.datetime "CreatedDate", precision: nil, default: -> { "getdate()" }, null: false
  end

  create_table "BI_GetOpenItemsCached", id: false, force: :cascade do |t|
    t.integer "Open Maintenance (IMO)", null: false
    t.integer "Open Service (ISO)", null: false
    t.integer "Open Repairs (IRO)", null: false
    t.integer "Open Work Orders (WO)", null: false
    t.char "Store", limit: 3, null: false
    t.datetime "CreatedDate", precision: nil, default: -> { "getdate()" }, null: false
  end

  create_table "BI_SharedDashboardGroups", primary_key: ["DashboardId", "GroupNo"], force: :cascade do |t|
    t.integer "DashboardId", null: false
    t.integer "GroupNo", null: false
    t.boolean "IsAlwaysShown", default: false, null: false
    t.integer "AccessTypeId", limit: 1, null: false
    t.datetime "AccessExpiryDate", precision: nil
  end

  create_table "BI_SharedDashboardOperators", primary_key: ["DashboardId", "OperatorNo"], force: :cascade do |t|
    t.integer "DashboardId", null: false
    t.integer "OperatorNo", null: false
    t.integer "AccessTypeId", limit: 1, null: false
    t.datetime "AccessExpiryDate", precision: nil
    t.boolean "IsDisplayed", default: false, null: false
  end

  create_table "BI_UserProfile", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "ProfileName", limit: 40
    t.integer "OperatorId"
    t.string "Currency", limit: 10, default: "USD", null: false
    t.string "DefaultStore", limit: 40
    t.integer "MaxNumberOfDashboards", default: 5
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.ntext "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "BI_WidgetSizes", primary_key: "ID", id: { type: :integer, limit: 2 }, force: :cascade do |t|
    t.integer "WidgetTypeId", limit: 2, null: false
    t.integer "WidgetWidth", limit: 1, null: false
    t.integer "WidgetHeight", limit: 1, null: false
    t.boolean "TypeDefault", null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.ntext "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "BI_WidgetTemplates", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "WidgetTypeId", limit: 2, null: false
    t.integer "WidgetViewId", limit: 2, null: false
    t.integer "DataGroupId", limit: 2, null: false
    t.boolean "NotOverridable", default: false, null: false
    t.text "SelectedFields"
    t.text "SelectClause", null: false
    t.text "FilterClause"
    t.string "StoreFilterField", limit: 100
    t.string "DateFilterField", limit: 100
    t.string "SalesRepFilterField", limit: 100
    t.string "DateGrouping", limit: 10
    t.text "GroupByClause"
    t.text "OrderByClause"
    t.float "LowGoal"
    t.float "MediumGoal"
    t.float "HighGoal"
    t.string "WidgetAggrMethod", limit: 8
    t.string "WidgetSortOrder", limit: 4
    t.integer "SecurityListId"
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.ntext "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "BI_WidgetTypes", primary_key: "ID", id: { type: :integer, limit: 2 }, force: :cascade do |t|
    t.string "TypeName", limit: 30, null: false
    t.string "SubType", limit: 20
    t.string "TypeSetting1", limit: 10
    t.string "TypeDescription", limit: 100
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.ntext "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "BI_WidgetViews", primary_key: "ID", id: { type: :integer, limit: 2 }, force: :cascade do |t|
    t.integer "DataGroupId", limit: 2, null: false
    t.string "ViewName", limit: 50, null: false
    t.text "QueryFromClause", null: false
    t.string "ViewDescription", limit: 100
    t.boolean "IsPublic", default: false, null: false
    t.integer "SecurityListId"
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.ntext "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "BI_Widgets", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "DashboardId", null: false
    t.integer "WidgetTemplateId", null: false
    t.integer "WidgetTypeId", limit: 2, null: false
    t.string "WidgetTitle", limit: 130
    t.integer "WidgetOrder", limit: 1
    t.string "ChartDimensionAxisType", limit: 16
    t.float "LowGoal"
    t.float "MediumGoal"
    t.float "HighGoal"
    t.string "WidgetSortOrder", limit: 4
    t.integer "CreatedBy", null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.integer "WidgetWidth", limit: 1, default: 2, null: false
    t.integer "WidgetHeight", limit: 1, default: 2, null: false
  end

  create_table "BRAccessories", id: false, force: :cascade do |t|
    t.uuid "ID", default: -> { "newid()" }
    t.string "Num", limit: 50
    t.string "ItemKey", limit: 50
    t.string "MiscName", limit: 50
    t.string "Header", limit: 50
    t.string "ItemNum", limit: 50
  end

  create_table "BRContractsOpen", id: false, force: :cascade do |t|
    t.uuid "BRID", default: -> { "newid()" }
    t.string "ItemName", limit: 150
    t.string "PartNum", limit: 50
    t.string "CAT", limit: 50
    t.float "ItemQty"
    t.real "MeterOut"
    t.string "FuelRead", limit: 10
    t.string "ContractNum", limit: 10
    t.string "CustName", limit: 150
    t.float "LineNum"
  end

  create_table "BRContractsOpen3", id: false, force: :cascade do |t|
    t.uuid "BRID", default: -> { "newid()" }
    t.string "ItemName", limit: 150
    t.string "PartNum", limit: 50
    t.float "ItemQty"
    t.real "MeterOut"
    t.string "FuelRead", limit: 10
    t.string "ContractNum", limit: 10
    t.string "CustName", limit: 150
    t.float "LineNum"
  end

  create_table "BREquipmentList", id: false, force: :cascade do |t|
    t.uuid "ID", default: -> { "newid()" }
    t.string "PartNumber", limit: 100
    t.string "Header", limit: 100
    t.string "Name", limit: 100
    t.string "Num", limit: 100
    t.string "HomeStore", limit: 100
    t.string "Barcode", limit: 100
    t.string "HourMeter", limit: 100
    t.string "Style", limit: 100
    t.string "Category", limit: 50
    t.nchar "Fuel", limit: 50
  end

  create_table "BRFuelCharged", primary_key: "BRID", id: :integer, force: :cascade do |t|
    t.string "Store", limit: 10
    t.string "ContractNum", limit: 10
    t.string "Status", limit: 5
    t.string "Date", limit: 50
    t.string "ItemNum", limit: 10
    t.string "ItemQty", limit: 10
  end

  create_table "BRHeaders", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "Header", limit: 50
    t.string "Inactive", limit: 50
    t.string "BulkItem", limit: 50
    t.string "Category", limit: 50
    t.string "TaskNum", limit: 10
    t.string "TaskName", limit: 50
    t.string "TaskDesc", limit: 100
  end

  create_table "BRIMOOpen", id: false, force: :cascade do |t|
    t.string "ContNum", limit: 10
    t.string "Date", limit: 50
    t.string "Status", limit: 5
    t.string "CustNum", limit: 10
    t.string "JobName", limit: 100
    t.string "Store", limit: 5
    t.string "ItemNum", limit: 10
    t.string "ItemQty", limit: 5
    t.string "ItemHeader", limit: 20
    t.string "ItemName", limit: 100
    t.nchar "PartNumber", limit: 20
  end

  create_table "BRRingcentralReport", id: false, force: :cascade do |t|
    t.text "Contact_ID"
    t.text "Master_Contact_ID"
    t.text "Contact_Code"
    t.text "Media_Name"
    t.text "Contact_Name"
    t.text "ANI_DIALNUM"
    t.text "Skill_No"
    t.text "Skill_Name"
    t.text "Campaign_No"
    t.text "Campaign_Name"
    t.text "Agent_No"
    t.text "Agent_Name"
    t.text "Team_No"
    t.text "Team_Name"
    t.text "SLA"
    t.date "Start_Date"
    t.text "start_time"
    t.text "PreQueue"
    t.text "InQueue"
    t.text "Agent_Time"
    t.text "PostQueue"
    t.text "ACW_Time"
    t.text "Total_Time_Plus_Disposition"
    t.text "Abandon_Time"
    t.text "Routing_Time"
    t.text "Abandon"
    t.text "Callback_Time"
    t.text "Logged"
    t.text "Hold_Time"
    t.text "Disp_Code"
    t.text "Disp_Name"
    t.text "Disp_Comments"
    t.text "Tags"
  end

  create_table "BRRunupList", primary_key: ["Id", "ItemNo"], force: :cascade do |t|
    t.uuid "Id", null: false
    t.integer "ItemNo", null: false
    t.integer "RowId"
    t.integer "FormVersion"
    t.decimal "Latitude", precision: 28, scale: 6
    t.decimal "Longitude", precision: 28, scale: 6
    t.datetime "StartTime", precision: nil
    t.datetime "ReceivedTime", precision: nil
    t.datetime "CompleteTime", precision: nil
    t.text "UserFirstName"
    t.text "UserLastName"
    t.text "datasource"
    t.text "plantnumber"
    t.text "itemname"
    t.text "fuelrequired"
    t.text "step1"
    t.integer "_identity", null: false
    t.ss_timestamp "_rowversion", null: false
    t.datetime "_lastupdated", precision: nil, null: false
    t.boolean "_deleted", null: false
    t.text "tablezz1"
    t.text "itemnum"
    t.text "brid"
    t.text "headerselection"
    t.text "header"
    t.text "tasknametemp"
    t.text "runuptasks"
    t.text "itemtaskszz1"
    t.text "tasknum"
    t.text "taskname"
    t.text "image"
    t.text "link"
    t.text "taskremove"
    t.text "deleteselect"
    t.text "itemheader"
    t.text "tasknumselect"
    t.text "nomatch"
  end

  create_table "BRRunupTasks", primary_key: ["Id", "ItemNo"], force: :cascade do |t|
    t.uuid "Id", null: false
    t.integer "ItemNo", null: false
    t.integer "RowId"
    t.integer "FormVersion"
    t.decimal "Latitude", precision: 28, scale: 6
    t.decimal "Longitude", precision: 28, scale: 6
    t.datetime "StartTime", precision: nil
    t.datetime "ReceivedTime", precision: nil
    t.datetime "CompleteTime", precision: nil
    t.text "UserFirstName"
    t.text "UserLastName"
    t.text "headerselection"
    t.text "nomatch"
    t.text "header"
    t.text "tasknametemp"
    t.text "runuptasks"
    t.text "itemtaskszz1"
    t.text "itemheader"
    t.text "tasknum"
    t.text "tasknumselect"
    t.text "taskname"
    t.string "image"
    t.text "link"
    t.text "taskremove"
    t.text "deleteselect"
    t.integer "_identity", null: false
    t.ss_timestamp "_rowversion", null: false
    t.datetime "_lastupdated", precision: nil, null: false
    t.boolean "_deleted", null: false
    t.text "passwordentry"
    t.text "headertemp"
    t.text "positionnum"
    t.text "tasknamelong"
    t.text "itemtableheader"
    t.text "itemheadertemp"
  end

  create_table "BRTraining", id: false, force: :cascade do |t|
    t.string "OpNum", limit: 50
    t.string "OpID", limit: 50
    t.string "OpName", limit: 100
    t.string "Inactive", limit: 50
    t.string "CertID", limit: 50
    t.string "CertType", limit: 50
    t.string "CertName", limit: 100
  end

  create_table "BRXeroAccounts", id: false, force: :cascade do |t|
    t.text "AccountID"
    t.text "Code"
    t.text "Name"
    t.text "Status"
    t.text "Type"
    t.text "TaxType"
    t.text "Description"
    t.text "Class"
    t.text "SystemAccount"
    t.boolean "EnablePaymentsToAccount"
    t.boolean "ShowInExpenseClaims"
    t.text "BankAccountNumber"
    t.text "BankAccountType"
    t.text "CurrencyCode"
    t.text "ReportingCode"
    t.text "ReportingCodeName"
    t.boolean "HasAttachments"
    t.datetime "UpdatedDateUTC", precision: nil
    t.boolean "AddToWatchlist"
  end

  create_table "BRXeroData", id: false, force: :cascade do |t|
    t.text "DataFileID", default: -> { "newid()" }
    t.text "DataFileName"
    t.text "DataFileCode"
    t.datetime "FromDate", precision: nil
    t.datetime "ToDate", precision: nil
    t.text "Period"
    t.boolean "PaymentsOnly"
    t.boolean "StandardLayout"
    t.text "LineType"
    t.text "AccountID"
    t.text "AccountName"
    t.text "AccountLineType"
    t.decimal "Amount", precision: 18, scale: 2
  end

  create_table "BankDeposits", primary_key: "DepositSlip", id: :integer, force: :cascade do |t|
    t.string "Store", limit: 3
    t.integer "Batch"
    t.datetime "Date", precision: nil
    t.integer "Opr"
    t.money "Checks", precision: 19, scale: 4, default: 0.0
    t.money "Cash", precision: 19, scale: 4, default: 0.0
    t.money "Coins", precision: 19, scale: 4, default: 0.0
    t.money "CreditCards", precision: 19, scale: 4, default: 0.0
    t.money "DebitCards", precision: 19, scale: 4, default: 0.0
    t.money "TotalDeposit", precision: 19, scale: 4, default: 0.0
    t.string "Note", limit: 255
    t.integer "GLTransactionGroupId"
    t.string "AccountingLink", limit: 255
    t.index ["Batch"], name: "BankDeposits$Batch"
    t.index ["Opr"], name: "BankDeposits$Opr"
    t.index ["Store"], name: "BankDeposits$Store"
  end

  create_table "BulkSerializationMethod", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.integer "ListOrder"
  end

  create_table "BulkSerializationMethod_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "BulkSerializationMethodId", null: false
    t.string "Description", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["BulkSerializationMethodId", "Languagecode"], name: "BulkSerializationMethod_Tr_BulkSerializationMethodId", unique: true
  end

  create_table "CONTRACT_TR_BAK", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.string "Store", limit: 3, null: false
    t.text "Contract"
    t.text "NoDamageWaiver"
    t.text "Instruction"
    t.text "LegalEase"
    t.text "DamageWaiver"
    t.text "POMessage"
    t.text "CreditCardAuthorization"
    t.text "MarketingPage"
    t.text "TimeClockSigMessage"
    t.text "AssetSale"
    t.text "QuoteLegal"
    t.text "WorkOrderLegal"
    t.text "ReservationLegal"
    t.text "DeliveryMessage"
    t.text "PickupMessage"
    t.integer "CreatedBy", null: false
    t.datetime "DateCreated", precision: nil, null: false
    t.integer "ChangedBy", null: false
    t.datetime "DateChanged", precision: nil, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", null: false
  end

  create_table "CRMTerritories", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "Name", limit: 50
    t.string "Description", limit: 1000
    t.boolean "Inactive", default: false, null: false
    t.ss_timestamp "Version", null: false
    t.index ["Version"], name: "IDX_CRMTerritories_Version"
  end

  create_table "CRMTouchpoints", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Link", limit: 10, null: false
    t.integer "LinkType", null: false
    t.integer "OpNoAssigned", null: false
    t.datetime "LastCall", precision: nil, null: false
    t.datetime "NextCall", precision: nil, null: false
    t.integer "Frequency", null: false
    t.integer "Priority", limit: 2, null: false
    t.string "Comment", limit: 255
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.boolean "Complete", default: false, null: false
  end

  create_table "CalendarSpecial", primary_key: ["Store", "ABN_Date"], force: :cascade do |t|
    t.string "Store", limit: 3, null: false
    t.datetime "ABN_Date", precision: nil, null: false
    t.boolean "ABN_Closed", default: false
    t.datetime "ABN_OPEN", precision: nil
    t.datetime "ABN_DUE", precision: nil
    t.datetime "ABN_CLOSE", precision: nil
    t.datetime "ABN_ROLL", precision: nil
    t.string "ABN_FLAGS", limit: 4
    t.index ["ABN_Date"], name: "CalendarSpecial$ABN_Date"
    t.index ["Store"], name: "CalendarSpecial$Store"
  end

  create_table "CalendarWeek", primary_key: "Store", id: { type: :string, limit: 3 }, force: :cascade do |t|
    t.boolean "Closed0", default: false
    t.boolean "Closed1", default: false
    t.boolean "Closed2", default: false
    t.boolean "Closed3", default: false
    t.boolean "Closed4", default: false
    t.boolean "Closed5", default: false
    t.boolean "Closed6", default: false
    t.datetime "DAY_OPEN0", precision: nil
    t.datetime "DAY_OPEN1", precision: nil
    t.datetime "DAY_OPEN2", precision: nil
    t.datetime "DAY_OPEN3", precision: nil
    t.datetime "DAY_OPEN4", precision: nil
    t.datetime "DAY_OPEN5", precision: nil
    t.datetime "DAY_OPEN6", precision: nil
    t.datetime "DAY_DUE0", precision: nil
    t.datetime "DAY_DUE1", precision: nil
    t.datetime "DAY_DUE2", precision: nil
    t.datetime "DAY_DUE3", precision: nil
    t.datetime "DAY_DUE4", precision: nil
    t.datetime "DAY_DUE5", precision: nil
    t.datetime "DAY_DUE6", precision: nil
    t.datetime "DAY_CLOSE0", precision: nil
    t.datetime "DAY_CLOSE1", precision: nil
    t.datetime "DAY_CLOSE2", precision: nil
    t.datetime "DAY_CLOSE3", precision: nil
    t.datetime "DAY_CLOSE4", precision: nil
    t.datetime "DAY_CLOSE5", precision: nil
    t.datetime "DAY_CLOSE6", precision: nil
    t.datetime "DAY_ROLL0", precision: nil
    t.datetime "DAY_ROLL1", precision: nil
    t.datetime "DAY_ROLL2", precision: nil
    t.datetime "DAY_ROLL3", precision: nil
    t.datetime "DAY_ROLL4", precision: nil
    t.datetime "DAY_ROLL5", precision: nil
    t.datetime "DAY_ROLL6", precision: nil
    t.integer "EndWeek", default: 0
    t.index ["Store"], name: "CalendarWeek$Store"
  end

  create_table "CallLog", primary_key: "Number", id: :integer, force: :cascade do |t|
    t.datetime "Date", precision: nil
    t.string "CNUM", limit: 6
    t.string "CNTR", limit: 10
    t.integer "Opr"
    t.text "Notes"
    t.boolean "Acknowledge", default: false
    t.integer "Type"
    t.integer "CallDuration", limit: 2
    t.ss_timestamp "Version", null: false
    t.integer "PONumber", default: 0, null: false
    t.integer "VendorNumber", default: 0, null: false
    t.string "Contact", limit: 255
    t.integer "JobsiteNumber", default: 0, null: false
    t.index ["CNTR"], name: "CallLog$CNTR"
    t.index ["CNUM"], name: "CallLog$CNUM"
    t.index ["Type"], name: "CallLog$Type"
    t.index ["Version"], name: "IDX_CallLog_Version"
  end

  create_table "CallLogType", primary_key: "TypeNumber", id: :integer, force: :cascade do |t|
    t.string "TypeName", limit: 255
    t.boolean "Inactive", default: false
  end

  create_table "CallLogType_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "LanguageCode", limit: 10, null: false
    t.boolean "Inactive", default: false, null: false
    t.integer "CreatedBy", default: -1, null: false
    t.integer "ChangedBy", default: -1, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.string "TypeName", limit: 255
    t.integer "TypeNumber"
    t.string "ChangeNote"
  end

  create_table "CashDrawer", primary_key: "CashDrawerId", id: :integer, force: :cascade do |t|
    t.integer "Batch", null: false
    t.string "Store", limit: 3, null: false
    t.datetime "TransactionDate", precision: nil, null: false
    t.string "AccountingMethodCode", limit: 2, null: false
    t.string "PaymentMethodCode", limit: 2
    t.string "PaymentTypeCode", limit: 1, null: false
    t.string "CNTR", limit: 20, null: false
    t.money "ChangeAmount", precision: 19, scale: 4, default: 0.0, null: false
    t.boolean "Drawer", default: false, null: false
    t.integer "DepositSlip"
    t.integer "GLTransactionGroupId", null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.integer "PaymentId", default: 0, null: false
  end

  create_table "CashDrawer_BAK", primary_key: "CashDrawerId", id: :integer, force: :cascade do |t|
    t.integer "Batch", null: false
    t.string "Store", limit: 3, null: false
    t.datetime "TransactionDate", precision: nil, null: false
    t.string "AccountingMethodCode", limit: 2, null: false
    t.string "PaymentTypeCode", limit: 1, null: false
    t.string "CNTR", limit: 20, null: false
    t.money "ChangeAmount", precision: 19, scale: 4, null: false
    t.boolean "Drawer", null: false
    t.integer "DepositSlip"
    t.integer "GLTransactionGroupId", null: false
    t.integer "CreatedBy", null: false
    t.datetime "DateCreated", precision: nil, null: false
    t.integer "ChangedBy", null: false
    t.datetime "DateChanged", precision: nil, null: false
    t.ntext "ChangeNote"
  end

  create_table "CategoryIncome", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "Batch"
    t.string "Store", limit: 3
    t.datetime "Date", precision: nil
    t.integer "Category"
    t.money "Rent", precision: 19, scale: 4
    t.money "Sale", precision: 19, scale: 4
    t.integer "GLIncome", limit: 2
    t.money "NonDiscountedRentAmount", precision: 19, scale: 4, default: 0.0, null: false
    t.money "NonDiscountedSaleAmount", precision: 19, scale: 4, default: 0.0, null: false
    t.index ["Batch"], name: "CategoryIncome$Batch"
  end

  create_table "CategoryIncomeDetail", primary_key: "CategoryIncomeDetailId", id: :integer, force: :cascade do |t|
    t.integer "Batch", null: false
    t.string "TransactionStore", limit: 3, null: false
    t.string "ItemStore", limit: 3
    t.string "ItemNumber", limit: 12
    t.integer "TaxCode"
    t.datetime "TransactionDate", precision: nil, null: false
    t.integer "Category"
    t.string "AccountingMethodCode", limit: 2, null: false
    t.string "IncomeTypeCode", limit: 20, null: false
    t.string "CNTR", limit: 20, null: false
    t.money "IncomeAmount", precision: 19, scale: 4, default: 0.0, null: false
    t.integer "GLIncomeIndex", default: 0, null: false
    t.integer "GLTransactionGroupId", null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.money "NonDiscountedIncomeAmount", precision: 19, scale: 4, default: 0.0, null: false
  end

  create_table "CategoryIncomeDetail_BAK", primary_key: "CategoryIncomeDetailId", id: :integer, force: :cascade do |t|
    t.integer "Batch", null: false
    t.string "TransactionStore", limit: 3, null: false
    t.string "ItemStore", limit: 3
    t.string "ItemNumber", limit: 12
    t.datetime "TransactionDate", precision: nil, null: false
    t.integer "Category"
    t.string "AccountingMethodCode", limit: 2, null: false
    t.string "IncomeTypeCode", limit: 1, null: false
    t.string "CNTR", limit: 20, null: false
    t.money "IncomeAmount", precision: 19, scale: 4, null: false
    t.integer "GLIncomeIndex", null: false
    t.integer "GLTransactionGroupId", null: false
    t.integer "CreatedBy", null: false
    t.datetime "DateCreated", precision: nil, null: false
    t.integer "ChangedBy", null: false
    t.datetime "DateChanged", precision: nil, null: false
    t.ntext "ChangeNote"
    t.integer "TaxCode"
  end

  create_table "CellProvider", primary_key: "CellProvider", id: :integer, force: :cascade do |t|
    t.string "Description", limit: 255
    t.string "EmailExtension", limit: 255
    t.boolean "Inactive", default: false
  end

  create_table "CertificationDetail", primary_key: "CertificationId", id: :integer, force: :cascade do |t|
    t.integer "CertificationTypeId", null: false
    t.integer "OpNo"
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "CreatedDate", precision: nil, default: -> { "getdate()" }, null: false
    t.datetime "StartDate", precision: nil, default: -> { "getdate()" }, null: false
    t.datetime "ExpireDate", precision: nil, default: -> { "getdate()" }, null: false
    t.money "Cost", precision: 19, scale: 4, default: 0.0
    t.string "CertificationLink", limit: 255
    t.boolean "Inactive", default: false, null: false
    t.string "Comment", limit: 255
    t.string "ItemNumber", limit: 6
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.index ["CertificationTypeId"], name: "CertificationDetail_CertificationTypeId"
    t.index ["ItemNumber"], name: "CertificationDetail_ItemNumber"
    t.index ["OpNo"], name: "CertificationDetail_OpNo"
  end

  create_table "CertificationDetailBackup_2016", primary_key: "CertificationId", id: :integer, force: :cascade do |t|
    t.integer "CertificationTypeId", null: false
    t.integer "OpNo", null: false
    t.integer "CreatedBy", null: false
    t.datetime "CreatedDate", precision: nil, null: false
    t.datetime "StartDate", precision: nil, null: false
    t.datetime "ExpireDate", precision: nil, null: false
    t.money "Cost", precision: 19, scale: 4, null: false
    t.string "CertificationLink", limit: 255
    t.boolean "Inactive", null: false
    t.string "Comment", limit: 255
  end

  create_table "CertificationType", primary_key: "CertificationTypeId", id: :integer, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.string "CertificationProvider", limit: 255
    t.string "WebLink", limit: 255
    t.integer "ExpirationMonths", null: false
    t.money "Cost", precision: 19, scale: 4, null: false
    t.string "Comment", limit: 255
    t.boolean "Inactive", default: false, null: false
  end

  create_table "CertificationType_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "CertificationTypeId", null: false
    t.string "Description", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "CheckCardFile", primary_key: "Number", id: :integer, force: :cascade do |t|
    t.integer "Batch", default: 0
    t.string "Store", limit: 3
    t.datetime "Date", precision: nil
    t.boolean "Drawer", default: false
    t.string "Type", limit: 1
    t.string "Meth", limit: 1
    t.string "CNTR", limit: 10
    t.string "Name", limit: 30
    t.string "RefNo", limit: 30
    t.money "Amount", precision: 19, scale: 4, default: 0.0
    t.string "Auth", limit: 15
    t.boolean "Depst", default: false
    t.integer "DepositSlip"
    t.integer "GLTransactionGroupId", default: 0
    t.index ["Batch"], name: "CheckCardFile$Batch"
    t.index ["CNTR"], name: "CheckCardFile$CheckCardFileCNTR"
    t.index ["DepositSlip"], name: "CheckCardFile$DepositSlip"
    t.index ["Number"], name: "CheckCardFile$Number"
    t.index ["Store"], name: "CheckCardFile$Store"
  end

  create_table "ColumnOrder", primary_key: ["Store", "Operator", "Form", "TabName"], force: :cascade do |t|
    t.string "Store", limit: 3, null: false
    t.integer "Operator", null: false
    t.string "Form", limit: 50, null: false
    t.string "TabName", limit: 50, null: false
    t.integer "Columns", limit: 2
    t.integer "SortField", limit: 2
    t.string "ColumnOrder", limit: 255
    t.string "ColumnWidth", limit: 255
    t.string "ColumnWidth2", limit: 255
    t.integer "CheckBoxes", limit: 2
    t.index ["Operator"], name: "ColumnOrder$Operator"
    t.index ["Store"], name: "ColumnOrder$Store"
  end

  create_table "CommParams", primary_key: "Store", id: { type: :string, limit: 3 }, force: :cascade do |t|
    t.boolean "EOM", default: false
    t.datetime "Date", precision: nil
  end

  create_table "Commission", primary_key: "Number", id: :integer, force: :cascade do |t|
    t.datetime "CreateDate", precision: nil
    t.string "ImportType", limit: 8
    t.integer "Batch"
    t.datetime "PostedDate", precision: nil
    t.string "Store", limit: 3
    t.string "CUSN", limit: 6
    t.string "CNTR", limit: 10
    t.integer "Salesman", default: 0
    t.integer "CustSalesman", default: 0
    t.integer "CustCommLvl", default: 0
    t.integer "CatCommLvl", default: 0
    t.string "TXTY", limit: 2
    t.money "Rent", precision: 19, scale: 4
    t.money "Sale", precision: 19, scale: 4
    t.money "Asset", precision: 19, scale: 4
    t.money "DmgWvr", precision: 19, scale: 4
    t.money "IP", precision: 19, scale: 4
    t.money "RetailPrice", precision: 19, scale: 4
    t.boolean "Duplicate", default: false
    t.datetime "TDate", precision: nil
    t.datetime "TClose", precision: nil
    t.datetime "TCompleted", precision: nil
    t.float "RentCommCust"
    t.float "SaleCommCust", default: 0.0
    t.float "AssetCommCust"
    t.float "DWCommCust"
    t.float "IPCommCust"
    t.float "ProfitCommCust"
    t.float "OtherCommCust"
    t.float "RentCommCustSales"
    t.float "SaleCommCustSales"
    t.float "AssetCommCustSales"
    t.float "DWCommCustSales"
    t.float "IPCommCustSales"
    t.float "ProfitCommCustSales"
    t.float "OtherCommCustSales"
    t.float "RentCommCntrSales"
    t.float "SalesCommCntrSales"
    t.float "AssetCommCntrSales"
    t.float "DWCommCntrSales"
    t.float "IPCommCntrSales"
    t.float "ProfitCommCntrSales"
    t.float "OtherCommCntrSales"
    t.float "PurchasePrice"
    t.float "PurchaseExtra"
    t.float "DiscountPercent"
    t.float "ExcessiveDiscountAdjustment"
    t.integer "CntrSalesman", default: 0
    t.integer "JobSalesman", default: 0
    t.float "RentCommJobSales", default: 0.0
    t.float "SalesCommJobSales", default: 0.0
    t.float "AssetCommJobSales", default: 0.0
    t.float "DWCommJobSales", default: 0.0
    t.float "IPCommJobSales", default: 0.0
    t.float "ProfitCommJobSales", default: 0.0
    t.float "OtherCommJobSales", default: 0.0
    t.float "RentCommPostSales", default: 0.0
    t.float "SalesCommPostSales", default: 0.0
    t.float "AssetCommPostSales", default: 0.0
    t.float "DWCommPostSales", default: 0.0
    t.float "IPCommPostSales", default: 0.0
    t.float "ProfitCommPostSales", default: 0.0
    t.float "OtherCommPostSales", default: 0.0
    t.integer "SpecialRateTypeID"
    t.index ["Batch"], name: "Commission_Batch"
    t.index ["CNTR"], name: "CommissionPostedA_CNTR"
    t.index ["CNTR"], name: "Commission_CNTR"
    t.index ["CUSN"], name: "CommissionPostedA_CUSN"
    t.index ["CUSN"], name: "Commission_CUSN"
    t.index ["Number"], name: "Commission_Number"
    t.index ["Store"], name: "CommissionPostedA_Store"
    t.index ["Store"], name: "Commission_Store"
  end

  create_table "CommissionLevelCustomer", primary_key: "CommissionLevelCustomer", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 255
    t.float "RentCommission"
    t.float "SaleCommission"
    t.float "AssetCommission"
    t.float "DmgWvrCommission"
    t.float "OtherCommission"
    t.float "ItemPercentCommission"
    t.float "ProfitCommission"
    t.boolean "Inactive", default: false
  end

  create_table "CommissionLevelCustomer_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "CommissionLevelCustomer", null: false
    t.string "Description", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "CommissionLevelExcessiveDiscounts", primary_key: "ExcessiveDiscountNumber", id: :integer, force: :cascade do |t|
    t.integer "CommissionLevelCustomer"
    t.float "DiscountPercentCap"
    t.float "AdjustCommission"
    t.index ["CommissionLevelCustomer"], name: "CommissionLevelExcessiveDiscounts$CommissionLevelCustomer"
  end

  create_table "CommissionLevelItem", primary_key: "CommissionLevelItem", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 255
    t.boolean "Inactive", default: false
  end

  create_table "CommissionLevelItem_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "CommissionLevelItem", null: false
    t.string "Description", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "CommissionLevelSalesman", primary_key: ["Salesman", "CommissionLevelItem"], force: :cascade do |t|
    t.integer "Salesman", null: false
    t.integer "CommissionLevelItem", null: false
    t.float "RentPercent"
    t.float "SalePercent"
    t.float "ProfitPercent"
    t.float "DWPercent"
    t.float "AssetPercent"
    t.float "OtherPercent"
    t.float "ItemPercent"
    t.index ["Salesman"], name: "CommissionLevelSalesman$Salesman"
  end

  create_table "CommissionPosted", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "Batch", default: 0
    t.datetime "CreateDate", precision: nil
    t.string "ImportType", limit: 8
    t.datetime "PostedDate", precision: nil
    t.string "Store", limit: 3
    t.string "CUSN", limit: 6
    t.string "CNTR", limit: 10
    t.float "TotalPosted"
    t.boolean "Duplicate", default: false
    t.index ["Batch"], name: "CommissionPosted_Batch"
    t.index ["CNTR"], name: "CommissionPosted_CNTR"
    t.index ["CUSN"], name: "CommissionPosted_CUSN"
    t.index ["Store"], name: "CommissionPosted_Store"
  end

  create_table "CommissionPostedA", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "CI", limit: 255
    t.integer "Batch"
    t.datetime "CreateDate", precision: nil
    t.string "ImportType", limit: 8
    t.datetime "PostedDate", precision: nil
    t.string "Store", limit: 3
    t.string "CNTR", limit: 10
    t.string "CUSN", limit: 6
    t.float "TotalPosted"
    t.float "PrevPosted"
    t.boolean "Duplicate", default: false
    t.string "PostStatus", limit: 50
  end

  create_table "CommissionProfit", primary_key: "Number", id: :integer, force: :cascade do |t|
    t.datetime "CreateDate", precision: nil
    t.integer "Batch"
    t.datetime "COGSDate", precision: nil
    t.string "Store", limit: 3
    t.string "CUSN", limit: 6
    t.string "CNTR", limit: 10
    t.integer "Salesman", default: 0
    t.integer "CustSalesman", default: 0
    t.integer "CustCommLvl", default: 0
    t.integer "CatCommLvl", default: 0
    t.string "ItemNum", limit: 6
    t.float "Quantity"
    t.float "SellPrice"
    t.float "PurchasePrice"
    t.float "ExtraCharges"
    t.boolean "Duplicate", default: false
    t.datetime "TransDate", precision: nil
    t.datetime "TransClose", precision: nil
    t.datetime "TransCompleted", precision: nil
    t.float "ProfitCommCust"
    t.float "ProfitCommCustSales"
    t.float "ProfitCommCntrSales"
    t.integer "CntrSalesman", default: 0
    t.integer "JobSalesman", default: 0
    t.float "ProfitCommJobSales"
    t.float "ProfitCommPostSales"
    t.index ["Batch"], name: "CommissionProfit_Batch"
    t.index ["CNTR"], name: "CommissionProfit_CNTR"
    t.index ["CUSN"], name: "CommissionProfit_CUSN"
    t.index ["Number"], name: "CommissionProfit_Number"
    t.index ["Store"], name: "CommissionProfit_Store"
  end

  create_table "Contract", primary_key: "Store", id: { type: :string, limit: 3 }, force: :cascade do |t|
    t.text "Contract"
    t.text "NoDamageWaiver"
    t.text "CreditCard"
    t.text "Instruction"
    t.binary "Signature"
    t.text "LegalEase"
    t.text "AssetSale"
    t.text "QuoteLegal"
    t.text "WorkOrderLegal"
    t.text "ReservationLegal"
    t.text "DeliveryMessage"
    t.text "PickupMessage"
    t.text "DamageWaiver"
    t.text "POMessage"
    t.text "CreditCardAuthorization"
    t.text "MarketingPage"
    t.text "TimeClockSigMessage"
    t.index ["Store"], name: "Contract$Store", unique: true
  end

  create_table "ContractColumns", primary_key: "FieldNumber", id: { type: :integer, limit: 2, default: nil }, force: :cascade do |t|
    t.string "Description", limit: 255
  end

  create_table "ContractColumns_Tr", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "LanguageCode", limit: 10, null: false
    t.integer "FieldNumber", null: false
    t.string "Description", limit: 1000
    t.string "ChangeNote", limit: 1000
    t.boolean "Inactive", default: false, null: false
  end

  create_table "ContractDetail", primary_key: "Detail", id: { type: :integer, limit: 2, default: nil }, force: :cascade do |t|
    t.string "Description", limit: 255
  end

  create_table "ContractFooter", primary_key: "Footer", id: { type: :integer, limit: 2, default: nil }, force: :cascade do |t|
    t.string "Description", limit: 255
  end

  create_table "ContractFormat", primary_key: "Number", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 30
    t.string "Filename", limit: 255
    t.boolean "Inactive", default: false
    t.integer "Header", limit: 2
    t.integer "Detail", limit: 2
    t.integer "ShadeColor", limit: 2
    t.boolean "Barcode", default: false
    t.boolean "BillTo", default: false
    t.boolean "FaxCover", default: false
    t.boolean "RemitTo", default: false
    t.boolean "CaliforniaSig", default: false
    t.boolean "WithoutAmounts", default: false
    t.boolean "UseParameters", default: false
    t.boolean "ShowNoTime", default: false
    t.integer "DetailColumn1", limit: 2
    t.integer "DetailColumn2", limit: 2
    t.integer "DetailColumn3", limit: 2
    t.integer "DetailColumn4", limit: 2
    t.integer "DetailColumn5", limit: 2
    t.integer "DetailColumn6", limit: 2
    t.integer "DetailColumn7", limit: 2
    t.integer "DetailColumnS1", limit: 2
    t.integer "DetailColumnS2", limit: 2
    t.integer "DetailColumnS3", limit: 2
    t.integer "DetailColumnS4", limit: 2
    t.integer "DetailColumnS5", limit: 2
    t.integer "DetailColumnS6", limit: 2
    t.integer "DetailColumnS7", limit: 2
    t.boolean "PrintSpecs", default: false
    t.boolean "ItemPrintOut", default: false
    t.boolean "PaymentDetail", default: false
    t.boolean "PrintOperName", default: false
    t.boolean "ContDueDate", default: false
    t.boolean "ShowMods", default: false
    t.boolean "ShowSig", default: false
    t.boolean "PrintItemRate", default: false
    t.boolean "PrintDiscDetail", default: false
    t.boolean "PrintContComments", default: false
    t.boolean "ShowContractFooter", default: false
    t.boolean "DeliveryComments", default: false
    t.boolean "ShowAllItems", default: false
    t.boolean "DeliveryAtTop", default: false
    t.boolean "SetupTime", default: false
    t.boolean "PrintTotalsSection", default: false
    t.boolean "ShowRetailPricing", default: false
    t.boolean "PrintLegalEase", default: false
    t.integer "VersionFormat", limit: 2
    t.boolean "PrintItemPicture", default: false
    t.boolean "PrintDeliveryTruck", default: false
    t.boolean "PrintCCAuthorization", default: false
    t.boolean "PrintMarketingPage", default: false
    t.integer "Footer", limit: 2
    t.string "GroupBy", limit: 50
    t.string "SubGroup", limit: 50
    t.string "Font", limit: 50
    t.boolean "WebLinksHeader", default: false
    t.boolean "WebLinksItems", default: false
    t.boolean "DiscountedRates"
    t.boolean "PrintAfterContract"
    t.boolean "WebLinksPay"
    t.boolean "PaymentDetailSummary", default: false, null: false
    t.boolean "HideLogisticsOUT", default: false, null: false
    t.boolean "HideLogisticsIN", default: false, null: false
  end

  create_table "ContractFormat_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "Number", null: false
    t.string "Description", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["Number", "Languagecode"], name: "ContractFormat_Tr_ContractFormatNumber", unique: true
  end

  create_table "ContractHeader", primary_key: "Header", id: { type: :integer, limit: 2, default: nil }, force: :cascade do |t|
    t.string "Description", limit: 255
  end

  create_table "ContractSalesRepType", primary_key: "Id", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.boolean "Inactive", default: false, null: false
  end

  create_table "Contract_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "LanguageCode", limit: 10, null: false
    t.string "Store", limit: 3, null: false
    t.text "Contract"
    t.text "NoDamageWaiver"
    t.text "CreditCard"
    t.text "Instruction"
    t.text "LegalEase"
    t.text "DamageWaiver"
    t.text "POMessage"
    t.text "CreditCardAuthorization"
    t.text "MarketingPage"
    t.text "TimeClockSigMessage"
    t.text "AssetSale"
    t.text "QuoteLegal"
    t.text "WorkOrderLegal"
    t.text "ReservationLegal"
    t.text "DeliveryMessage"
    t.text "PickupMessage"
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["Store", "LanguageCode"], name: "Contract_Tr_Store", unique: true
  end

  create_table "CostOfGoods", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "Batch"
    t.string "Store", limit: 3
    t.datetime "Date", precision: nil
    t.string "Num", limit: 6
    t.string "CNTR", limit: 10
    t.float "Quantity"
    t.money "SellPrice", precision: 19, scale: 4
    t.money "PurchasePrice", precision: 19, scale: 4
    t.money "ExtraCharges", precision: 19, scale: 4, default: 0.0
    t.integer "Salesman"
    t.integer "PurchaseNumber"
    t.index ["Batch"], name: "CostOfGoods$Batch"
    t.index ["CNTR"], name: "CostOfGoods$CNTR"
    t.index ["Num"], name: "CostOfGoods$Num"
    t.index ["PurchaseNumber"], name: "CostOfGoods$PurchaseNumber"
  end

  create_table "CountryCodes", primary_key: "Id", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.string "MapItCode", limit: 255
    t.string "Alpha2Code", limit: 2, default: "", null: false
    t.string "Alpha3Code", limit: 3, default: "", null: false
    t.boolean "SupportedCountry", default: false, null: false
    t.boolean "Inactive", default: false, null: false
    t.string "CallingCode", limit: 10
  end

  create_table "CurrencyExchange", primary_key: "CurrencyNumber", id: :integer, force: :cascade do |t|
    t.string "CurrencyName", limit: 255
    t.string "CurrencySymbol", limit: 255
    t.float "ExchangeRate"
    t.boolean "Inactive", default: false
    t.string "AccountingLink", limit: 255
  end

  create_table "CurrentStoreTransfers", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.datetime "Date", precision: nil, null: false
    t.string "StoreFrom", limit: 3, null: false
    t.string "StoreTo", limit: 3, null: false
    t.string "Num", limit: 6, null: false
    t.integer "OpNo"
    t.string "CNTR", limit: 10
    t.float "QuantityTransfered", default: 0.0, null: false
    t.float "NewQuantityAtStoreFrom", default: 0.0, null: false
    t.float "NewQuantityAtStoreTo", default: 0.0, null: false
    t.string "Note", limit: 255, null: false
    t.integer "CreatedBy", default: -1, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: -1, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.ntext "ChangeNote"
    t.index ["Date"], name: "CurrentStoreTransfers_Date"
    t.index ["Num"], name: "CurrentStoreTransfers_Num"
    t.index ["StoreTo"], name: "CurrentStoreTransfers_StoreTo"
  end

  create_table "CustomerCard", id: false, force: :cascade do |t|
    t.string "CNum", limit: 6
    t.integer "Encrypted", limit: 2, default: 0
    t.string "EncryptedCard", limit: 255
    t.index ["CNum"], name: "CustomerCard$CNum", unique: true
  end

  create_table "CustomerComments", primary_key: "CNUM", id: { type: :string, limit: 6 }, force: :cascade do |t|
    t.text "COMMENTS1"
  end

  create_table "CustomerComments_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.string "CNUM", limit: 6, null: false
    t.text "COMMENTS1"
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["CNUM", "Languagecode"], name: "CustomerComments_Tr_CNUM", unique: true
  end

  create_table "CustomerEdit", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "Batch"
    t.datetime "Date", precision: nil
    t.string "CNum", limit: 6
    t.integer "Opr"
    t.string "Description", limit: 30
    t.string "Note", limit: 255
    t.index ["Batch"], name: "CustomerEdit$Batch"
    t.index ["CNum"], name: "CustomerEdit$CNum"
    t.index ["Opr"], name: "CustomerEdit$Opr"
  end

  create_table "CustomerEntityType", primary_key: "Id", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 30, null: false
  end

  create_table "CustomerFile", primary_key: "KEY", id: { type: :string, limit: 16 }, force: :cascade do |t|
    t.string "NAME", limit: 150
    t.string "Address", limit: 150
    t.string "Address2", limit: 150
    t.string "CITY", limit: 150
    t.string "ZIP", limit: 50
    t.string "ZIP4", limit: 4
    t.string "DriversLicense", limit: 50
    t.datetime "Birthdate", precision: nil
    t.string "Employer", limit: 50
    t.string "AutoLicense", limit: 10
    t.string "AutoState", limit: 2
    t.string "Phone", limit: 50
    t.string "WORK", limit: 50
    t.string "MOBILE", limit: 50
    t.string "FAX", limit: 50
    t.string "PAGER", limit: 50
    t.string "CNUM", limit: 6, null: false
    t.datetime "OpenDate", precision: nil
    t.datetime "LastActive", precision: nil
    t.string "LastContract", limit: 10
    t.money "CreditLimit", precision: 19, scale: 4
    t.string "Status", limit: 2
    t.string "Restrictions", limit: 2
    t.string "CreditCard", limit: 30
    t.string "OTHERID", limit: 30
    t.money "IncomeYear", precision: 19, scale: 4, default: 0.0
    t.money "IncomeLife", precision: 19, scale: 4, default: 0.0
    t.money "IncomeLastYear", precision: 19, scale: 4
    t.integer "NumberContracts", default: 0
    t.integer "TaxCode"
    t.integer "Discount", default: 0
    t.integer "Type", limit: 2
    t.integer "Message", limit: 2
    t.integer "QtyOut", default: 0
    t.boolean "ForceInfo", default: false
    t.boolean "ForcePO", default: false
    t.boolean "ForceJobId", default: false
    t.boolean "DeleteDmgWvr", default: false
    t.boolean "DeleteFinanceCharge", default: false
    t.boolean "DeleteStatement", default: false
    t.money "LastPayAmount", precision: 19, scale: 4, default: 0.0
    t.datetime "LastPayDate", precision: nil
    t.money "HighBalance", precision: 19, scale: 4, default: 0.0
    t.money "CurrentBalance", precision: 19, scale: 4, default: 0.0
    t.string "Email", limit: 254, default: "", null: false
    t.integer "Salesman"
    t.boolean "DeleteItemPercentage", default: false
    t.boolean "ForcePickedUp", default: false
    t.boolean "OnlyAllowAuthorized", default: false
    t.datetime "DLExpire", precision: nil
    t.string "BillContact", limit: 50
    t.string "BillPhone", limit: 50
    t.string "BillAddress1", limit: 150
    t.string "BillAddress2", limit: 150
    t.string "BillCityState", limit: 150
    t.string "BillZip", limit: 50
    t.string "BillZip4", limit: 4
    t.string "TaxId", limit: 50
    t.string "TaxExemptNumber", limit: 50
    t.datetime "TaxExemptExpire", precision: nil
    t.string "InsuranceNumber", limit: 50
    t.datetime "InsuranceExpire", precision: nil
    t.integer "StatementFormat", limit: 2
    t.integer "StatementPrintTo", limit: 2
    t.string "Terms", limit: 50
    t.integer "FinanceChargeDays", limit: 2
    t.string "SocialSecurity", limit: 50
    t.string "FederalId", limit: 50
    t.string "UserDefined1", limit: 50
    t.string "UserDefined2", limit: 50
    t.integer "PriceLevel", limit: 2
    t.integer "ContractFormat"
    t.datetime "AgeDate", precision: nil
    t.boolean "NoUpdateCreditCard", default: false
    t.integer "HeardAboutUs", default: 0
    t.integer "ContractPrintTo", default: 0
    t.boolean "NoEmail", default: false
    t.string "ContractorLicense", limit: 50
    t.datetime "ContractorExpire", precision: nil
    t.boolean "WebsitePortal", default: false
    t.boolean "MonthToMonth", default: false
    t.integer "PricingType"
    t.integer "Group"
    t.string "CustomerPrintOut", limit: 255
    t.integer "Language", limit: 2
    t.integer "CommissionLevel"
    t.boolean "Nontaxable", default: false
    t.integer "OperatorAssigned"
    t.integer "LoyaltyLevelId"
    t.integer "RateEngineId"
    t.boolean "ReviewBilling", default: false, null: false
    t.string "APILink", limit: 255
    t.integer "ChangedBy"
    t.datetime "DateChanged", precision: nil
    t.string "NameAlias", limit: 255
    t.integer "AccountingCustomerId"
    t.float "DamageWaiver", default: 0.0
    t.integer "CurrencyNumber", default: 0
    t.integer "Suspense", default: 0, null: false
    t.integer "CountryCode", default: 0, null: false
    t.integer "BillCountryCode", default: 0, null: false
    t.string "DirectPayRefNo", limit: 255
    t.string "SalesTaxCode", limit: 255
    t.string "SalesTaxClass", limit: 255
    t.integer "EntityType", default: 0, null: false
    t.string "FirstName", limit: 50
    t.string "LastName", limit: 50
    t.ss_timestamp "Version", null: false
    t.index ["CNUM"], name: "CustomerFile$CNUM", unique: true
    t.index ["DriversLicense"], name: "CustomerFile$DLN"
    t.index ["NAME"], name: "CustomerFile$NAME"
    t.index ["Restrictions"], name: "CustomerFile$REST"
    t.index ["Status"], name: "CustomerFile$STAT"
    t.index ["Version"], name: "IDX_CustomerFile_Version"
    t.index ["ZIP"], name: "CustomerFile$CustomerFileZip"
  end

  create_table "CustomerFile_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.string "CNUM", limit: 6, null: false
    t.string "CustomerPrintOut", limit: 255
    t.string "UserDefined1", limit: 50
    t.string "UserDefined2", limit: 50
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["CNUM", "Languagecode"], name: "CustomerFile_Tr_Cnum", unique: true
  end

  create_table "CustomerFile_Tr_Bak", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.string "CNUM", limit: 6, null: false
    t.string "CustomerPrintOut", limit: 255
    t.string "UserDefined1", limit: 50, null: false
    t.string "UserDefined2", limit: 50, null: false
    t.integer "CreatedBy", null: false
    t.datetime "DateCreated", precision: nil, null: false
    t.integer "ChangedBy", null: false
    t.datetime "DateChanged", precision: nil, null: false
    t.ntext "ChangeNote"
    t.boolean "Inactive", null: false
  end

  create_table "CustomerGroup", primary_key: "CustomerGroup", id: :integer, force: :cascade do |t|
    t.string "GroupName", limit: 255
    t.boolean "Inactive", default: false
  end

  create_table "CustomerGroup_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "CustomerGroup", null: false
    t.string "GroupName", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "CustomerHeard", primary_key: "HeardNumber", id: :integer, force: :cascade do |t|
    t.string "Store", limit: 3
    t.string "HeardName", limit: 50
    t.boolean "Inactive", default: false
    t.string "Note", limit: 255
    t.index ["Store"], name: "CustomerHeard$Store"
  end

  create_table "CustomerHeard_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "HeardNumber", null: false
    t.string "HeardName", limit: 50, null: false
    t.string "Note", limit: 255
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "CustomerJobSite", primary_key: "Number", id: :integer, force: :cascade do |t|
    t.string "Cnum", limit: 7
    t.string "Description", limit: 255
    t.datetime "ValidThroughDate", precision: nil
    t.string "ContractInfo", limit: 50
    t.string "PONumber", limit: 50
    t.string "JobNumber", limit: 50
    t.integer "Salesman"
    t.integer "TaxCode"
    t.integer "RentDiscount", limit: 2
    t.integer "SaleDiscount", limit: 2
    t.integer "PriceLevel", limit: 2
    t.boolean "Nontaxable", default: false
    t.boolean "DamageWaiverExempt", default: false
    t.boolean "ItemPercentageExempt", default: false
    t.string "ContactName", limit: 50
    t.string "ContactPhone", limit: 50
    t.string "SiteAddress", limit: 50
    t.string "SiteCity", limit: 50
    t.string "SiteZip", limit: 50
    t.text "SiteNotes"
    t.integer "JobType"
    t.string "GeneralContractor", limit: 250
    t.string "ProjectSupervisor", limit: 250
    t.string "SupervisorPhone", limit: 50
    t.string "SiteCompanyName", limit: 250
    t.integer "SquareFeet"
    t.money "ProjectCost", precision: 19, scale: 4
    t.datetime "ProjectStartDate", precision: nil
    t.datetime "ProjectEndDate", precision: nil
    t.string "SiteDeliveryInstructions", limit: 255
    t.text "Notes"
    t.string "ContractorPhone", limit: 50
    t.integer "DiscountTable"
    t.integer "OperatorAssigned"
    t.boolean "ReviewBilling", default: false, null: false
    t.integer "RateEngineId"
    t.integer "AccountingJobsiteId"
    t.boolean "IncludeOnWebsite", default: false, null: false
    t.integer "ParentJobSite", default: 0, null: false
    t.ss_timestamp "Version", null: false
    t.string "SalesTaxCode", limit: 255
    t.integer "CountryCode", default: 0, null: false
    t.index ["Cnum"], name: "CustomerJobSite$Cnum"
    t.index ["Version"], name: "IDX_CustomerJobSite_Version"
  end

  create_table "CustomerJobSiteType", primary_key: "JobTypeNumber", id: :integer, force: :cascade do |t|
    t.string "Description", limit: 50
  end

  create_table "CustomerJobSiteType_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "JobSiteNumber", null: false
    t.string "Description", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "CustomerJobSite_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "Number", null: false
    t.string "Description", limit: 255, null: false
    t.string "ContractInfo", limit: 50
    t.string "SiteDeliveryInstructions", limit: 255
    t.text "Notes"
    t.text "SiteNotes"
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "CustomerMessage", primary_key: "Message", id: { type: :integer, limit: 2, default: 0 }, force: :cascade do |t|
    t.string "Description", limit: 50
    t.boolean "Display", default: false
    t.index ["Message"], name: "CustomerMessage$Type", unique: true
  end

  create_table "CustomerMessage_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "Message", null: false
    t.string "Description", limit: 50, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["Message", "Languagecode"], name: "CustomerMessage_Tr_Message", unique: true
  end

  create_table "CustomerNameFormat", primary_key: "Id", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 30, null: false
  end

  create_table "CustomerNotifications", primary_key: "AuthorizationNumber", id: :integer, default: nil, force: :cascade do |t|
    t.integer "CellProvider", limit: 2, null: false
    t.integer "Notification", limit: 2, null: false
    t.boolean "OpenQuote", null: false
    t.boolean "OpenReservation", null: false
    t.boolean "OpenContract", null: false
    t.boolean "OpenWorkOrder", null: false
    t.boolean "ModifyQuote", null: false
    t.boolean "ModifyReservation", null: false
    t.boolean "ModifyContract", null: false
    t.boolean "ModifyWorkOrder", null: false
    t.boolean "ModifyClosed", null: false
    t.boolean "SendOut", null: false
    t.boolean "Close", null: false
    t.boolean "CallOffRent", null: false
    t.boolean "MarkLoaded", null: false
    t.boolean "Completed", null: false
    t.boolean "OperationChange", null: false
    t.boolean "StatusChange", null: false
    t.boolean "ContactChange", null: false
    t.boolean "OverCreditLimit", null: false
    t.boolean "Delivery", null: false
    t.boolean "Payment", null: false
    t.boolean "Geofence", default: false, null: false
  end

  create_table "CustomerPicture", id: false, force: :cascade do |t|
    t.string "Cnum", limit: 6
    t.string "Picture"
  end

  create_table "CustomerRestriction", primary_key: "Restriction", id: { type: :string, limit: 10 }, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.integer "ListOrder"
    t.boolean "PORInternal", default: false, null: false
  end

  create_table "CustomerRestriction_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.string "Restriction", limit: 10, null: false
    t.string "Description", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "CustomerStatus", primary_key: "Status", id: { type: :string, limit: 10 }, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.integer "ListOrder"
    t.integer "Id", null: false
  end

  create_table "CustomerStatus_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.string "Status", limit: 10, null: false
    t.string "Description", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.integer "CustomerStatusId"
    t.index ["Status", "Languagecode"], name: "CustomerStatus__Tr_Status", unique: true
  end

  create_table "CustomerType", primary_key: "Type", id: { type: :integer, limit: 2, default: 0 }, force: :cascade do |t|
    t.string "Description", limit: 50
    t.boolean "Display", default: false
    t.boolean "Inactive", default: false
    t.integer "PasswordLevel", limit: 2
    t.integer "AccountingCustomerId"
    t.index ["Type"], name: "CustomerType$Type", unique: true
  end

  create_table "CustomerTypePricing", primary_key: "PricingType", id: { type: :integer, limit: 2, default: nil }, force: :cascade do |t|
    t.string "Description", limit: 50
    t.boolean "Inactive", default: false
    t.integer "DefaultCommissionLevel"
  end

  create_table "CustomerTypePricing_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "PricingType", null: false
    t.string "Description", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "CustomerType_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "Type", null: false
    t.string "Description", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "DailyDeliveryPickupMax", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Store", limit: 3, null: false
    t.datetime "Date", precision: nil
    t.integer "DayOfWeek", null: false
    t.integer "MaxDeliveries", null: false
    t.integer "MaxPickups", null: false
    t.string "Note", limit: 255
  end

  create_table "Dates", primary_key: "Store", id: { type: :string, limit: 3 }, force: :cascade do |t|
    t.datetime "TimeClock", precision: nil
    t.datetime "CloseForDay", precision: nil
    t.datetime "CloseForMonth", precision: nil
    t.datetime "Statements", precision: nil
    t.datetime "FinanceCharge", precision: nil
    t.datetime "ProgramTipDate", precision: nil
    t.index ["Store"], name: "Dates$Store", unique: true
  end

  create_table "DeliveryTrucks", primary_key: "TruckNumber", id: :integer, force: :cascade do |t|
    t.string "Store", limit: 3
    t.string "TruckName", limit: 50
    t.boolean "Inactive", default: false
    t.string "Note", limit: 255
    t.float "VehicleWeight"
    t.float "GVW"
    t.datetime "PurchaseDate", precision: nil
    t.boolean "ServiceTruck", default: false
    t.integer "ServiceTruckNumber"
    t.float "CubicCapacity"
    t.string "Make", limit: 100
    t.string "Model", limit: 100
    t.integer "Year", limit: 2
    t.string "VINNumber", limit: 100
    t.string "LicensePlate", limit: 50
    t.string "IDNumber", limit: 50
    t.string "ItemNumber", limit: 6
    t.index ["Store"], name: "DeliveryTrucks$Store"
  end

  create_table "DeliveryTrucks_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "TruckNumber", null: false
    t.string "TruckName", limit: 50, null: false
    t.string "Note", limit: 255
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "DeliveryWindows", primary_key: "Number", id: :integer, force: :cascade do |t|
    t.datetime "StartTime", precision: nil
    t.datetime "EndTime", precision: nil
    t.string "Display", limit: 50
    t.string "DeliverySurcharge", limit: 50
    t.string "PickupSurcharge", limit: 50
    t.boolean "DefaultDelivery"
    t.boolean "DefaultPickup"
  end

  create_table "DisbursementDetail", primary_key: "DisbursementNumber", id: :integer, force: :cascade do |t|
    t.integer "Batch"
    t.string "Store", limit: 3
    t.datetime "Date", precision: nil
    t.integer "Number"
    t.integer "OpNo"
    t.integer "PasswordLevel", limit: 2
    t.money "Amount", precision: 19, scale: 4
    t.string "Method", limit: 1
    t.string "Notes", limit: 255
    t.integer "GLTransactionGroupId", default: 0
    t.index ["Batch"], name: "DisbursementDetail$Batch"
    t.index ["Number"], name: "DisbursementDetail$Number"
  end

  create_table "DisbursementItems", primary_key: "Number", id: :integer, force: :cascade do |t|
    t.string "Store", limit: 3
    t.string "Name", limit: 50
    t.string "Account", limit: 50
    t.boolean "Inactive", default: false
    t.money "MaxOwner", precision: 19, scale: 4
    t.money "MaxManager", precision: 19, scale: 4
    t.money "MaxCounter", precision: 19, scale: 4
    t.money "MaxNone", precision: 19, scale: 4
    t.boolean "AccountPayment", default: false
    t.boolean "SeparateGLEntry", default: false
    t.boolean "CounterSystem"
    t.index ["Number"], name: "DisbursementItems$Number", unique: true
  end

  create_table "DisbursementItems_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "Number", null: false
    t.string "Name", limit: 50, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "DiscountTable", primary_key: "Code", id: :integer, force: :cascade do |t|
    t.string "DISC_DESC", limit: 50
    t.integer "RENT_DISC", limit: 2
    t.integer "SALE_DISC", limit: 2
    t.boolean "Inactive", default: false, null: false
    t.index ["Code"], name: "DiscountTable$Code1"
  end

  create_table "DiscountTableByCategory", primary_key: ["Code", "Category"], force: :cascade do |t|
    t.integer "Code", null: false
    t.integer "Category", null: false
    t.float "Rent"
    t.float "Sale"
    t.index ["Category"], name: "DiscountTableByCategory$Category"
    t.index ["Code"], name: "DiscountTableByCategory$Code"
  end

  create_table "DiscountTable_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "Code", null: false
    t.string "DISC_DESC", limit: 50, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "District", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.integer "RegionId"
    t.boolean "Inactive", default: false, null: false
    t.integer "CreatedBy", default: -1, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: -1, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.ntext "ChangeNote"
  end

  create_table "DistrictStores", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "DistrictId", null: false
    t.string "Store", limit: 3, null: false
    t.integer "CreatedBy", default: -1, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: -1, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.ntext "ChangeNote"
  end

  create_table "EliteServer", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "MachineName", limit: 100, null: false
    t.string "MacAddress", limit: 20, null: false
    t.string "IpAddressV4", limit: 15
    t.string "IpAddressV6", limit: 40
    t.integer "EliteServerStateId", null: false
    t.datetime "LastSeen", precision: 7, null: false
    t.datetime "CreatedDateTime", precision: 7, default: -> { "getdate()" }, null: false
    t.datetime "UpdatedDateTime", precision: 7, default: -> { "getdate()" }, null: false
    t.index ["MacAddress"], name: "U_EliteServer_MackAddress", unique: true
  end

  create_table "EliteServerLock", primary_key: "Id", force: :cascade do |t|
    t.integer "EliteServerId", null: false
    t.string "LockUri", limit: 200, null: false
    t.string "Description", limit: 250, null: false
    t.integer "LeaseLengthMilliseconds", null: false
    t.datetime "ExpiresUtc", precision: 7, null: false
    t.datetime "CreatedDateTime", precision: 7, default: -> { "getdate()" }, null: false
    t.datetime "UpdatedDateTime", precision: 7, default: -> { "getdate()" }, null: false
    t.index ["EliteServerId"], name: "IX_EliteServerLock_EliteServerId"
    t.index ["LockUri"], name: "UIX_EliteServerLock_LockUri", unique: true
  end

  create_table "EliteServerState", primary_key: "Id", id: :integer, default: nil, force: :cascade do |t|
    t.string "Name", limit: 100, null: false
    t.datetime "CreatedDateTime", precision: 7, null: false
  end

  create_table "EmailMessages", primary_key: "Message", id: :integer, force: :cascade do |t|
    t.string "Description", limit: 255
    t.string "Status", limit: 20
    t.string "Subject", limit: 255
    t.text "Body"
    t.boolean "DefaultMessage"
    t.string "Store", limit: 3
  end

  create_table "EmailMessages_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "Message", null: false
    t.string "Description", limit: 255
    t.string "Subject", limit: 255
    t.text "Body"
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["Message", "Languagecode"], name: "EmailMessages_Tr_Message", unique: true
  end

  create_table "EmployeeHours", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "OpNo"
    t.datetime "Date", precision: nil
    t.real "Hours"
    t.string "Store", limit: 3
    t.index ["OpNo"], name: "EmployeeHours$OpNo"
  end

  create_table "EmployeeLog", primary_key: "Number", id: :integer, force: :cascade do |t|
    t.datetime "Date", precision: nil
    t.integer "OpNo"
    t.integer "EnteredBy"
    t.integer "PasswordLevel"
    t.boolean "Acknowledge", default: false
    t.integer "LogType"
    t.text "Notes"
    t.index ["EnteredBy"], name: "EmployeeLog$EnteredBy"
    t.index ["LogType"], name: "EmployeeLog$LogType"
    t.index ["OpNo"], name: "EmployeeLog$OpNo"
  end

  create_table "EmployeeLogType", primary_key: "LogType", id: :integer, force: :cascade do |t|
    t.string "LogDescription", limit: 255
    t.boolean "Inactive", default: false
  end

  create_table "EmployeePay", primary_key: "PayType", id: :integer, force: :cascade do |t|
    t.string "Description", limit: 255
    t.string "Regular", limit: 255
    t.string "Overtime", limit: 255
    t.string "DoubleTime", limit: 255
  end

  create_table "EntityTypes", primary_key: "ID", id: :integer, default: nil, force: :cascade do |t|
    t.string "Name", limit: 255, null: false
    t.string "DBTable", limit: 255
    t.string "Description", limit: 255
  end

  create_table "EquipmentPreHireCheck", primary_key: ["Id", "ItemNo"], force: :cascade do |t|
    t.uuid "Id", null: false
    t.integer "ItemNo", null: false
    t.integer "RowId"
    t.integer "FormVersion"
    t.decimal "Latitude", precision: 28, scale: 6
    t.decimal "Longitude", precision: 28, scale: 6
    t.datetime "StartTime", precision: nil
    t.datetime "ReceivedTime", precision: nil
    t.datetime "CompleteTime", precision: nil
    t.text "UserFirstName"
    t.text "UserLastName"
    t.string "tagprint", limit: 150
    t.string "autonum", limit: 500
    t.string "barcodescan", limit: 500
    t.text "plantnumberentry"
    t.string "plantnumber", limit: 500
    t.string "plantnumberfull", limit: 500
    t.string "plantnumbercheck", limit: 150
    t.string "equipmentlist", limit: 150
    t.text "header"
    t.string "itemname", limit: 500
    t.string "itemnametemp", limit: 500
    t.text "initials"
    t.string "userselection", limit: 150
    t.datetime "datetime", precision: nil
    t.text "plantdetails"
    t.string "hourmetercheck", limit: 500
    t.decimal "hourmeter", precision: 26, scale: 8
    t.string "localdate", limit: 500
    t.integer "_identity", null: false
    t.ss_timestamp "_rowversion", null: false
    t.datetime "_lastupdated", precision: nil, null: false
    t.boolean "_deleted", null: false
    t.text "branch"
    t.string "qrcodescan", limit: 500
    t.string "scanconvert", limit: 150
    t.string "operator_number", limit: 500
    t.string "training_types", limit: 150
    t.string "certification_exists", limit: 500
    t.string "training", limit: 150
    t.string "training_validation", limit: 500
    t.string "style", limit: 500
    t.string "userselection_6a2", limit: 150
    t.text "training_block"
    t.string "fuel", limit: 500
    t.string "fuelcheck", limit: 150
    t.decimal "fuelcheckresult", precision: 26, scale: 8
    t.decimal "diamondmm", precision: 26, scale: 8
    t.text "untitled63"
    t.string "itemnum", limit: 500
    t.string "accessories", limit: 500
    t.string "photo1", limit: 500
    t.string "photo2", limit: 500
    t.string "photo3", limit: 500
    t.string "photo4", limit: 500
    t.text "noitem"
  end

  create_table "EquipmentRunUpsPetrolDiesel", primary_key: ["Id", "ItemNo"], force: :cascade do |t|
    t.uuid "Id", null: false
    t.integer "ItemNo", null: false
    t.integer "RowId"
    t.integer "FormVersion"
    t.decimal "Latitude", precision: 28, scale: 6
    t.decimal "Longitude", precision: 28, scale: 6
    t.datetime "StartTime", precision: nil
    t.datetime "ReceivedTime", precision: nil
    t.datetime "CompleteTime", precision: nil
    t.text "UserFirstName"
    t.text "UserLastName"
    t.text "plant_number"
    t.string "Condition", limit: 150
    t.string "Photo2", limit: 500
    t.string "Photo3", limit: 500
    t.decimal "untitled16", precision: 26, scale: 8
    t.string "hour_meter", limit: 500
    t.text "comments"
    t.string "user_selection", limit: 150
    t.string "refuel", limit: 150
    t.string "safety_check", limit: 150
    t.string "clean", limit: 150
    t.string "accessories", limit: 150
    t.string "start_machine", limit: 150
    t.string "step2", limit: 200
    t.text "rejectReason"
    t.string "acceptSign", limit: 500
    t.integer "_identity", null: false
    t.ss_timestamp "_rowversion", null: false
    t.datetime "_lastupdated", precision: nil, null: false
    t.boolean "_deleted", null: false
  end

  create_table "ErrorLog", primary_key: "ErrorNumber", id: :integer, force: :cascade do |t|
    t.integer "Batch", null: false
    t.datetime "DateTimeStamp", precision: nil, null: false
    t.string "UserName", limit: 50
    t.integer "Operator", null: false
    t.string "ErrorType", limit: 50
    t.string "ErrorDescription", limit: 255
    t.string "ProgramName", limit: 255
    t.string "Module", limit: 255
    t.text "Notes"
  end

  create_table "ExportFormat", primary_key: "ExportFormatId", id: :integer, default: nil, force: :cascade do |t|
    t.integer "BaseFormatId", null: false
    t.string "Description", limit: 255, null: false
    t.boolean "IntegratedAPI", default: false, null: false
    t.boolean "AutoExportToGL", default: false, null: false
    t.boolean "PushFromClient", default: false, null: false
    t.string "GLCredentials", limit: 255
    t.string "GLConnectionPath", limit: 255
    t.string "GLServerInstance", limit: 255
    t.string "GLDatabaseName", limit: 255
    t.string "GLModeCode", limit: 1
    t.string "GLDetailLevelCode", limit: 1
    t.string "ExportFilePath", limit: 255
    t.string "ExportFileExtension", limit: 255
    t.boolean "Inactive", default: false, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.integer "TransactionIntegration", default: 0, null: false
    t.string "GenericCashCustomerNumber", limit: 6
    t.string "TransferExecutionStatus", limit: 1000
    t.integer "TransferExecutionId", default: 1, null: false
    t.datetime "LastTransferStatusDate", precision: nil
  end

  create_table "FeatureLicense", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "OrganizationId", null: false
    t.integer "LicenseTypeId", null: false
    t.integer "Quantity", null: false
    t.boolean "Disabled", default: false, null: false
    t.datetime "ExpirationDate", precision: nil
    t.datetime "Updated", precision: nil, null: false
    t.string "Checksum", limit: 64, null: false
    t.integer "LimitTypeId", default: 1, null: false
    t.index ["OrganizationId", "LicenseTypeId"], name: "IX_FeatureLicense", unique: true
  end

  create_table "FeatureLicenseType", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Name", limit: 255, null: false
    t.string "Description", limit: 255, null: false
  end

  create_table "FeatureLimitType", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Name", limit: 255, null: false
    t.string "Description", limit: 255, null: false
  end

  create_table "FeaturePermission", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "RelationshipId", null: false
    t.integer "PermissionTypeId", null: false
    t.boolean "Disabled", default: false, null: false
    t.datetime "Updated", precision: nil, null: false
    t.string "Checksum", limit: 64, null: false
    t.index ["RelationshipId", "PermissionTypeId"], name: "IX_FeaturePermission", unique: true
  end

  create_table "FeaturePermissionType", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Name", limit: 255, null: false
    t.string "Description", limit: 255, null: false
    t.integer "LicenseTypeId", null: false
  end

  create_table "FieldDefinitions", primary_key: ["FILE_NR", "FIELD_NR"], force: :cascade do |t|
    t.string "FILE_NR", limit: 2, null: false
    t.string "FIELD_NR", limit: 3, null: false
    t.float "SPOS"
    t.float "FLENG"
    t.string "COMM", limit: 14
    t.float "COMR"
    t.float "COMC"
    t.boolean "Numeric", default: false
    t.boolean "Decimal", default: false
    t.boolean "Date", default: false
    t.integer "Display", default: 0
    t.integer "Entry", default: 0
    t.float "REPT"
    t.string "DBFieldName", limit: 50
    t.string "Description", limit: 250
    t.boolean "Required", default: false
    t.index ["Entry"], name: "FieldDefinitions$Entry"
  end

  create_table "FileDescriptions", primary_key: "FILE_NR", id: { type: :string, limit: 2 }, force: :cascade do |t|
    t.string "FILE_NAME", limit: 5
    t.float "NUMB_FLDS"
    t.float "FILE_KEYS1"
    t.float "FILE_KEYS2"
    t.float "FILE_KEYS3"
    t.float "FILE_KEYS4"
    t.float "REC_SIZ"
    t.float "FOP_CODES1"
    t.float "FOP_CODES2"
    t.float "FOP_CODES3"
    t.float "FOP_CODES4"
    t.float "FOP_CODES5"
    t.float "FOP_CODES6"
  end

  create_table "FileImport", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "FileName", limit: 50, null: false
    t.integer "FileImportTypeId", null: false
    t.integer "FileImportStatusId", null: false
    t.string "HashCode", limit: 255, null: false
    t.boolean "Inactive", default: false, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.string "ChangeNote", limit: 255
    t.text "FileData"
    t.index ["FileName", "FileImportTypeId"], name: "IDX_FILE_IMPORT_FileName_FileImportTypeId"
    t.index ["HashCode"], name: "IDX_FILE_IMPORT_HashCode"
  end

  create_table "FileImportStatus", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Value", limit: 30, null: false
  end

  create_table "FileImportType", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "TableName", limit: 50, null: false
    t.string "Description", limit: 255, null: false
  end

  create_table "FileImportTypeColumns", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Name", limit: 50, null: false
    t.integer "FileImportTypeId", null: false
    t.boolean "Required", null: false
  end

  create_table "FileMapping", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Name", limit: 255, null: false
    t.integer "FileImportTypeId", null: false
    t.ntext "Mapping", null: false
    t.boolean "Inactive", default: false, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.string "ChangeNote", limit: 255
  end

  create_table "FleetAccounts", primary_key: "Number", id: :integer, force: :cascade do |t|
    t.string "Description", limit: 255
    t.string "URL", limit: 255
    t.string "Username", limit: 255
    t.string "Password", limit: 255
    t.string "Notes", limit: 255
    t.datetime "DateTimeStamp", precision: nil
    t.boolean "Inactive"
    t.boolean "SuppressMeterReading", default: false, null: false
    t.integer "RentalAPI", default: 0
    t.string "APIToken"
    t.string "APIClientName", limit: 255
    t.datetime "APITokenExpirationDate", precision: nil
    t.float "AEMPVersion", default: 0.0, null: false
    t.string "APIUserName", limit: 50
    t.string "APIPassword", limit: 50
    t.string "ClientID", limit: 200
    t.string "ClientSecret", limit: 200
    t.integer "AuthType", default: 0, null: false
    t.string "HeaderKey", limit: 200
    t.string "HeaderValue"
    t.index ["Description"], name: "FleetAccounts_Description"
  end

  create_table "FleetDetails", id: false, force: :cascade do |t|
    t.integer "Fleet_Id"
    t.string "EquipmentID", limit: 255
    t.string "SerialNumber", limit: 255
    t.string "Make", limit: 255
    t.string "Model", limit: 255
    t.datetime "UnitInstallDateTime", precision: nil
    t.datetime "DateTime", precision: nil
    t.float "Latitude"
    t.float "Longitude"
    t.integer "Feet"
    t.integer "Inches"
    t.float "Meter"
    t.string "AltitudeUnits", limit: 255
    t.datetime "HoursDateTime", precision: nil
    t.string "Hour", limit: 255
    t.datetime "ResetDateTime", precision: nil
    t.datetime "FuelDateTime", precision: nil
    t.string "FuelUnits", limit: 255
    t.integer "FuelConsumed"
    t.datetime "FuelResetDateTime", precision: nil
    t.datetime "FuelDayDateTime", precision: nil
    t.string "FuelDayUnits", limit: 255
    t.integer "FuelDayConsumed"
    t.datetime "DistanceDateTime", precision: nil
    t.string "OdometerUnits", limit: 255
    t.integer "Odometer"
    t.datetime "OdometerResetDateTime", precision: nil
    t.index ["EquipmentID"], name: "FleetDetails_EquipmentID"
    t.index ["Fleet_Id", "EquipmentID"], name: "IX_FleetDetails", unique: true
    t.index ["Fleet_Id"], name: "FleetDetails_Fleet_Id"
    t.index ["SerialNumber"], name: "FleetDetails_SerialNumber"
  end

  create_table "FulFillmentVersion", primary_key: "Vnum", id: :integer, default: nil, force: :cascade do |t|
    t.datetime "Vday", precision: nil
  end

  create_table "FulfillmentActions", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Action", limit: 50, null: false
  end

  create_table "FulfillmentActions_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "FulfillmentActionsId", null: false
    t.string "Action", limit: 50, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["FulfillmentActionsId", "Languagecode"], name: "FulfillmentActions_Tr_FulfillmentActionsId", unique: true
  end

  create_table "GLDetailLevel", primary_key: "GLDetailLevelId", id: :integer, default: nil, force: :cascade do |t|
    t.string "GLDetailLevelCode", limit: 1, null: false
    t.string "Description", limit: 255, null: false
    t.boolean "Inactive", default: false, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
  end

  create_table "GLMode", primary_key: "GLModeId", id: :integer, default: nil, force: :cascade do |t|
    t.string "GLModeCode", limit: 1, null: false
    t.string "Description", limit: 255, null: false
    t.boolean "Inactive", default: false, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
  end

  create_table "GPSLog", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "EquipmentId", limit: 255, null: false
    t.string "ItemNumber", limit: 6
    t.datetime "TimeStamp", precision: nil, null: false
    t.integer "GPSLogTypeId", null: false
    t.string "Description", limit: 255
    t.string "Note", limit: 255
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.index ["EquipmentId"], name: "GPSLog_EquipmentId"
    t.index ["ItemNumber"], name: "GPSLog_ItemNumber"
  end

  create_table "GPSLogType", primary_key: "GPSLogTypeId", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
  end

  create_table "GlobalStoredFile", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "StoredFileId", null: false
    t.string "StoredFileUrl", limit: 684, null: false
    t.string "FileHash", limit: 64, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.index ["FileHash"], name: "IX_GlobalStoredFile_FileHash"
  end

  create_table "GridState", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "OperatorNumber"
    t.integer "GroupNumber"
    t.string "StoreNumber", limit: 3
    t.text "Application", null: false
    t.text "Grid", null: false
    t.text "GridOrder"
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "GroupFile", primary_key: "GroupNumber", id: :integer, force: :cascade do |t|
    t.string "GroupName", limit: 250
    t.string "Regular", limit: 255
    t.string "Overtime", limit: 255
    t.string "DoubleTime", limit: 255
    t.integer "GroupTypeId"
    t.integer "AccountingEmployeeId"
    t.ss_timestamp "Version", null: false
    t.index ["Version"], name: "IDX_GroupFile_Version"
  end

  create_table "GroupFile_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "GroupNumber", null: false
    t.string "GroupName", limit: 250, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "GroupType", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "HeaderID", primary_key: "HeaderID", id: :integer, force: :cascade do |t|
    t.varchar "Header", limit: 255
    t.varchar "Inactive", limit: 255
    t.varchar "BulkItem", limit: 255
    t.varchar "Category", limit: 255
  end

  create_table "Images", primary_key: "ImageId", id: :integer, force: :cascade do |t|
    t.string "Link", limit: 50, null: false
    t.integer "LinkType", default: 0
    t.string "Description", limit: 255
    t.binary "Picture"
    t.integer "SortOrder", default: 0
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "ImagesLinkType", primary_key: "LinkType", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
  end

  create_table "ImportTableDefinitions", primary_key: "ImportTableDefinitionId", id: :integer, force: :cascade do |t|
    t.string "TableGroup", limit: 50, null: false
    t.string "TableName", limit: 100, null: false
    t.string "ColumnName", limit: 100, null: false
    t.string "ColumnFriendlyName", limit: 100
    t.string "ColumnGroup", limit: 100
    t.boolean "Required", default: false, null: false
    t.boolean "AllowMap", default: false, null: false
    t.boolean "AllowConstant", default: false, null: false
    t.string "DefaultValue", limit: 255
    t.string "MinValue", limit: 255
    t.string "MaxValue", limit: 255
    t.integer "OrderBy", null: false
    t.string "ParentRelationship", limit: 255
    t.boolean "Virtual", default: false, null: false
    t.index ["TableName", "ColumnName"], name: "ImportTableDefinition_TableNameColumnName", unique: true
    t.index ["TableName", "OrderBy"], name: "ImportTableDefinition_TableNameOrderBy", unique: true
  end

  create_table "IncomeType", primary_key: "IncomeTypeId", id: :integer, default: nil, force: :cascade do |t|
    t.string "IncomeTypeCode", limit: 20, null: false
    t.string "Description", limit: 255, null: false
    t.boolean "Inactive", default: false, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
  end

  create_table "IntacctDimensionCandidates", primary_key: "CandidateId", id: :integer, force: :cascade do |t|
    t.string "PORTableName", limit: 100
    t.string "IdColumn", limit: 100
    t.string "JoiningColumn", limit: 100
  end

  create_table "IntacctDimensions", primary_key: "DimensionId", id: :integer, force: :cascade do |t|
    t.string "IntacctDimension", limit: 20
    t.string "PORTableName", limit: 100
    t.boolean "Overridable", default: false, null: false
    t.integer "CandidateId"
    t.boolean "EnableForGL", default: false, null: false
    t.boolean "EnableForPO", default: false, null: false
    t.boolean "Inactive", default: false, null: false
  end

  create_table "IntegrationResources", primary_key: "ID", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.string "Value", limit: 255, null: false
    t.integer "CreatedBy", default: -1, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: -1, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.string "ChangeNote", limit: 255
    t.boolean "Inactive", default: false, null: false
    t.index ["Description"], name: "Description_Index", unique: true
  end

  create_table "ItemCategory", primary_key: "Category", id: :integer, default: 0, force: :cascade do |t|
    t.string "Name", limit: 100
    t.string "GLNumber", limit: 50
    t.integer "DivisionNumber", default: 0, null: false
    t.float "MaxDiscountPercent", default: 0.0
    t.boolean "SuppressItemIncome", default: false
    t.string "WebTags", limit: 255
    t.string "DefaultSort", limit: 255
    t.string "AssetGL", limit: 255
    t.string "DepreciationGL", limit: 255
    t.string "GLIncome2", limit: 255
    t.string "GLIncome3", limit: 255
    t.string "GLIncome4", limit: 255
    t.string "GLIncome5", limit: 255
    t.integer "DefaultDepartment"
    t.string "CategoryInventory", limit: 255
    t.string "CategoryCostOfGoods", limit: 255
    t.integer "DefaultCommissionLevel"
    t.integer "SuperCategory"
    t.string "Style1", limit: 255
    t.string "Style2", limit: 255
    t.string "Style3", limit: 255
    t.string "CategoryAssetSalesIncome", limit: 255
    t.string "CategoryDamageWaiverIncome", limit: 255
    t.integer "AccountingDepartmentId"
    t.integer "AccountingClassId"
    t.string "DiscountsGiven", limit: 50
    t.boolean "SuspenseExempt", default: false, null: false
    t.string "SalesTaxClass", limit: 255
    t.string "RentalTaxClass", limit: 255
  end

  create_table "ItemCategoryPicture", primary_key: "Category", id: :integer, default: nil, force: :cascade do |t|
    t.binary "Picture"
  end

  create_table "ItemCategorySuper", primary_key: "SuperCategory", id: :integer, force: :cascade do |t|
    t.string "SuperCategoryName", limit: 255
    t.string "Categories", limit: 255
    t.string "WebTags", limit: 255
    t.binary "Picture"
    t.boolean "Inactive", default: false
  end

  create_table "ItemCategorySuper_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "SuperCategory", null: false
    t.string "SuperCategoryName", limit: 255, null: false
    t.string "WebTags", limit: 255
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["SuperCategory", "Languagecode"], name: "ItemCategorySuper_Tr_ItemCategorySuper", unique: true
  end

  create_table "ItemCategory_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "Category", null: false
    t.string "Name", limit: 100
    t.string "WebTags", limit: 255
    t.string "Style1", limit: 255
    t.string "Style2", limit: 255
    t.string "Style3", limit: 255
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "ItemComments", primary_key: "NUM", id: { type: :string, limit: 6 }, force: :cascade do |t|
    t.text "Specs"
    t.text "PrintOut"
    t.text "Notes"
  end

  create_table "ItemComments_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.string "NUM", limit: 6, null: false
    t.text "Specs"
    t.text "PrintOut"
    t.text "Notes"
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["NUM", "Languagecode"], name: "ItemComments_Tr_NUM", unique: true
  end

  create_table "ItemDepartment", primary_key: "Department", id: :integer, force: :cascade do |t|
    t.string "DepartmentName", limit: 255
    t.boolean "Inactive", default: false
    t.integer "AccountingClassId"
    t.integer "AccountingDepartmentId"
  end

  create_table "ItemDepartment_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "Department", null: false
    t.string "DepartmentName", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["Department"], name: "ItemDepartment_Tr$Department"
  end

  create_table "ItemDepreciation", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Num", limit: 6
    t.integer "Schedule", limit: 2
    t.string "Method", limit: 1
    t.float "Period"
    t.money "SalvageValue", precision: 19, scale: 4
    t.money "ExtraDepreciation", precision: 19, scale: 4
    t.money "PreviousMonth", precision: 19, scale: 4
    t.money "Accrued", precision: 19, scale: 4
    t.money "CurrentValue", precision: 19, scale: 4
    t.integer "MidConvention", limit: 2
    t.index ["Num", "Schedule"], name: "ItemDepreciation$ItemSchedule", unique: true
    t.index ["Num"], name: "ItemDepreciation$Num"
  end

  create_table "ItemDepreciationDetail", primary_key: "DetailId", id: :integer, force: :cascade do |t|
    t.string "Num", limit: 6
    t.datetime "Date", precision: nil
    t.integer "Schedule", limit: 2
    t.money "Depreciation", precision: 19, scale: 4
    t.money "CurrentValue", precision: 19, scale: 4
    t.money "Accrued", precision: 19, scale: 4
    t.boolean "Recapture", default: false
    t.integer "Batch"
    t.index ["Num"], name: "ItemDepreciationDetail$Num"
  end

  create_table "ItemDepreciationMethods", primary_key: "Method", id: { type: :string, limit: 10 }, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.boolean "Available", null: false
    t.string "Note", limit: 255
    t.integer "ListOrder"
    t.integer "Id", null: false
  end

  create_table "ItemDepreciationMethods_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.string "Method", limit: 10, null: false
    t.string "Description", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["Method", "Languagecode"], name: "ItemDepreciationMethods_Tr_Method", unique: true
  end

  create_table "ItemDepreciationSchedules", id: false, force: :cascade do |t|
    t.integer "Schedule", limit: 2
    t.string "Description", limit: 250
    t.boolean "GLPost", default: false
    t.index ["Schedule"], name: "ItemDepreciationSchedules$Schedule", unique: true
  end

  create_table "ItemDepreciationStoreDetail", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "ItemDepreciationDetailId", null: false
    t.string "Store", limit: 3, null: false
    t.integer "DaysInStore", null: false
    t.money "Depreciation", precision: 19, scale: 4, default: 0.0, null: false
    t.integer "CreatedBy", default: -1, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: -1, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.ntext "ChangeNote"
    t.index ["ItemDepreciationDetailId"], name: "ItemDepreciationStoreDetail_ItemDepreciationDetailId"
  end

  create_table "ItemDivision", primary_key: "DivisionNumber", id: :integer, force: :cascade do |t|
    t.string "DivisionName", limit: 50
    t.integer "AccountingClassId"
    t.integer "AccountingDepartmentId"
    t.index ["DivisionNumber"], name: "ItemDivision$DivisionNumber", unique: true
  end

  create_table "ItemDivision_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "DivisionNumber", null: false
    t.string "DivisionName", limit: 50, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "ItemEdit", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "Batch"
    t.datetime "Date", precision: nil
    t.string "Num", limit: 6
    t.integer "Opr"
    t.string "Description", limit: 30
    t.string "Note", limit: 255
    t.index ["Batch"], name: "ItemEdit$Batch"
    t.index ["Num"], name: "ItemEdit$Num"
    t.index ["Opr"], name: "ItemEdit$Opr"
  end

  create_table "ItemEngine", primary_key: "Engine", id: :integer, force: :cascade do |t|
    t.string "Num", limit: 6
    t.string "EngineManufacturer", limit: 250
    t.string "EngineModel", limit: 250
    t.string "EngineFamily", limit: 250
    t.string "EngineSerialNumber", limit: 250
    t.string "EngineModelYear", limit: 250
    t.float "EngineMaximumPower"
    t.string "EngineDisplacement", limit: 250
    t.boolean "Repowered", default: false
    t.datetime "DateRepowered", precision: nil
    t.boolean "LowEmission", default: false
    t.string "EmissionCertificate", limit: 250
    t.boolean "StringentEmission", default: false
    t.string "VDECSManufacturer", limit: 250
    t.string "VDECSModel", limit: 250
    t.string "VerificationLevel", limit: 250
    t.string "VerifiedReduction", limit: 250
    t.datetime "DateInstalled", precision: nil
    t.datetime "DateReplaced", precision: nil
    t.float "HPofReplaced"
    t.string "EmissionFactor", limit: 250
    t.string "EngineComments", limit: 255
    t.integer "FleetType"
    t.index ["Num"], name: "ItemEngine$Num"
  end

  create_table "ItemFile", primary_key: "KEY", id: { type: :string, limit: 16 }, force: :cascade do |t|
    t.string "Name", limit: 150
    t.string "LOC", limit: 2
    t.float "QTY", default: 0.0
    t.float "QYOT", default: 0.0
    t.money "SELL", precision: 19, scale: 4, default: 0.0
    t.money "DEP", precision: 19, scale: 4, default: 0.0
    t.money "DMG", precision: 19, scale: 4, default: 0.0
    t.integer "Msg", limit: 2
    t.datetime "SDATE", precision: nil
    t.integer "Category"
    t.string "TYPE", limit: 1
    t.integer "TaxCode"
    t.string "INST", limit: 25
    t.string "FUEL", limit: 10
    t.string "ADDT", limit: 10
    t.integer "PER1", default: 0
    t.integer "PER2", default: 0
    t.integer "PER3", default: 0
    t.integer "PER4", default: 0
    t.integer "PER5", default: 0
    t.integer "PER6", default: 0
    t.integer "PER7", default: 0
    t.integer "PER8", default: 0
    t.integer "PER9", default: 0
    t.integer "PER10", default: 0
    t.money "RATE1", precision: 19, scale: 4, default: 0.0
    t.money "RATE2", precision: 19, scale: 4, default: 0.0
    t.money "RATE3", precision: 19, scale: 4, default: 0.0
    t.money "RATE4", precision: 19, scale: 4, default: 0.0
    t.money "RATE5", precision: 19, scale: 4, default: 0.0
    t.money "RATE6", precision: 19, scale: 4, default: 0.0
    t.money "RATE7", precision: 19, scale: 4, default: 0.0
    t.money "RATE8", precision: 19, scale: 4, default: 0.0
    t.money "RATE9", precision: 19, scale: 4, default: 0.0
    t.money "RATE10", precision: 19, scale: 4
    t.string "RCOD", limit: 1
    t.integer "SUBR", default: 0
    t.string "PartNumber", limit: 50
    t.string "NUM", limit: 6
    t.string "MANF", limit: 50
    t.string "MODN", limit: 30
    t.string "DSTN", limit: 16
    t.string "DSTP", limit: 10
    t.integer "RMIN", default: 0
    t.integer "RMAX", default: 0
    t.string "UserDefined1", limit: 50
    t.string "UserDefined2", limit: 50
    t.real "MTOT", default: 0.0
    t.real "MTIN", default: 0.0
    t.integer "CALL", default: 0
    t.boolean "RESB", default: false
    t.boolean "RESD", default: false
    t.boolean "QUEB", default: false
    t.boolean "QUED", default: false
    t.string "SSN", limit: 6
    t.string "CUSN", limit: 6
    t.string "CNTR", limit: 10
    t.datetime "PURD", precision: nil
    t.money "PURP", precision: 19, scale: 4, default: 0.0
    t.string "DEPM", limit: 1
    t.integer "DEPR", default: 0
    t.money "SLVG", precision: 19, scale: 4, default: 0.0
    t.money "DEPA", precision: 19, scale: 4, default: 0.0
    t.money "DEPP", precision: 19, scale: 4, default: 0.0
    t.money "CURV", precision: 19, scale: 4, default: 0.0
    t.datetime "SOLD", precision: nil
    t.money "SAMT", precision: 19, scale: 4, default: 0.0
    t.money "INC1", precision: 19, scale: 4, default: 0.0
    t.money "INC2", precision: 19, scale: 4, default: 0.0
    t.money "INC3", precision: 19, scale: 4, default: 0.0
    t.money "REPC1", precision: 19, scale: 4, default: 0.0
    t.money "REPC2", precision: 19, scale: 4, default: 0.0
    t.integer "TMOT1", default: 0
    t.integer "TMOT2", default: 0
    t.integer "TMOT3", default: 0
    t.integer "HROT1", default: 0
    t.integer "HROT2", default: 0
    t.integer "HROT3", default: 0
    t.datetime "LDATE", precision: nil
    t.string "LOOKUP", limit: 100
    t.boolean "Asset", default: false
    t.string "GLAccount", limit: 50
    t.string "DeprecAccount", limit: 50
    t.string "HomeStore", limit: 3
    t.string "CurrentStore", limit: 3
    t.string "Group", limit: 20
    t.string "Location", limit: 20
    t.string "SerialNumber", limit: 50
    t.boolean "Nontaxable", default: false
    t.string "Header", limit: 20
    t.string "License", limit: 15
    t.integer "CaseQty"
    t.money "ItemPercentage", precision: 19, scale: 4
    t.string "ModelYear", limit: 10
    t.money "RetailPrice", precision: 19, scale: 4
    t.money "ExtraDepreciation", precision: 19, scale: 4
    t.boolean "Inactive", default: false
    t.money "ExtraCharges", precision: 19, scale: 4
    t.money "PriceLevelA", precision: 19, scale: 4
    t.money "PriceLevelB", precision: 19, scale: 4
    t.money "PriceLevelC", precision: 19, scale: 4
    t.boolean "NonDiscountable", default: false
    t.integer "VendorNumber1"
    t.integer "VendorNumber2"
    t.integer "VendorNumber3"
    t.float "QuantityOnOrder"
    t.string "Sort", limit: 10
    t.boolean "NoPrintOnContract", default: false
    t.money "MarkupPercentage", precision: 19, scale: 4
    t.string "OrderNumber1", limit: 50
    t.string "OrderNumber2", limit: 50
    t.string "OrderNumber3", limit: 50
    t.float "CleaningDelay"
    t.boolean "RequireCleaning", default: false
    t.string "MaintenanceFile", limit: 25
    t.string "WebLink", limit: 250
    t.money "SubrentCostMTD", precision: 19, scale: 4
    t.money "SubrentCostYTD", precision: 19, scale: 4
    t.integer "SubrentPending"
    t.boolean "HideOnWebsite", default: false
    t.string "GPSUnitNo", limit: 50
    t.datetime "LicenseExpire", precision: nil
    t.money "ReplacementCost", precision: 19, scale: 4
    t.boolean "RequireCreditCard", default: false
    t.datetime "WarrantyDate", precision: nil
    t.string "VehicleType", limit: 250
    t.string "VehicleEIN", limit: 250
    t.string "DescriptionLong", limit: 250
    t.float "Weight"
    t.float "SetupTime"
    t.string "WebGroup", limit: 250
    t.integer "Department"
    t.integer "GLIncome", limit: 2
    t.boolean "BulkItem", default: false
    t.integer "GVWR"
    t.float "CriticalLevel"
    t.float "RentalCase"
    t.boolean "BoughtUsed", default: false
    t.money "IncomeDmgWvr", precision: 19, scale: 4
    t.money "IncomeItemPercent", precision: 19, scale: 4
    t.float "QtyCountDifference"
    t.boolean "SuppressAvailCheck", default: false
    t.integer "FuelTankSize", limit: 2
    t.boolean "NoTransfers", default: false
    t.integer "CommissionLevel"
    t.string "Barcode", limit: 255
    t.string "Style1", limit: 255
    t.string "Style2", limit: 255
    t.string "Style3", limit: 255
    t.float "DesiredROI"
    t.float "CubicSize"
    t.integer "BulkSerializedMethod", limit: 2
    t.integer "Nonfulfillable", limit: 2
    t.integer "RateEngineId"
    t.money "BaseRate", precision: 19, scale: 4
    t.integer "RateEngineIdDisplayed"
    t.integer "AccountingDepartmentId"
    t.integer "AccountingClassId"
    t.integer "ItemManufacturerId"
    t.boolean "IsPartItem", default: false, null: false
    t.money "FloorPrice", precision: 19, scale: 4, default: 0.0, null: false
    t.integer "FleetID"
    t.float "Height", default: 0.0, null: false
    t.float "Width", default: 0.0, null: false
    t.float "Length", default: 0.0, null: false
    t.boolean "SuspenseExempt", default: false, null: false
    t.string "SalesTaxCode", limit: 255
    t.ss_timestamp "Version", null: false
    t.datetime "CreatedDateTime", precision: nil
    t.datetime "UpdatedDateTime", precision: nil
    t.real "ReplacedMeterLifetimeAccumulation"
    t.integer "InstructionGlobalStoredFileId"
    t.integer "OnReturnReadyActionId", default: 0, null: false
    t.index ["Category"], name: "ItemFile$CAT"
    t.index ["Group"], name: "ItemFile$Group"
    t.index ["Header"], name: "ItemFile$Header"
    t.index ["Inactive", "NoPrintOnContract", "IsPartItem"], name: "ItemFile$Inactive"
    t.index ["InstructionGlobalStoredFileId"], name: "IX_ItemFile_InstructionGlobalStoredFileId"
    t.index ["LOOKUP"], name: "ItemFile$LOOKUP"
    t.index ["NUM"], name: "ItemFile$NUM", unique: true
    t.index ["Name"], name: "ItemFile$NAME"
    t.index ["PartNumber"], name: "ItemFile$MNSN"
    t.index ["Version"], name: "IDX_ItemFile_Version"
  end

  create_table "ItemFileOldItems", primary_key: "KEY", id: { type: :string, limit: 16 }, force: :cascade do |t|
    t.string "NAME", limit: 30
    t.string "LOC", limit: 2
    t.float "QTY", default: 0.0
    t.float "QYOT", default: 0.0
    t.money "SELL", precision: 19, scale: 4, default: 0.0
    t.money "DEP", precision: 19, scale: 4, default: 0.0
    t.money "DMG", precision: 19, scale: 4, default: 0.0
    t.integer "Msg", limit: 2
    t.datetime "SDATE", precision: nil
    t.integer "Category"
    t.string "TYPE", limit: 1
    t.string "Juris", limit: 3
    t.string "INST", limit: 25
    t.string "FUEL", limit: 10
    t.string "ADDT", limit: 10
    t.integer "PER1", default: 0
    t.integer "PER2", default: 0
    t.integer "PER3", default: 0
    t.integer "PER4", default: 0
    t.integer "PER5", default: 0
    t.integer "PER6", default: 0
    t.integer "PER7", default: 0
    t.integer "PER8", default: 0
    t.integer "PER9", default: 0
    t.integer "PER10", default: 0
    t.money "RATE1", precision: 19, scale: 4, default: 0.0
    t.money "RATE2", precision: 19, scale: 4, default: 0.0
    t.money "RATE3", precision: 19, scale: 4, default: 0.0
    t.money "RATE4", precision: 19, scale: 4, default: 0.0
    t.money "RATE5", precision: 19, scale: 4, default: 0.0
    t.money "RATE6", precision: 19, scale: 4, default: 0.0
    t.money "RATE7", precision: 19, scale: 4, default: 0.0
    t.money "RATE8", precision: 19, scale: 4, default: 0.0
    t.money "RATE9", precision: 19, scale: 4, default: 0.0
    t.money "RATE10", precision: 19, scale: 4
    t.string "RCOD", limit: 1
    t.integer "SUBR", default: 0
    t.string "PartNumber", limit: 16
    t.string "NUM", limit: 6
    t.string "MANF", limit: 16
    t.string "MODN", limit: 10
    t.string "DSTN", limit: 16
    t.string "DSTP", limit: 10
    t.integer "RMIN", default: 0
    t.integer "RMAX", default: 0
    t.string "UserDefined1", limit: 50
    t.string "UserDefined2", limit: 50
    t.real "MTOT", default: 0.0
    t.real "MTIN", default: 0.0
    t.integer "CALL", default: 0
    t.boolean "RESB", default: false
    t.boolean "RESD", default: false
    t.boolean "QUEB", default: false
    t.boolean "QUED", default: false
    t.string "SSN", limit: 6
    t.string "CUSN", limit: 6
    t.string "CNTR", limit: 6
    t.datetime "PURD", precision: nil
    t.money "PURP", precision: 19, scale: 4, default: 0.0
    t.string "DEPM", limit: 1
    t.integer "DEPR", default: 0
    t.money "SLVG", precision: 19, scale: 4, default: 0.0
    t.money "DEPA", precision: 19, scale: 4, default: 0.0
    t.money "DEPP", precision: 19, scale: 4, default: 0.0
    t.money "CURV", precision: 19, scale: 4, default: 0.0
    t.datetime "SOLD", precision: nil
    t.money "SAMT", precision: 19, scale: 4, default: 0.0
    t.money "INC1", precision: 19, scale: 4, default: 0.0
    t.money "INC2", precision: 19, scale: 4, default: 0.0
    t.money "INC3", precision: 19, scale: 4, default: 0.0
    t.money "REPC1", precision: 19, scale: 4, default: 0.0
    t.money "REPC2", precision: 19, scale: 4, default: 0.0
    t.integer "TMOT1", default: 0
    t.integer "TMOT2", default: 0
    t.integer "TMOT3", default: 0
    t.integer "HROT1", default: 0
    t.integer "HROT2", default: 0
    t.integer "HROT3", default: 0
    t.datetime "LDATE", precision: nil
    t.string "LOOKUP", limit: 100
    t.boolean "Asset", default: false
    t.string "GLAccount", limit: 50
    t.string "DeprecAccount", limit: 50
    t.string "HomeStore", limit: 3
    t.string "CurrentStore", limit: 3
    t.string "Group", limit: 20
    t.string "Location", limit: 20
    t.string "SerialNumber", limit: 50
    t.boolean "Nontaxable", default: false
    t.string "Header", limit: 20
    t.string "License", limit: 15
    t.integer "CaseQty"
    t.money "ItemPercentage", precision: 19, scale: 4
    t.string "ModelYear", limit: 10
    t.money "RetailPrice", precision: 19, scale: 4
    t.money "ExtraDepreciation", precision: 19, scale: 4
    t.boolean "Inactive", default: false
    t.money "ExtraCharges", precision: 19, scale: 4
    t.money "PriceLevelA", precision: 19, scale: 4
    t.money "PriceLevelB", precision: 19, scale: 4
    t.money "PriceLevelC", precision: 19, scale: 4
    t.boolean "NonDiscountable", default: false
    t.index ["Category"], name: "ItemFileOldItems$CAT"
    t.index ["LOOKUP"], name: "ItemFileOldItems$LOOKUP"
    t.index ["NAME"], name: "ItemFileOldItems$NAME"
    t.index ["NUM"], name: "ItemFileOldItems$NUM", unique: true
    t.index ["PartNumber"], name: "ItemFileOldItems$MNSN"
  end

  create_table "ItemFile_MarkupPercentage_Backup", id: false, force: :cascade do |t|
    t.string "NUM", limit: 6
    t.money "MarkupPercentage", precision: 19, scale: 4
  end

  create_table "ItemFile_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.string "NUM", limit: 16, null: false
    t.string "Name", limit: 150
    t.string "INST", limit: 25
    t.string "Style1", limit: 255
    t.string "Style2", limit: 255
    t.string "Style3", limit: 255
    t.string "WebLink", limit: 250
    t.string "VehicleType", limit: 250
    t.string "DescriptionLong", limit: 250
    t.string "WebGroup", limit: 250
    t.string "Group", limit: 20
    t.string "LOOKUP", limit: 100
    t.string "UserDefined1", limit: 50
    t.string "UserDefined2", limit: 50
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["Group"], name: "ItemFile_Tr$Group"
    t.index ["Inactive"], name: "ItemFile_Tr$Inactive"
    t.index ["LOOKUP"], name: "ItemFile_Tr$LOOKUP"
    t.index ["Languagecode"], name: "ItemFile_Tr$LanguageCode"
    t.index ["NUM", "Languagecode"], name: "ItemFile_Tr_Num", unique: true
    t.index ["Name"], name: "ItemFile_Tr$NAME"
  end

  create_table "ItemIncome", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "Num", limit: 6, null: false
    t.datetime "Date", precision: nil
    t.money "Income", precision: 19, scale: 4, default: 0.0
    t.integer "Times", default: 0
    t.integer "Hours", default: 0
    t.money "Repairs", precision: 19, scale: 4, default: 0.0
    t.integer "Quantity", default: 0
    t.money "Depreciation", precision: 19, scale: 4
    t.money "CostOfGoods", precision: 19, scale: 4
    t.money "SubrentalCosts", precision: 19, scale: 4
    t.money "PurchasePrice", precision: 19, scale: 4
    t.money "DamageWaiver", precision: 19, scale: 4
    t.money "ItemPercent", precision: 19, scale: 4
    t.money "Financing", precision: 19, scale: 4
    t.index ["Date"], name: "ItemIncome$Date"
    t.index ["Num", "Date"], name: "ItemIncome$ItemDate"
    t.index ["Num"], name: "ItemIncome$Item"
  end

  create_table "ItemKits", primary_key: ["Num", "SubField"], force: :cascade do |t|
    t.string "Num", limit: 6, null: false
    t.integer "SubField", limit: 2, null: false
    t.float "Quantity"
    t.string "ItemKey", limit: 20
    t.boolean "UseSpecialRate", default: false
    t.money "DiscountAmount", precision: 19, scale: 4, default: 0.0
    t.money "DailyAmount", precision: 19, scale: 4, default: 0.0
    t.money "WeeklyAmount", precision: 19, scale: 4, default: 0.0
    t.money "MonthlyAmount", precision: 19, scale: 4, default: 0.0
    t.money "MinimumAmount", precision: 19, scale: 4, default: 0.0
    t.money "DiscountPercent", precision: 19, scale: 4, default: 0.0
    t.integer "SelectType", limit: 2
    t.string "MultiGroup", limit: 40
    t.integer "ActionType", default: 0, null: false
    t.index ["Num"], name: "ItemKits$Num"
  end

  create_table "ItemKitsAuto", primary_key: ["Num", "SubField"], force: :cascade do |t|
    t.string "Num", limit: 6, null: false
    t.integer "SubField", limit: 2, null: false
    t.float "Quantity"
    t.string "ItemKey", limit: 20
    t.boolean "UseSpecialRate", default: false
    t.money "DiscountAmount", precision: 19, scale: 4, default: 0.0
    t.money "DailyAmount", precision: 19, scale: 4, default: 0.0
    t.money "WeeklyAmount", precision: 19, scale: 4, default: 0.0
    t.money "MonthlyAmount", precision: 19, scale: 4, default: 0.0
    t.money "MinimumAmount", precision: 19, scale: 4, default: 0.0
    t.money "DiscountPercent", precision: 19, scale: 4, default: 0.0
    t.string "MiscName", limit: 255
    t.integer "SelectType", limit: 2
    t.string "MultiGroup", limit: 40
    t.integer "ActionType", default: 0, null: false
    t.index ["Num"], name: "ItemKitsAuto$Num"
  end

  create_table "ItemKitsRepairs", primary_key: ["Num", "SubField"], force: :cascade do |t|
    t.string "Num", limit: 6, null: false
    t.integer "SubField", limit: 2, null: false
    t.float "Quantity"
    t.string "ItemKey", limit: 20
    t.boolean "UseSpecialRate", default: false
    t.money "DiscountAmount", precision: 19, scale: 4, default: 0.0
    t.money "DailyAmount", precision: 19, scale: 4, default: 0.0
    t.money "WeeklyAmount", precision: 19, scale: 4, default: 0.0
    t.money "MonthlyAmount", precision: 19, scale: 4, default: 0.0
    t.money "MinimumAmount", precision: 19, scale: 4, default: 0.0
    t.money "DiscountPercent", precision: 19, scale: 4, default: 0.0
    t.string "MiscName", limit: 255
    t.integer "SelectType", limit: 2
    t.string "MultiGroup", limit: 40
    t.integer "ActionType", default: 0, null: false
    t.index ["Num"], name: "ItemKitsRepairs$Num"
  end

  create_table "ItemLocationDefaults", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Store", limit: 3, null: false
    t.integer "FulfillmentActionsId", null: false
    t.integer "DepartmentId"
    t.integer "ItemLocationId", null: false
  end

  create_table "ItemLocationHistory", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Num", limit: 6, null: false
    t.varchar "UniqueIdentifier", limit: 255
    t.integer "ItemLocationId", null: false
    t.string "Store", limit: 3, default: "0", null: false
    t.float "Latitude", default: 0.0
    t.float "Longitude", default: 0.0
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.index ["Num"], name: "ItemLocationHistory_Num"
    t.index ["UniqueIdentifier"], name: "ItemLocationHistory_UniqueIdentifier"
  end

  create_table "ItemLocations", primary_key: "ItemLocationId", id: :integer, force: :cascade do |t|
    t.string "Store", limit: 3, default: "0", null: false
    t.string "Description", limit: 255, null: false
    t.string "LocationType", limit: 255
    t.float "Latitude", default: 0.0
    t.float "Longitude", default: 0.0
    t.boolean "RentReady", default: false
    t.boolean "Inactive", default: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
  end

  create_table "ItemMaintenance", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Num", limit: 6
    t.string "Schedule", limit: 1
    t.string "Type", limit: 1
    t.integer "Frequency"
    t.integer "Reading"
    t.datetime "LastDate", precision: nil
    t.string "Description", limit: 50
    t.money "MaintenanceCost", precision: 19, scale: 4
    t.boolean "CreateIRO", default: false
    t.float "IRODuration"
    t.string "IROCustomer", limit: 50
    t.integer "ItemMaintenanceLink"
    t.integer "ItemMaintenanceDescriptionId"
    t.integer "JobTemplateId"
    t.string "MaintenanceFile", limit: 255
    t.string "Notes", limit: 255
    t.boolean "OneTime", default: false, null: false
    t.boolean "Inactive", default: false, null: false
    t.integer "LastJobId"
    t.integer "CurrentJobId"
    t.string "CurrentRepairContract", limit: 10
  end

  create_table "ItemMaintenanceDescription", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.boolean "Inactive", default: false, null: false
    t.boolean "Reportable", default: false, null: false
  end

  create_table "ItemMaintenanceDescription_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "ItemMaintenanceDescriptionId", null: false
    t.string "Description", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["ItemMaintenanceDescriptionId", "Languagecode"], name: "ItemMaintenenaceDescription_Tr_ItemMaintenanceDescriptionId", unique: true
  end

  create_table "ItemMaintenanceDetail", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Num", limit: 6
    t.datetime "Date", precision: nil
    t.string "Schedule", limit: 1
    t.integer "Reading"
    t.string "Serviceman", limit: 50
    t.string "Comments", limit: 250
    t.money "MaintenanceCost", precision: 19, scale: 4
    t.integer "Opr"
    t.integer "ItemMaintenanceId", default: 0
    t.integer "JobOrderId", default: 0
    t.integer "ServicemanId", default: 0
    t.string "ContractLink", limit: 11
    t.index ["ContractLink"], name: "ItemMaintenanceDetail_ContractLink"
    t.index ["ItemMaintenanceId"], name: "ItemMaintenanceDetail_ItemMaintenanceId"
    t.index ["JobOrderId"], name: "ItemMaintenanceDetail_JobOrderId"
    t.index ["Num"], name: "ItemMaintenanceDetail$Num"
    t.index ["ServicemanId"], name: "ItemMaintenanceDetail_ServiceManId"
  end

  create_table "ItemMaintenanceType", primary_key: "Type", id: { type: :string, limit: 10 }, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.integer "ListOrder"
  end

  create_table "ItemMaintenanceType_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.string "Type", limit: 10, null: false
    t.string "Description", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["Type", "Languagecode"], name: "ItemMaintenanceType_Tr_Type", unique: true
  end

  create_table "ItemManufacturer", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Title", limit: 100
    t.string "Description", limit: 255
    t.string "AccountingLink", limit: 20
    t.boolean "Disabled", default: false, null: false
  end

  create_table "ItemPicture", primary_key: ["INum", "PictureIndex"], force: :cascade do |t|
    t.string "INum", limit: 6, null: false
    t.binary "Picture"
    t.datetime "ModifiedDate", precision: nil
    t.integer "PictureIndex", null: false
    t.integer "GlobalStoredFileId"
    t.index ["GlobalStoredFileId", "ModifiedDate"], name: "IX_ItemPicture_Global_Picture_Modified"
  end

  create_table "ItemPurchaseDetail", primary_key: "PurchaseNumber", id: :integer, force: :cascade do |t|
    t.string "ItemNumber", limit: 6
    t.integer "VendorNumber"
    t.integer "PONumber"
    t.datetime "PurchaseDate", precision: nil
    t.float "QuantityPurchased", default: 0.0
    t.float "QuantitySold", default: 0.0
    t.money "PriceEach", precision: 19, scale: 4, default: 0.0
    t.string "SerialNumber", limit: 50
    t.money "ExtraCharges", precision: 19, scale: 4, default: 0.0
    t.boolean "Improvement", default: false
    t.string "Description", limit: 255
    t.boolean "Disposed", default: false
    t.boolean "UseLocalDepreciation", default: false
    t.string "Method", limit: 1
    t.float "Period"
    t.money "SalvageValue", precision: 19, scale: 4
    t.money "ExtraDepreciation", precision: 19, scale: 4
    t.money "PreviousMonth", precision: 19, scale: 4
    t.money "Accrued", precision: 19, scale: 4
    t.money "CurrentValue", precision: 19, scale: 4
    t.integer "MidConvention", limit: 2
    t.index ["ItemNumber"], name: "ItemPurchaseDetail$ItemNumber"
  end

  create_table "ItemPurchaseDetailFinancing", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "ItemNumber", limit: 6, null: false
    t.integer "PurchaseNumber", default: 0
    t.string "LoanCompany", limit: 255
    t.string "LoanNumber", limit: 255
    t.datetime "LoanStartDate", precision: nil
    t.datetime "LoanEndDate", precision: nil
    t.datetime "LoanPaidOffDate", precision: nil
    t.money "LoanAmount", precision: 19, scale: 4, default: 0.0
    t.float "LoanPercentage", default: 0.0
    t.integer "LoanMonths", default: 0
    t.string "Attachment", limit: 255
    t.string "LoanNote", limit: 255
    t.boolean "Inactive", default: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.money "PayoffAmount", precision: 19, scale: 4, default: 0.0
    t.money "InterestPaid", precision: 19, scale: 4, default: 0.0
    t.index ["ItemNumber"], name: "ItemPurchaseDetailFinancing_ItemNumber"
    t.index ["PurchaseNumber"], name: "ItemPurchaseDetailFinancing_PurchaseNumber"
  end

  create_table "ItemQYOTLedger", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "JOB", null: false
    t.string "ServerName", limit: 255, null: false
    t.integer "OpNo", null: false
    t.string "NUM", limit: 10, null: false
    t.string "CNTR", limit: 10, null: false
    t.float "ADJ", null: false
    t.datetime "TimeStamp", precision: nil, null: false
    t.string "Detail", limit: 255
    t.boolean "VOID", default: false, null: false
    t.index ["JOB"], name: "JOBIndex"
    t.index ["VOID"], name: "VoidIndex"
  end

  create_table "ItemQuantityChange", primary_key: "QtyChangeNumber", id: :integer, force: :cascade do |t|
    t.string "Num", limit: 6
    t.datetime "StartDate", precision: nil
    t.datetime "EndDate", precision: nil
    t.string "Store", limit: 3
    t.float "Quantity"
    t.string "UpdateType", limit: 10
    t.index ["Num"], name: "ItemQuantityChange$Num"
  end

  create_table "ItemRateCode", primary_key: "Id", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.integer "ListOrder"
  end

  create_table "ItemRateCode_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "ItemRateCodeId", null: false
    t.string "Description", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["ItemRateCodeId", "Languagecode"], name: "ItemRateCode_Tr_ItemRateCodeId", unique: true
  end

  create_table "ItemRates", primary_key: "Rate", id: :integer, force: :cascade do |t|
    t.string "Num", limit: 6
    t.string "CNum", limit: 6
    t.integer "Type", default: 0
    t.integer "Opr"
    t.datetime "DateCreated", precision: nil
    t.datetime "StartDate", precision: nil
    t.datetime "EndDate", precision: nil
    t.money "DiscountAmount", precision: 19, scale: 4, default: 0.0
    t.money "DailyAmount", precision: 19, scale: 4, default: 0.0
    t.money "WeeklyAmount", precision: 19, scale: 4, default: 0.0
    t.money "MonthlyAmount", precision: 19, scale: 4, default: 0.0
    t.money "MinimumAmount", precision: 19, scale: 4, default: 0.0
    t.money "DiscountPercent", precision: 19, scale: 4, default: 0.0
    t.string "Store", limit: 3
    t.integer "JobSite"
    t.integer "ChangedBy"
    t.datetime "DateChanged", precision: nil
    t.text "ChangeNote"
    t.integer "RateEngineId"
    t.money "BaseRate", precision: 19, scale: 4
    t.integer "SpecialRateTypeId", default: 0, null: false
    t.index ["CNum"], name: "ItemRates$CNum"
    t.index ["JobSite"], name: "ItemRates$JobSite"
    t.index ["Num"], name: "ItemRates$Num"
    t.index ["Opr"], name: "ItemRates$Opr"
    t.index ["Rate"], name: "ItemRates$Rate", unique: true
    t.index ["Store"], name: "ItemRates$Store"
    t.index ["Type"], name: "ItemRates$Type"
  end

  create_table "ItemRatesDaily", primary_key: "Rate", id: :integer, force: :cascade do |t|
    t.string "Num", limit: 6
    t.integer "DayOfWeek", limit: 2
    t.string "CNum", limit: 6
    t.integer "Type", default: 0
    t.string "Store", limit: 3
    t.integer "Opr"
    t.datetime "DateCreated", precision: nil
    t.datetime "StartDate", precision: nil
    t.datetime "EndDate", precision: nil
    t.integer "Per1", default: 0
    t.integer "Per2", default: 0
    t.integer "Per3", default: 0
    t.integer "Per4", default: 0
    t.integer "Per5", default: 0
    t.integer "Per6", default: 0
    t.integer "Per7", default: 0
    t.integer "Per8", default: 0
    t.integer "Per9", default: 0
    t.integer "Per10", default: 0
    t.money "Rate1", precision: 19, scale: 4, default: 0.0
    t.money "Rate2", precision: 19, scale: 4, default: 0.0
    t.money "Rate3", precision: 19, scale: 4, default: 0.0
    t.money "Rate4", precision: 19, scale: 4, default: 0.0
    t.money "Rate5", precision: 19, scale: 4, default: 0.0
    t.money "Rate6", precision: 19, scale: 4, default: 0.0
    t.money "Rate7", precision: 19, scale: 4, default: 0.0
    t.money "Rate8", precision: 19, scale: 4, default: 0.0
    t.money "Rate9", precision: 19, scale: 4, default: 0.0
    t.money "Rate10", precision: 19, scale: 4, default: 0.0
    t.money "Sell", precision: 19, scale: 4, default: 0.0
    t.money "DiscountAmount", precision: 19, scale: 4, default: 0.0
    t.money "DiscountPercent", precision: 19, scale: 4, default: 0.0
    t.index ["CNum"], name: "ItemRatesDaily$CNum"
    t.index ["Num"], name: "ItemRatesDaily$Num"
    t.index ["Opr"], name: "ItemRatesDaily$Opr"
    t.index ["Rate"], name: "ItemRatesDaily$Rate", unique: true
    t.index ["Store"], name: "ItemRatesDaily$Store"
    t.index ["Type"], name: "ItemRatesDaily$Type"
  end

  create_table "ItemReadyAction", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.integer "CreatedBy", default: -1, null: false
    t.integer "ChangedBy", default: -1, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.string "ChangeNote", limit: 255
    t.boolean "Inactive", default: false, null: false
  end

  create_table "ItemSerialization", primary_key: "UniqueIdentifier", id: { type: :string, limit: 255 }, force: :cascade do |t|
    t.string "Num", limit: 6
    t.string "SerialNumber", limit: 255
    t.integer "PurchaseNumber"
    t.datetime "DateAdd", precision: nil
    t.datetime "DateDispose", precision: nil
    t.boolean "Inactive", default: false
    t.string "Note", limit: 255
    t.string "CurrentStore", limit: 3
    t.integer "ItemLocationId"
    t.datetime "LocationDate", precision: nil
    t.integer "Id", null: false
    t.index ["Id"], name: "ItemSerialization_ID", unique: true
    t.index ["Num"], name: "ItemSerialization$Num"
  end

  create_table "ItemStatus", primary_key: "ItemNumber", id: { type: :string, limit: 6 }, force: :cascade do |t|
    t.boolean "IRO", default: false, null: false
    t.boolean "IMO", default: false, null: false
    t.boolean "ISO", default: false, null: false
  end

  create_table "ItemType", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "TypeDescrip", limit: 30
    t.string "Type", limit: 1
    t.integer "ListOrder"
    t.index ["Type"], name: "ItemType$Type", unique: true
  end

  create_table "ItemType_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.string "Type", limit: 1, null: false
    t.string "TypeDescrip", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["Type", "Languagecode"], name: "ItemType_Tr_Type", unique: true
  end

  create_table "ItemWarranty", primary_key: "ItemWarranty", id: :integer, force: :cascade do |t|
    t.string "Num", limit: 6
    t.datetime "StartDate", precision: nil
    t.datetime "EndDate", precision: nil
    t.integer "VendorNumber"
    t.string "WarrantyPart", limit: 250
    t.string "Notes", limit: 255
    t.index ["Num"], name: "ItemWarranty$Num"
    t.index ["VendorNumber"], name: "ItemWarranty$VendorNumber"
  end

  create_table "ItemsForSale", primary_key: "Number", id: :integer, force: :cascade do |t|
    t.string "Num", limit: 6
    t.datetime "TimeStamp", precision: nil
    t.string "Notes", limit: 255
    t.index ["Num"], name: "ItemsForSale$Num", unique: true
  end

  create_table "ItemsRelated", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "NUM", limit: 10, null: false
    t.string "RelatedNum", limit: 10, null: false
    t.integer "ItemsRelatedTypeId", default: 1, null: false
    t.boolean "Inactive", default: false, null: false
    t.integer "CreatedBy", default: -1, null: false
    t.integer "ChangedBy", default: -1, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.string "ChangeNote", limit: 255
    t.index ["ItemsRelatedTypeId"], name: "ItemsRelated_ItemsRelatedTypeId"
    t.index ["NUM"], name: "ItemsRelated_NUM"
    t.index ["RelatedNum"], name: "ItemsRelated_RelatedNUM"
  end

  create_table "ItemsRelatedType", primary_key: "Id", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.boolean "Inactive", default: false, null: false
  end

  create_table "JobOrder", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.varchar "ControlNum", limit: 20, null: false
    t.varchar "ReferenceID", limit: 50
    t.integer "ReferenceType"
    t.varchar "Notes", limit: 250
    t.integer "JobTemplateID"
    t.boolean "RequiresReview", null: false
    t.string "AssignedToID", limit: 100
    t.datetime "DateExpectedToComplete", precision: nil, null: false
    t.datetime "DateCompleted", precision: nil
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "CreatedBy", null: false
    t.integer "ChangedBy", null: false
    t.datetime "DateChanged", precision: nil, null: false
    t.varchar_max "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.boolean "CustomerFacing", default: false, null: false
    t.integer "AssignedToType"
    t.boolean "LogTimeIndividually"
    t.integer "Priority"
    t.integer "SortOrder"
    t.integer "EstimatedTimeinMinutes"
    t.integer "JobStatus"
  end

  create_table "JobOrderDetail", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "JobOrderID", null: false
    t.varchar "JobDescription", limit: 250
    t.varchar "Notes", limit: 250
    t.integer "Priority"
    t.decimal "EstimatedTime", precision: 18, scale: 2
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "CreatedBy", null: false
    t.integer "ChangedBy", null: false
    t.datetime "DateChanged", precision: nil, null: false
    t.varchar_max "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.integer "AssignedToID"
  end

  create_table "JobOrderDetailResource", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "JobOrderID"
    t.varchar "Notes", limit: 250
    t.binary "FileData"
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "CreatedBy", null: false
    t.integer "ChangedBy", null: false
    t.datetime "DateChanged", precision: nil, null: false
    t.varchar_max "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.integer "JobOrderTaskID"
  end

  create_table "JobOrderLog", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "JobOrderID", null: false
    t.datetime "TimeIn", precision: nil, null: false
    t.datetime "TimeOut", precision: nil
    t.integer "TaskToDeduct", null: false
    t.integer "TimeToDeduct", null: false
    t.integer "WorkStatus", null: false
    t.integer "OperatorID", null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "CreatedBy", null: false
    t.integer "ChangedBy", null: false
    t.datetime "DateChanged", precision: nil, null: false
    t.varchar_max "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.integer "JobOrderTaskID"
  end

  create_table "JobOrderTask", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "QuestionID"
    t.varchar "Text", limit: 250, null: false
    t.varchar "CheckFor", limit: 250
    t.varchar "Notes", limit: 250
    t.integer "TaskType", null: false
    t.integer "Priority", null: false
    t.varchar "OrderTaskAnswerString", limit: 250
    t.boolean "OrderTaskAnswerBoolean"
    t.decimal "OrderTaskAnswerNumber", precision: 18, scale: 2
    t.integer "TaskStatus"
    t.boolean "PassInspection"
    t.boolean "BooleanAnswer"
    t.varchar "StringAnswer", limit: 250
    t.decimal "DecimalMinValue", precision: 18, scale: 2
    t.decimal "DecimalMaxValue", precision: 18, scale: 2
    t.datetime "DateofActivation", precision: nil, null: false
    t.datetime "DateofExpiration", precision: nil, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "CreatedBy", null: false
    t.integer "ChangedBy", null: false
    t.datetime "DateChanged", precision: nil, null: false
    t.varchar_max "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.boolean "LogTimeIndividually"
    t.string "AssignedToID", limit: 100
    t.integer "AssignedToType"
    t.decimal "EstimatedTime", precision: 18
    t.integer "JobOrderID"
    t.integer "SortOrder"
    t.decimal "StepIncrementValue", precision: 18, scale: 2
    t.decimal "DecimalRangeCeiling", precision: 18, scale: 2
  end

  create_table "JobQuestion", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.varchar "Text", limit: 250, null: false
    t.varchar "CheckFor", limit: 250
    t.varchar "Notes", limit: 250
    t.integer "QuestionType", null: false
    t.integer "Priority", null: false
    t.varchar "QuestionTags", limit: 250
    t.boolean "BooleanAnswer"
    t.varchar "StringAnswer", limit: 250
    t.decimal "DecimalMinValue", precision: 18, scale: 2
    t.decimal "DecimalMaxValue", precision: 18, scale: 2
    t.datetime "DateofActivation", precision: nil, null: false
    t.datetime "DateofExpiration", precision: nil, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "CreatedBy", null: false
    t.integer "ChangedBy", null: false
    t.datetime "DateChanged", precision: nil, null: false
    t.varchar_max "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.boolean "LogTimeIndividually"
    t.decimal "StepIncrementValue", precision: 18, scale: 2
    t.decimal "DecimalRangeCeiling", precision: 18, scale: 2
  end

  create_table "JobQuestionType", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.varchar "Name", limit: 250, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "CreatedBy", null: false
    t.integer "ChangedBy", null: false
    t.datetime "DateChanged", precision: nil, null: false
    t.varchar_max "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "JobReferenceType", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.text "Name"
    t.text "TableName"
    t.text "FieldName"
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "CreatedBy", null: false
    t.integer "ChangedBy", null: false
    t.datetime "DateChanged", precision: nil, null: false
    t.varchar_max "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "JobTemplate", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.varchar "TemplateName", limit: 100, null: false
    t.integer "Priority", null: false
    t.varchar "TemplateTags", limit: 250
    t.integer "TemplateType", null: false
    t.varchar "Notes", limit: 250
    t.datetime "DateofActivation", precision: nil, null: false
    t.datetime "DateofExpiration", precision: nil, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "CreatedBy", null: false
    t.integer "ChangedBy", null: false
    t.datetime "DateChanged", precision: nil, null: false
    t.varchar_max "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.boolean "CustomerFacing", default: false, null: false
    t.boolean "LogTimeIndividually"
    t.integer "EstimatedTimeinMinutes"
    t.string "AssignedToID", limit: 100
    t.integer "AssignedToType"
  end

  create_table "JobTemplateAssignment", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.text "ReferenceID"
    t.integer "ReferenceType", null: false
    t.text "TemplateName"
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "CreatedBy", null: false
    t.integer "ChangedBy", null: false
    t.datetime "DateChanged", precision: nil, null: false
    t.varchar_max "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "JobTemplateAssociation", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "ParentTemplateID", null: false
    t.integer "ChildTemplateID", null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "CreatedBy", null: false
    t.integer "ChangedBy", null: false
    t.datetime "DateChanged", precision: nil, null: false
    t.varchar_max "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "JobTemplateQuestions", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "JobTemplateID", null: false
    t.integer "JobQuestionID", null: false
    t.integer "SortOrder", null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "CreatedBy", null: false
    t.integer "ChangedBy", null: false
    t.datetime "DateChanged", precision: nil, null: false
    t.varchar_max "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "KitsActionTypes", primary_key: "ID", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 1000
  end

  create_table "KitsActionTypes_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "LanguageCode", limit: 10, null: false
    t.integer "KitsActionTypeId", null: false
    t.string "Description", limit: 1000
  end

  create_table "LanguageCode", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "LanguageCode", limit: 10, null: false
    t.string "LanguageName", limit: 255, null: false
    t.boolean "Inactive", default: false, null: false
    t.index ["LanguageCode"], name: "LanguageCode_LanguageCode", unique: true
  end

  create_table "Ledger", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "Batch", null: false
    t.integer "LedgerCodeId", null: false
    t.datetime "TransactionDate", precision: nil, null: false
    t.integer "GLTransactionGroupId", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.string "ChangeNote"
    t.string "TransactionStore", limit: 3, null: false
    t.integer "TaxCode", default: 0, null: false
  end

  create_table "LedgerCode", primary_key: "ID", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
  end

  create_table "LedgerContractLineDetail", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "LedgerKeyContractLineId", null: false
    t.integer "LedgerDetailCodeId", null: false
    t.money "Amount", precision: 19, scale: 4, default: 0.0, null: false
  end

  create_table "LedgerDetail", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "LedgerId", null: false
    t.integer "LedgerDetailCodeId", null: false
    t.money "Amount", precision: 19, scale: 4, default: 0.0, null: false
  end

  create_table "LedgerDetailCode", primary_key: "ID", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
  end

  create_table "LedgerKeyContract", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "LedgerId", null: false
    t.string "ContractNumber", limit: 10, null: false
    t.string "CustomerNumber", limit: 6, null: false
    t.boolean "NonTaxable", default: false, null: false
    t.string "Status", limit: 1, null: false
    t.string "SecondaryStatus", limit: 10, default: "", null: false
    t.integer "AccountingMethodId", null: false
    t.integer "Salesman", default: 0, null: false
    t.string "InvoiceNumber", limit: 50
    t.string "PaymentMethod", limit: 1, default: "", null: false
  end

  create_table "LedgerKeyContractLine", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "LedgerKeyContractId", null: false
    t.string "ContractNumber", limit: 10, null: false
    t.integer "LineNumber", null: false
    t.boolean "NonTaxable", default: false, null: false
    t.string "ItemNumber", limit: 6, null: false
    t.integer "ItemCategory", null: false
    t.integer "ItemGLIncome", default: 0, null: false
    t.string "ItemStore", limit: 3, null: false
  end

  create_table "LeftMenu", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "ParentId"
    t.integer "ParentOrder"
    t.integer "ChildOrder"
    t.boolean "IsSecondaryParent", default: false, null: false
    t.integer "SecondaryParentId"
    t.integer "SecurityListId"
    t.string "Exe", limit: 256
    t.string "Arguments", limit: 256
    t.boolean "RequireCredentials", null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.string "KeyboardShortcut", limit: 100
  end

  create_table "LeftMenuFavorites", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "OperatorId", null: false
    t.integer "Order", null: false
    t.integer "LeftMenuId", null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "Letters", primary_key: "Name", id: { type: :string, limit: 50 }, force: :cascade do |t|
    t.text "Letter"
  end

  create_table "LicenseInfo", primary_key: "TimeStamp", id: { type: :datetime, precision: nil }, force: :cascade do |t|
    t.string "User", limit: 50
    t.string "Directory", limit: 100
    t.string "ComputerNumber", limit: 20
    t.string "DongleNumber", limit: 50
    t.integer "NumberUsers"
    t.integer "NumberStores"
    t.datetime "ExpirationDate", precision: nil
    t.string "Version", limit: 100
    t.integer "DBVersion"
    t.boolean "TimeClock", default: false
    t.boolean "PurchaseOrder", default: false
    t.boolean "CreditCard", default: false
    t.boolean "MassFax", default: false
    t.string "Notes", limit: 255
    t.boolean "TruckRouting", default: false
    t.boolean "Website", default: false
    t.boolean "DashBoard", default: false
    t.integer "Iteration"
    t.boolean "1", default: false
    t.boolean "2", default: false
    t.boolean "3", default: false
    t.boolean "4", default: false
    t.boolean "5", default: false
    t.boolean "6", default: false
    t.boolean "7", default: false
    t.boolean "8", default: false
    t.boolean "9", default: false
    t.boolean "10", default: false
    t.boolean "11", default: false
    t.boolean "12", default: false
    t.boolean "13", default: false
    t.boolean "14", default: false
    t.boolean "15", default: false
    t.boolean "16", default: false
    t.boolean "17", default: false
    t.boolean "18", default: false
    t.boolean "19", default: false
    t.boolean "20", default: false
    t.boolean "21", default: false
    t.boolean "22", default: false
    t.boolean "23", default: false
    t.boolean "24", default: false
    t.boolean "25", default: false
    t.boolean "26", default: false
    t.boolean "27", default: false
    t.boolean "28", default: false
    t.boolean "29", default: false, null: false
    t.boolean "30", default: false, null: false
    t.integer "0"
  end

  create_table "Locks", primary_key: ["Lock1", "Lock2"], force: :cascade do |t|
    t.integer "Lock1", null: false
    t.integer "Lock2", null: false
    t.string "Job", limit: 2048
    t.string "User", limit: 50
    t.datetime "DateStamp", precision: nil
    t.string "ProgramName", limit: 255
    t.string "ServerName", limit: 100
    t.index ["Lock1"], name: "Locks$Lock1"
    t.index ["Lock2"], name: "Locks$Lock2"
  end

  create_table "LoyaltyDetail", primary_key: "TotalsContractsId", id: :integer, default: nil, force: :cascade do |t|
    t.datetime "Date", precision: nil, null: false
    t.money "Amount", precision: 19, scale: 4, null: false
    t.datetime "ExpirationDate", precision: nil, null: false
    t.money "AmountApplied", precision: 19, scale: 4, null: false
    t.boolean "Completed", null: false
    t.string "Cusn", limit: 6
    t.integer "LoyaltyLevelId"
    t.index ["Cusn"], name: "LoyaltyDetail_Cusn"
  end

  create_table "LoyaltyLevel", primary_key: "LoyaltyLevelId", id: :integer, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.float "RentLoyalty", null: false
    t.float "SaleLoyalty", null: false
    t.float "AssetLoyalty", null: false
    t.float "DmgWvrLoyalty", null: false
    t.float "OtherLoyalty", null: false
    t.float "ItemPercentLoyalty", null: false
    t.boolean "Inactive", null: false
    t.integer "ExpirationMonths"
    t.integer "DisbursementNumber"
  end

  create_table "MapAddressAliases", id: :integer, force: :cascade do |t|
    t.string "ogAddress", limit: 255, null: false
    t.string "verifiedAddress", limit: 255
    t.integer "opId", default: 0
    t.datetime "aliasDate", precision: nil
    t.integer "timesAccepted", default: 0
    t.integer "timesMatched", default: 0
    t.float "aliasStrength", default: 0.0
  end

  create_table "MapColLayout", primary_key: ["tabId", "colName"], force: :cascade do |t|
    t.integer "tabId", default: 0, null: false
    t.string "colName", limit: 255, null: false
    t.integer "colSequence", limit: 2
    t.integer "colWidth"
    t.boolean "isHidden", default: false
  end

  create_table "MapGPSFences", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Name", limit: 255
    t.integer "GeoFenceId"
    t.float "Latitude"
    t.float "Longitude"
    t.float "Radius"
    t.boolean "Inactive", default: false
  end

  create_table "MapGPSMessages", primary_key: "messageID", id: :integer, default: 0, force: :cascade do |t|
    t.string "unitID", limit: 255
    t.integer "messageType", default: 0
    t.text "messageText"
    t.datetime "sentOn", precision: nil
    t.string "statusString", limit: 255
    t.string "responseString", limit: 255
    t.datetime "LastUpdated", precision: nil
  end

  create_table "MapGPSWorkOrders", primary_key: "workOrderID", id: :integer, default: nil, force: :cascade do |t|
    t.string "contractNumber", limit: 255
    t.integer "destinationType", limit: 1
    t.integer "routeNumber"
    t.datetime "tripDate", precision: nil
    t.string "tripStatusString", limit: 255
    t.integer "inactiveMessageID"
    t.integer "UnitId"
    t.integer "workOrderTypeId"
    t.string "jobNumber", limit: 255
    t.string "projectId", limit: 255
    t.integer "priorityID"
    t.integer "statusID"
    t.integer "subStatusID"
    t.string "statusString", limit: 255
    t.datetime "statusChangeOn", precision: nil
    t.string "Other", limit: 255
    t.datetime "createdOn", precision: nil
    t.datetime "sentToUnitOn", precision: nil
    t.datetime "estimatedArrivalTime", precision: nil
    t.datetime "estimatedDepartureTime", precision: nil
    t.datetime "calculatedArrivalTime", precision: nil
    t.datetime "calculatedDepartureTime", precision: nil
    t.datetime "actualArrivalTime", precision: nil
    t.datetime "actualDepartureTime", precision: nil
    t.datetime "lastUpdateOn", precision: nil
  end

  create_table "MapIt", primary_key: "Name", id: { type: :string, limit: 50 }, force: :cascade do |t|
    t.string "URL", limit: 100
    t.string "OrigAddr", limit: 15
    t.string "OrigCity", limit: 15
    t.string "OrigState", limit: 15
    t.string "OrigZip", limit: 15
    t.string "OrigCountry", limit: 15
    t.string "DestAddr", limit: 15
    t.string "DestCity", limit: 15
    t.string "DestState", limit: 15
    t.string "DestZip", limit: 15
    t.string "DestCountry", limit: 15
  end

  create_table "MapNotifyDetail", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "ContractNumber", limit: 10
    t.integer "DestinationType", limit: 1, null: false
    t.integer "TransactionNotificationNumber", default: 0, null: false
    t.integer "TriggerId", default: 0, null: false
    t.integer "StatusId", default: 0, null: false
    t.datetime "LastActivity", precision: nil
  end

  create_table "MapNotifyDetailLog", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "DetailId", default: 0, null: false
    t.integer "StatusId", default: 0, null: false
    t.datetime "TimeStamp", precision: nil
    t.string "Notes", limit: 255
  end

  create_table "MapNotifyTriggerDefinitions", primary_key: "Id", id: :integer, default: 0, force: :cascade do |t|
    t.string "Name", limit: 255
    t.text "TemplateDef"
    t.string "Flag", limit: 255
  end

  create_table "MapRouteCrewDetail", primary_key: ["routeNumber", "opNo"], force: :cascade do |t|
    t.integer "routeNumber", default: 0, null: false
    t.integer "opNo", default: 0, null: false
    t.integer "crewType", default: 0
  end

  create_table "MapRouteDetails", primary_key: ["contractNumber", "destinationType"], force: :cascade do |t|
    t.string "contractNumber", limit: 10, null: false
    t.integer "destinationType", limit: 1, null: false
    t.integer "routeNumber"
    t.integer "routeSequence", default: -2
    t.datetime "preferredArrival", precision: nil
    t.float "stopTime", default: 0.0
    t.string "selectedAddress", limit: 255
    t.float "latitude", default: 0.0
    t.float "longitude", default: 0.0
    t.boolean "confirmedAddress", default: false
    t.string "contractStore", limit: 3, default: "000"
    t.datetime "PromisedArrival", precision: nil
    t.datetime "PromisedDeparture", precision: nil
    t.datetime "ActualArrival", precision: nil
    t.datetime "ActualDeparture", precision: nil
    t.integer "ArrivalDataFrom"
    t.integer "DepartureDataFrom"
    t.string "GPSWorkOrderIdString", limit: 255
    t.datetime "GPSLastTimeStamp", precision: nil
    t.integer "GPSLastWorkOrderStatusNumber"
    t.string "GPSLastWorkOrderStatusString", limit: 255
    t.string "customerName", limit: 255
    t.string "address", limit: 255
    t.string "city", limit: 255
    t.string "state", limit: 4
    t.string "zip", limit: 12
    t.string "phone", limit: 20
    t.string "email", limit: 254, default: "", null: false
    t.string "tripStatusString", limit: 255
    t.string "deliveryContact", limit: 255
    t.string "deliveryCompany", limit: 255
    t.datetime "GPSEstimatedArrivalTime", precision: nil
    t.datetime "GPSEstimatedDepartureTime", precision: nil
    t.datetime "MPEstimatedArrivalTime", precision: nil
    t.datetime "MPEstimatedDepartureTime", precision: nil
    t.float "distanceFromStartStore", default: 0.0
    t.string "onTimeStatusString", limit: 255
    t.float "transStopMinutes"
    t.float "transItemSetupTime"
    t.integer "transCrewCount", limit: 2
    t.float "DistanceFromPriorStop"
    t.string "PriorStopName", limit: 255
    t.integer "GeoFenceRadius"
    t.float "GPSActualLatitude"
    t.float "GPSActualLongitude"
    t.float "GPSActualAccuracy"
    t.integer "GPSActualFrom"
    t.datetime "LastEditDate", precision: nil
    t.integer "TransLastModNum"
    t.float "TransLastCubes"
    t.datetime "MessageSentOn", precision: nil
    t.integer "TransNotify", default: 0
    t.integer "NotifyStatusId", default: 0
    t.index ["routeNumber"], name: "MapRouteDetails$routeNumber"
  end

  create_table "MapRouteEdits", primary_key: ["routeNumber", "timeStamp"], force: :cascade do |t|
    t.integer "routeNumber", null: false
    t.datetime "timeStamp", precision: nil, null: false
    t.integer "operatorID"
    t.string "contractNumber", limit: 8
    t.integer "contractType", limit: 1
    t.string "editType", limit: 4
    t.text "note"
  end

  create_table "MapRouteNames", primary_key: "NameId", id: :integer, force: :cascade do |t|
    t.string "Name", limit: 255
    t.boolean "inactive", default: false
    t.float "Latitude"
    t.float "Longitude"
    t.float "Radius"
    t.string "Store", limit: 255
    t.string "AutoLogCustCSV", limit: 255
    t.string "Notes", limit: 255
  end

  create_table "MapRouterOptions", primary_key: "storeNumber", id: { type: :string, limit: 3, default: "000" }, force: :cascade do |t|
    t.string "mapNameFormat", limit: 50
    t.boolean "requireID_Route", default: false
    t.boolean "trackAddressEdits", default: false
    t.string "mapSaveFolder", limit: 255
    t.integer "RouteAdminLevel", limit: 2, default: 3
    t.string "driverInNotes", limit: 16, default: "None"
    t.string "crewInNotes", limit: 16, default: "None"
    t.money "WarnOnOverweightDeliveries", precision: 19, scale: 4, default: 85.0
    t.money "WarnOnOverweightPickups", precision: 19, scale: 4, default: 85.0
    t.boolean "DoMapPointSave", default: false
    t.integer "RouteExportFormat", default: 0
    t.string "RouteExportLocation", limit: 255
    t.integer "RouteSaveFormat", default: 0
    t.integer "UseMetricStandards", limit: 2, default: 0
    t.string "MapBalloonOptions", limit: 255
    t.integer "MapBalloonTitleOption", limit: 2, default: 0
    t.integer "AliasMinMatches", limit: 2, default: 0
    t.float "AliasMatchPercentage", default: 0.0
    t.text "gpsLoginURL"
    t.string "gpsAdminName", limit: 255
    t.string "gpsAdminPassword", limit: 255
    t.integer "FormatNumberContractDelivery", limit: 2, default: 0
    t.integer "FormatNumberContractPickup", limit: 2, default: 0
    t.integer "FormatNumberContractService", limit: 2, default: 0
    t.integer "PrintCountContractDelivery", limit: 2, default: 0
    t.integer "PrintCountContractPickup", limit: 2, default: 0
    t.integer "PrintCountContractService", limit: 2, default: 0
    t.integer "PrintCountMaps", limit: 2, default: 0
    t.real "DCenterRefreshInterval", default: 5.0
    t.real "DServiceRefreshInterval", default: 5.0
    t.datetime "AfterHoursCutoffTime", precision: nil
    t.real "ConfirmedUploadDelay", default: 5.0
    t.integer "DefaultStoptime", default: 1
    t.float "LateStopGracePeriod", default: 0.0
    t.boolean "AllowDateShifting", default: false
    t.boolean "AlwaysCheckMissedEvents", default: false
    t.boolean "AlwaysPrintInstructions", default: false
    t.boolean "AlwaysPrintAttachments", default: false
    t.boolean "AlwaysIncludeMapPointReports", default: false
    t.integer "MapPrintOption", limit: 2, default: 1
    t.boolean "MapPrintSummary", default: false
    t.boolean "MapPrintOverview", default: false
    t.boolean "MapPrintOneStop", default: false
    t.boolean "MapPrintLegend", default: false
    t.integer "MapPrintQuality", limit: 2, default: 1
    t.boolean "AlwaysIncludeTripSheet", default: false
    t.integer "TripSheetDetail", limit: 2, default: 1
    t.boolean "AlwaysIncludeInspection", default: false
    t.boolean "CreateOriginGPSWorkorders", default: false
    t.boolean "IsServiceCompany", default: false
    t.boolean "TruckAsc", default: false
    t.boolean "ManualMapPoint", default: false
    t.integer "StopCountWarning"
    t.integer "DefaultStopTimePickup"
    t.integer "DefaultStopTimeService"
    t.float "LateStopGracePeriodPickup"
    t.float "LateStopGracePeriodService"
    t.integer "DefaultCrewDelivery"
    t.integer "DefaultCrewPickup"
    t.integer "DefaultCrewService"
    t.integer "DefaultOptimization"
    t.integer "DefaultRadius"
    t.string "MapBaseTemplate", limit: 255
    t.integer "NotificationWindowBuffer"
    t.integer "DaysTillMapExpires"
    t.float "WarnOnCapacityDeliveries"
    t.float "WarnOnCapacityPickups"
    t.string "LastTSOToken", limit: 255
    t.boolean "AllTrucksBrowseNode", default: false
    t.boolean "AutoCloseLContracts", default: false
    t.boolean "AutoMoveMissedDeliveries", default: false
    t.boolean "AutoMoveMissedPickups", default: false
    t.boolean "AutoMoveMissedService", default: false
    t.boolean "AllowDateShiftingDelivery", default: false
    t.boolean "AllowDateShiftingService", default: false
    t.boolean "AutoUpdateServiceTab", default: false
    t.integer "CustomerTimeWindowMask"
    t.text "WebMapLicense"
    t.integer "MapNotify", default: 0, null: false
    t.datetime "MapNotifyNDBSendTime", precision: nil
    t.integer "MapNotifyDispatcher", default: 0, null: false
    t.integer "MapNotifyGraceDelivery", default: 0, null: false
    t.integer "MapNotifyGracePickup", default: 0, null: false
    t.integer "MapNotifyGraceService", default: 0, null: false
    t.integer "AllowSplitAddresses", default: 0, null: false
    t.string "GPSNotifyBitString", limit: 255
    t.text "WebMapLicense2"
    t.text "WebMapLicense3"
    t.text "WebMapLicense4"
    t.text "MultiDispatcherNotifyCSV"
    t.integer "FirstItem", default: 0, null: false
  end

  create_table "MapRouterVersion", primary_key: "VNum", id: :integer, default: nil, force: :cascade do |t|
    t.datetime "VDay", precision: nil
    t.index ["VNum"], name: "MapRouterVersion$VNum", unique: true
  end

  create_table "MapRoutes", primary_key: "routeNumber", id: :integer, force: :cascade do |t|
    t.integer "truckNumber"
    t.string "tripName", limit: 20
    t.datetime "tripDate", precision: nil
    t.string "routeName", limit: 255
    t.string "homeStore", limit: 3, default: "000"
    t.string "routeFileName", limit: 255
    t.integer "drivingCostUnits", limit: 1, default: 0
    t.money "drivingCost", precision: 19, scale: 4, default: -1.0
    t.boolean "includeRefuelWarnings", default: false
    t.float "tankWarnLevel", default: 0.0
    t.float "tankStartLevel", default: 0.0
    t.integer "driverID", default: -1
    t.datetime "lastEditDate", precision: nil
    t.string "lastEditBy", limit: 50
    t.money "routeCost", precision: 19, scale: 4, default: -1.0
    t.float "routeDistance", default: -1.0
    t.float "routeTripTime", default: -1.0
    t.integer "stopCount", default: -2
    t.string "crewNames", limit: 255
    t.string "status", limit: 4
    t.boolean "inEditMode", default: false
    t.datetime "routeStart", precision: nil
    t.datetime "routeStop", precision: nil
    t.string "startStore", limit: 3, default: "000"
    t.string "stopStore", limit: 3, default: "000"
    t.integer "optimizationMethod", limit: 2, default: 0
    t.float "loadWeightDeliveries", default: 0.0
    t.float "loadWeightPickups", default: 0.0
    t.float "overweightDeliveries", default: 0.0
    t.float "overweightPickups", default: 0.0
    t.float "startStoreLatitude", default: 0.0
    t.float "startStoreLongitude", default: 0.0
    t.float "stopStoreLatitude", default: 0.0
    t.float "stopStoreLongitude", default: 0.0
    t.datetime "routeConfirmedOn", precision: nil
    t.datetime "sentToGPSOn", precision: nil
    t.integer "crewCount"
    t.string "startStoreGPSWorkOrderIdString", limit: 255
    t.string "startStoreGPSWorkOrderStatusString", limit: 255
    t.datetime "startStoreGPSLastTimeStamp", precision: nil
    t.datetime "startStoreGPSEstimatedDepartureTime", precision: nil
    t.datetime "startStoreActualDeparture", precision: nil
    t.integer "startStoreDepartureDataFrom"
    t.datetime "startStoreMPEstimatedDepartureTime", precision: nil
    t.string "stopStoreGPSWorkOrderIdString", limit: 255
    t.string "stopStoreGPSWorkOrderStatusString", limit: 255
    t.datetime "stopStoreGPSLastTimeStamp", precision: nil
    t.datetime "stopStoreGPSEstimatedArrivalTime", precision: nil
    t.datetime "stopStoreActualArrival", precision: nil
    t.integer "stopStoreArrivalDataFrom"
    t.datetime "stopStoreMPEstimatedArrivalTime", precision: nil
    t.boolean "createStartStoreGPSWorkOrder", default: false
    t.boolean "createStopStoreGPSWorkOrder", default: false
    t.text "RouteNotes"
    t.datetime "employeeStartTime", precision: nil
    t.integer "DispatcherId"
    t.float "loadSizeDelivery"
    t.float "loadSizePickup"
    t.float "overSizeDelivery"
    t.float "overSizePickup"
    t.string "startLogCust", limit: 50
    t.string "stopLogCust", limit: 50
    t.index ["routeName"], name: "MapRoutes$routeName"
  end

  create_table "MapTabLayout", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "formName", limit: 255
    t.integer "tabIndex", limit: 2
    t.string "tabName", limit: 255
    t.integer "sortColumn", limit: 2
    t.integer "numColumns", limit: 2
    t.string "groupName", limit: 255
  end

  create_table "MapTruckDetail", primary_key: "truckNumber", id: :integer, default: nil, force: :cascade do |t|
    t.integer "speed_geoRoadArterial", default: 45
    t.integer "speed_geoRoadInterstate", default: 55
    t.integer "speed_geoRoadLimitedAccess", default: 55
    t.integer "speed_geoRoadOtherHighway", default: 55
    t.integer "speed_geoRoadStreet", default: 35
    t.integer "fuelConsumptionUnits", limit: 1, default: 3
    t.float "fuelConsumptionCity", default: 1.0
    t.float "fuelConsumptionHighway", default: 1.0
    t.real "fuelTankCapacity", default: 1.0
    t.integer "fuelTankUnits", limit: 1, default: 2
    t.money "lastFuelCost", precision: 19, scale: 4, default: 0.1
    t.real "prefer_geoRoadArterial", default: 0.5
    t.real "prefer_geoRoadInterstate", default: 0.5
    t.real "prefer_geoRoadOtherHighway", default: 0.5
    t.real "prefer_geoRoadToll", default: 0.5
    t.integer "DefaultDriverId", limit: 2, default: 0
    t.float "gpsLastLongitiude", default: 0.0
    t.float "gpsLastLatitude", default: 0.0
    t.integer "gpsLastStatusCode", limit: 2, default: 0
    t.string "gpsLastStatusString", limit: 255
    t.string "gpsDeviceIdString", limit: 255
    t.integer "gpsDeviceIdNumber", default: 0
    t.datetime "gpsLastUpdated", precision: nil
    t.float "gpsLastSpeed", default: 0.0
    t.string "gpsLastDirection", limit: 255
    t.string "gpsIcon", limit: 255
    t.string "gpsSerialNumber", limit: 255
    t.string "gpsIMEI", limit: 255
    t.integer "truckType", default: 0
    t.integer "GPSProvider"
    t.datetime "OutOfServiceFrom", precision: nil
    t.datetime "OutOfServiceTo", precision: nil
    t.float "Height", default: 0.0
    t.float "Width", default: 0.0
    t.float "Length", default: 0.0
    t.integer "Axles", default: 0
    t.boolean "SemiTruck", default: false, null: false
    t.float "MaxGradient", default: 0.0
    t.float "MinTurnRadius", default: 0.0
    t.boolean "AvoidCrossWind", default: false, null: false
    t.boolean "AvoidGroundingRisk", default: false, null: false
    t.string "HazardousMaterials", limit: 255
    t.string "HazardousPermits", limit: 255
    t.boolean "UseCommercialAPI", default: false, null: false
  end

  create_table "MapTruckTypes", primary_key: "TruckType", id: :integer, force: :cascade do |t|
    t.string "Description", limit: 255
    t.string "Icon", limit: 255
    t.boolean "Inactive", default: false
  end

  create_table "MapUsers", primary_key: "operatorID", id: :integer, default: nil, force: :cascade do |t|
    t.string "porUserName", limit: 25
    t.string "winUserName", limit: 255
    t.string "seenNote", limit: 255
    t.integer "UserType"
    t.boolean "UseMapPointReports", default: false
    t.boolean "IncludeLegend", default: false
    t.boolean "IncludeOverview", default: false
    t.boolean "PageSetupIncludeRouteSummary", default: false
    t.integer "PageSetupPageBreakFrequency"
    t.integer "PrintWhat"
    t.integer "PrintQuality"
    t.string "PrinterReport", limit: 255
    t.string "PrinterContractDelivery", limit: 255
    t.string "PrinterContractPickup", limit: 255
    t.string "PrinterContractService", limit: 255
    t.text "gpsLoginURL"
    t.string "gpsAdminName", limit: 255
    t.string "gpsAdminPassword", limit: 255
    t.integer "gpsAdminLevel"
    t.integer "PrintCountContractDelivery", limit: 2, default: 1
    t.integer "PrintCountContractPickup", limit: 2, default: 1
    t.integer "PrintCountContractService", limit: 2, default: 1
    t.integer "PrintCountMaps", limit: 2, default: 1
  end

  create_table "MassFaxEmail", primary_key: "Store", id: { type: :string, limit: 3 }, force: :cascade do |t|
    t.string "DefaultPrinter", limit: 250
    t.string "FaxCoverPage", limit: 250
    t.string "Sender", limit: 250
    t.string "EmailSubject", limit: 250
    t.text "EmailBody"
    t.integer "ContractFormat"
    t.boolean "UseCustomerFormat", default: false
    t.integer "EmailDelay", limit: 2
    t.integer "FaxDelay", limit: 2
    t.integer "PrintDelay", limit: 2
    t.boolean "IncludeFinanceCharges", default: false
    t.boolean "Automatic", default: false
    t.datetime "LastDate", precision: nil
    t.integer "LastBatch", limit: 2
    t.string "PaymentMethod", limit: 1
    t.boolean "IncludeCreditContracts", default: false, null: false
  end

  create_table "MenuCounter", primary_key: "CRTCode", id: { type: :string, limit: 1 }, force: :cascade do |t|
    t.string "Name", limit: 50
    t.boolean "Menu1", default: false
    t.boolean "Menu2", default: false
    t.boolean "Menu3", default: false
    t.boolean "Menu4", default: false
    t.boolean "Menu5", default: false
    t.boolean "Menu6", default: false
    t.boolean "Menu7", default: false
    t.boolean "Menu8", default: false
    t.boolean "Menu9", default: false
    t.boolean "Menu10", default: false
    t.boolean "Menu11", default: false
    t.boolean "Menu12", default: false
    t.boolean "Menu13", default: false
    t.boolean "Menu14", default: false
    t.boolean "Menu15", default: false
    t.boolean "Menu16", default: false
    t.boolean "Menu17", default: false
    t.boolean "Menu18", default: false
    t.boolean "Menu19", default: false
    t.boolean "Menu20", default: false
    t.boolean "Menu21", default: false
    t.boolean "Menu22", default: false
    t.boolean "Menu23", default: false
    t.boolean "Menu24", default: false
    t.boolean "Menu25", default: false
    t.boolean "Menu26", default: false
    t.boolean "Menu27", default: false
    t.boolean "Menu28", default: false
    t.boolean "Menu29", default: false
    t.boolean "Menu30", default: false
    t.index ["CRTCode"], name: "MenuCounter$CRTCode", unique: true
  end

  create_table "MenuDayAtAGlance", primary_key: "CRTCode", id: { type: :string, limit: 1 }, force: :cascade do |t|
    t.string "Name", limit: 50
    t.boolean "Tab1", default: false
    t.boolean "Tab2", default: false
    t.boolean "Tab3", default: false
    t.boolean "Tab4", default: false
    t.boolean "Tab5", default: false
    t.boolean "Tab6", default: false
    t.boolean "Tab7", default: false
    t.boolean "Tab8", default: false
    t.boolean "Tab9", default: false
    t.boolean "Tab10", default: false
    t.boolean "Tab11", default: false
    t.boolean "Tab12", default: false
    t.boolean "Tab13", default: false
    t.boolean "Tab14", default: false
    t.boolean "Tab15", default: false
    t.boolean "Tab16", default: false
    t.boolean "Tab17", default: false
    t.boolean "Tab18", default: false
    t.boolean "Tab19", default: false
    t.boolean "Tab20", default: false
    t.boolean "Tab21", default: false
    t.boolean "Tab22", default: false
    t.boolean "Tab23", default: false
    t.boolean "Tab24", default: false
    t.boolean "Tab25", default: false
    t.boolean "Tab26", default: false
    t.boolean "Tab27", default: false
    t.boolean "Tab28", default: false
    t.boolean "Tab29", default: false
    t.boolean "Tab30", default: false
    t.index ["CRTCode"], name: "MenuDayAtAGlance$CRTCode", unique: true
  end

  create_table "MenuPasswords", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "Store", limit: 3
    t.integer "MenuNumber", limit: 2
    t.integer "SubMenuNumber", limit: 2
    t.integer "DetailMenuNumber", limit: 2
    t.string "MenuName", limit: 255
    t.integer "PasswordLevel"
  end

  create_table "MenuProgram", primary_key: "CRTCode", id: { type: :string, limit: 1 }, force: :cascade do |t|
    t.string "Name", limit: 50
    t.boolean "Menu1", default: false
    t.boolean "Menu2", default: false
    t.boolean "Menu3", default: false
    t.boolean "Menu4", default: false
    t.boolean "Menu5", default: false
    t.boolean "Menu6", default: false
    t.boolean "Menu7", default: false
    t.boolean "Menu8", default: false
    t.boolean "Menu9", default: false
    t.boolean "Menu10", default: false
    t.boolean "Menu11", default: false
    t.boolean "Menu12", default: false
    t.boolean "Menu13", default: false
    t.boolean "Menu14", default: false
    t.boolean "Menu15", default: false
    t.boolean "Menu16", default: false
    t.boolean "Menu17", default: false
    t.boolean "Menu18", default: false
    t.boolean "Menu19", default: false
    t.boolean "Menu20", default: false
    t.boolean "Menu21", default: false
    t.boolean "Menu22", default: false
    t.boolean "Menu23", default: false
    t.boolean "Menu24", default: false
    t.boolean "Menu25", default: false
    t.boolean "Menu26", default: false
    t.boolean "Menu27", default: false
    t.boolean "Menu28", default: false
    t.boolean "Menu29", default: false
    t.boolean "Menu30", default: false
    t.boolean "FullMenu", default: false
    t.index ["CRTCode"], name: "MenuProgram$CRTCode", unique: true
  end

  create_table "MeterReadingCalledOffRent", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Contract", limit: 10, null: false
    t.datetime "TimeStamp", precision: nil, null: false
    t.string "ItemNumber", limit: 6, null: false
    t.integer "LineNumber", null: false
    t.float "MeterReading", null: false
    t.datetime "LastReadingDate", precision: nil, null: false
    t.float "Latitude", null: false
    t.float "Longitude", null: false
    t.integer "Source", null: false
    t.boolean "Completed", null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
  end

  create_table "MissedRentalReasons", primary_key: "ReasonNumber", id: :integer, force: :cascade do |t|
    t.string "ReasonName", limit: 255
    t.boolean "Inactive", default: false
  end

  create_table "MissedRentalReasons_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "ReasonNumber", null: false
    t.string "ReasonName", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "MissedRentals", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "Store", limit: 3
    t.string "Name", limit: 50
    t.string "Key", limit: 50
    t.datetime "Date", precision: nil
    t.string "Customer", limit: 50
    t.string "Type", limit: 10
    t.integer "Quantity"
    t.money "Amount", precision: 19, scale: 4
    t.integer "OprNo", default: 0
    t.text "Note"
    t.integer "ReasonNumber"
  end

  create_table "NetworkDevices", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "IPAddress", limit: 39, null: false
    t.integer "Port", default: 0, null: false
    t.string "Name", limit: 255, null: false
    t.boolean "Inactive", default: false, null: false
    t.string "APIKey", limit: 255
    t.boolean "IsMQTT", default: false, null: false
    t.string "ClientId", limit: 255
  end

  create_table "NextNumberNew", primary_key: "Id", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.integer "NextNumber", null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
  end

  create_table "OperatorId", primary_key: "OPNO", id: :integer, force: :cascade do |t|
    t.string "OPID", limit: 255, null: false
    t.string "OPNM", limit: 50
    t.string "Group", limit: 50
    t.boolean "Inactive", default: false
    t.boolean "TimeClock", default: false
    t.string "CRTCode", limit: 1
    t.integer "GroupNumber"
    t.string "HomeStore", limit: 3
    t.string "SocialSecurity", limit: 50
    t.datetime "HireDate", precision: nil
    t.datetime "TerminationDate", precision: nil
    t.string "CashDrawer", limit: 50
    t.string "DepositDrawer", limit: 50
    t.boolean "AllowPOSubmission", default: false
    t.money "MaximumPOAllowed", precision: 19, scale: 4
    t.float "MaximumDiscountPercent"
    t.money "MaximumPriceChange", precision: 19, scale: 4
    t.string "EmployeeNumber", limit: 50
    t.string "Password", limit: 20
    t.integer "PasswordLevel", limit: 2
    t.string "TimeClockId", limit: 255
    t.money "HourlyRate", precision: 19, scale: 4
    t.integer "PayType"
    t.boolean "MultiGroup", default: false
    t.string "Email", limit: 254, default: "", null: false
    t.string "CellPhone", limit: 255
    t.integer "CellProvider", limit: 2
    t.integer "DefaultNotification", limit: 2
    t.datetime "ProgramTipDate", precision: nil
    t.boolean "ProgramTipNoShow", default: false
    t.string "OfficePhone", limit: 50
    t.integer "DefaultLanguage"
    t.boolean "JobAppUser", default: false, null: false
    t.integer "DefaultDepartment", default: 0
    t.integer "AccountingEmployeeId"
    t.string "GlobalIdentity", limit: 255
    t.integer "RelationshipID"
    t.boolean "SharedTerminal", default: false, null: false
    t.float "POVariance", default: 0.0
    t.float "SubrentalPOVariance", default: 0.0
    t.ss_timestamp "Version", null: false
    t.index ["GlobalIdentity"], name: "OperatorId_GlobalIdentity"
    t.index ["OPID"], name: "OperatorId$OPID", unique: true
    t.index ["Version"], name: "IDX_OperatorId_Version"
  end

  create_table "OperatorIdEdit", primary_key: "EditNumber", id: :integer, force: :cascade do |t|
    t.integer "Batch", null: false
    t.datetime "Date", precision: nil, null: false
    t.integer "Opr", null: false
    t.integer "OprChanged", null: false
    t.string "Description", limit: 255
    t.string "Note", limit: 255
    t.index ["Batch"], name: "OprIdEdit_Batch"
    t.index ["Opr"], name: "OprIdEdit_Opr"
    t.index ["OprChanged"], name: "OprIdEdit_OprChanged"
  end

  create_table "OperatorIdEmail", primary_key: "EmailIdNumber", id: :integer, force: :cascade do |t|
    t.integer "Opr"
    t.string "Store", limit: 3
    t.boolean "UseMAPI", default: false
    t.string "EmailAddress", limit: 254, default: "", null: false
    t.string "EmailPassword", limit: 255
    t.string "EmailDomain", limit: 255
    t.string "SMTPServer", limit: 255
    t.integer "SMTPPort", limit: 2
    t.boolean "UseSSL", default: false
    t.string "ReplyToAddress", limit: 255
    t.string "DisplayName", limit: 255
    t.string "LogoFilename", limit: 255
    t.text "Signature"
    t.string "CC", limit: 255
    t.string "BCC", limit: 255
    t.string "APIToken"
    t.string "APIClientName", limit: 50
    t.index ["Opr"], name: "OperatorIdEmail$Opr"
  end

  create_table "OperatorIdGroupFileXref", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "OpNo", null: false
    t.integer "GroupNumber", null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["GroupNumber"], name: "OperatorIdGroupFileXref_GroupNumber"
    t.index ["OpNo"], name: "OperatorIdGroupFileXref_OpNo"
  end

  create_table "OperatorStoreRelationship", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "Operator", null: false
    t.string "Store", limit: 3, null: false
    t.boolean "DefaultStore", default: false, null: false
  end

  create_table "OptionSubType", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Name", limit: 255, null: false
    t.integer "OptionTypeId", null: false
    t.integer "CreatedBy", default: -1, null: false
    t.integer "ChangedBy", default: -1, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.string "ChangeNote", limit: 255
    t.boolean "Inactive", default: false, null: false
  end

  create_table "OptionSubTypeItem", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "OptionSubTypeId", null: false
    t.string "ItemKey", limit: 16, null: false
    t.integer "CreatedBy", default: -1, null: false
    t.integer "ChangedBy", default: -1, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.string "ChangeNote", limit: 255
    t.boolean "Inactive", default: false, null: false
  end

  create_table "OptionType", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Name", limit: 255, null: false
    t.integer "CreatedBy", default: -1, null: false
    t.integer "ChangedBy", default: -1, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.string "ChangeNote", limit: 255
    t.boolean "Inactive", default: false, null: false
  end

  create_table "OptionTypeItem", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "OptionTypeId", null: false
    t.string "ItemKey", limit: 16, null: false
    t.integer "CreatedBy", default: -1, null: false
    t.integer "ChangedBy", default: -1, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.string "ChangeNote", limit: 255
    t.boolean "Inactive", default: false, null: false
  end

  create_table "ParameterFile", primary_key: "Store", id: { type: :string, limit: 3 }, force: :cascade do |t|
    t.string "STORE_NAME", limit: 40
    t.string "STORE_STRT", limit: 40
    t.string "STORE_CITY", limit: 30
    t.string "STORE_ZIP", limit: 10
    t.string "STORE_PHONE", limit: 50
    t.float "STORE_TAX", default: 0.0
    t.float "STORE_FAX"
    t.string "STORE_WEB", limit: 50
    t.float "CUST_INCOME"
    t.float "FIN_RAT"
    t.float "DEF_RATE_CODE"
    t.boolean "CNTR_HEDR_FLAG", default: false
    t.float "BILL_CODE"
    t.boolean "COUPON_FLAG", default: false
    t.float "MAX_DISC"
    t.float "ROLL_FWD"
    t.float "CASH_FLAG"
    t.boolean "MNTH_STMT_FLAG", default: false
    t.integer "ADDL_TIME_FLAG", default: 0
    t.float "CLOSE_CODE"
    t.money "MIN_EXTRA", precision: 19, scale: 4
    t.money "MIN_REFUND", precision: 19, scale: 4, default: 0.0
    t.float "COLL_FLG"
    t.boolean "PRT_OPN_CHG", default: false
    t.float "GRACE_PCT"
    t.float "GRACE_MIN"
    t.float "GRACE_MAX"
    t.boolean "SUM_DEP_FLG", default: false
    t.boolean "YES_RET", default: false
    t.float "CLOCK_HRS_DAY"
    t.float "METER_HRS_DAY"
    t.boolean "AGE_FLG", default: false
    t.float "PRT_OPEN"
    t.float "UNIT_HRS_DAY"
    t.money "MIN_FIN", precision: 19, scale: 4
    t.float "GRACE_PER"
    t.float "HOURS_OVER"
    t.float "DUE_OVER"
    t.float "PRICE_OVER"
    t.float "TIME_OVER"
    t.float "DISCOUNT_OVER"
    t.float "PASS_OVER"
    t.string "ITEM_REP", limit: 1
    t.float "DEF_MORE"
    t.float "OVER_30"
    t.float "OVER_60"
    t.float "OVER_90"
    t.boolean "PAY_CHG_CS", default: false
    t.boolean "SUPPRESS_TL", default: false
    t.float "FISCAL_STRT"
    t.float "NO_ADDL"
    t.float "DRAWER_FLG"
    t.float "HOLD_DAYS"
    t.string "WE_HRS", limit: 50
    t.float "PRT_CRDT"
    t.float "PAR_REC"
    t.integer "Rate1", default: 0
    t.integer "Rate2", default: 0
    t.integer "Rate3", default: 0
    t.integer "Rate4", default: 0
    t.integer "Rate5", default: 0
    t.integer "Rate6", default: 0
    t.integer "WeekStart", default: 0
    t.boolean "Locking", default: false
    t.boolean "ClearPrintDue", default: false
    t.boolean "AllowOpenCheck", default: false
    t.boolean "AllowOpenCard", default: false
    t.boolean "ShowPartNumber", default: false
    t.boolean "IntegrateCard", default: false
    t.boolean "AllowDebitCard", default: false
    t.boolean "TotalOpenCash", default: false
    t.money "PromptPayDisc", precision: 19, scale: 4
    t.boolean "ItemsFirst", default: false
    t.money "MinDeposit", precision: 19, scale: 4
    t.money "MaxDeposit", precision: 19, scale: 4
    t.money "RoundDeposit", precision: 19, scale: 4
    t.integer "RptContractsPosted", limit: 2
    t.integer "RptTotals", limit: 2
    t.boolean "PrintNewCustomer", default: false
    t.boolean "PrintTaxExempt", default: false
    t.boolean "ForceSerialized", default: false
    t.string "MerchantNumber", limit: 100
    t.integer "ModifyClosed", limit: 2
    t.boolean "ModifyAccount", default: false
    t.boolean "RptTransDetail", default: false
    t.boolean "RptCategoryIncome", default: false
    t.boolean "RptGeneralLedger", default: false
    t.boolean "RptAllStores", default: false
    t.string "RemitName", limit: 50
    t.string "RemitStreet", limit: 50
    t.string "RemitCityStateZip", limit: 50
    t.string "RemitPhone", limit: 50
    t.string "RemitFax", limit: 50
    t.integer "TimeClockDay", limit: 2
    t.integer "TimeClockWeek", limit: 2
    t.integer "ModifyCompleted", limit: 2
    t.boolean "ItemKeyIncludesStore", default: false
    t.string "Processor", limit: 10
    t.boolean "NoPrintItemNo", default: false
    t.boolean "ForcePickedUpAccount", default: false
    t.boolean "ForcePickedUpCash", default: false
    t.integer "OverbookPassword", limit: 2
    t.string "ItemKeyOrder", limit: 10
    t.string "CustKeyOrder", limit: 10
    t.string "ItemPercentageName", limit: 50
    t.boolean "ItemPercentOnAsset", default: false
    t.string "CustomerDefined1", limit: 15
    t.string "CustomerDefined2", limit: 15
    t.boolean "ForceAutoLicense", default: false
    t.integer "OverCreditPassword", limit: 2
    t.string "ItemDefined1", limit: 15
    t.string "ItemDefined2", limit: 15
    t.boolean "AskDamageWaiver", default: false
    t.integer "DefaultContractFormat"
    t.boolean "ItemPercentOnDmgWvr", default: false
    t.integer "InventoryCost", limit: 2
    t.boolean "RptTransactionEdit", default: false
    t.boolean "RptOperatorEdit", default: false
    t.boolean "RptCheckAndCard", default: false
    t.boolean "AllowTaxExempt", default: false
    t.boolean "ForceSalesperson", default: false
    t.boolean "AskToPrintInstructions", default: false
    t.boolean "CapitalizeExtraCharges", default: false
    t.boolean "InventoryExtraCharges", default: false
    t.float "DepletionPercentage"
    t.boolean "PaymentsIntoDrawer", default: false
    t.money "DefaultCarryOverCash", precision: 19, scale: 4, default: 0.0
    t.boolean "NoPrintPartNumber", default: false
    t.integer "CopiesCashReservation", limit: 2
    t.integer "CopiesCashOpen", limit: 2
    t.integer "CopiesCashClosing", limit: 2
    t.integer "CopiesCashClosed", limit: 2
    t.integer "CopiesCashCompleted", limit: 2
    t.integer "CopiesAccountReservation", limit: 2
    t.integer "CopiesAccountOpen", limit: 2
    t.integer "CopiesAccountClosing", limit: 2
    t.integer "CopiesAccountClosed", limit: 2
    t.integer "CopiesAccountCompleted", limit: 2
    t.integer "CopiesWorkOrder", limit: 2
    t.integer "CopiesRepairs", limit: 2
    t.integer "CopiesTransfers", limit: 2
    t.integer "CopiesReceipt", limit: 2
    t.integer "CopiesCreditCardReceipt", limit: 2
    t.boolean "SaveContractCopy", default: false
    t.string "ContractCopyLocation", limit: 100
    t.boolean "SaveCreditCards", default: false
    t.boolean "PrintItemRates", default: false
    t.boolean "EncryptCreditCard", default: false
    t.boolean "ShowKey", default: false
    t.boolean "ShowNumber", default: false
    t.boolean "ShowDate", default: false
    t.boolean "ShowTime", default: false
    t.boolean "ShowPriceEach", default: false
    t.boolean "ShowDiscountPercent", default: false
    t.boolean "ShowDiscountAmount", default: false
    t.boolean "ShowFinalPrice", default: false
    t.boolean "ShowSort", default: false
    t.boolean "ShowDmgWvr", default: false
    t.boolean "ShowSerialNumber", default: false
    t.string "MapItName", limit: 50
    t.boolean "ShowCurrentStore", default: false
    t.integer "OverrideCreditHold", limit: 2
    t.integer "OverrideDiscount", limit: 2
    t.integer "OverrideDueBack", limit: 2
    t.integer "OverrideHours", limit: 2
    t.integer "OverridePrice", limit: 2
    t.integer "OverrideSpecialPrice", limit: 2
    t.integer "OverrideTimeOut", limit: 2
    t.integer "ChangeCustomer", limit: 2
    t.integer "AllowCloseNoOvertime", limit: 2
    t.integer "AllowCreditHold", limit: 2
    t.integer "ContractIntoReservation", limit: 2
    t.integer "TimeClockEntry", limit: 2
    t.integer "ShowCreditCard", limit: 2
    t.integer "ModifyQuickButtons", limit: 2
    t.integer "TimeClockDouble", limit: 2
    t.string "AddItemReservation", limit: 50
    t.string "AddItemOpen", limit: 50
    t.string "AddItemRepairs", limit: 50
    t.string "AddItemWorkOrder", limit: 50
    t.integer "DefaultEmailFormat"
    t.integer "IncludeCustomerBalance", limit: 2, default: 0
    t.integer "AllowProcessAnyway", limit: 2
    t.integer "AllowOtherStoreItems", limit: 2
    t.float "MeterOvertimePercent", default: 1.0
    t.integer "GetSignature", limit: 2, default: 0
    t.integer "Rate7", default: 0
    t.integer "Rate8", default: 0
    t.integer "Rate9", default: 0
    t.integer "DefaultRentalPeriod", default: 0
    t.boolean "ShowItemNumber", default: false
    t.boolean "NotRequireOperatorId", default: false
    t.boolean "HoldQuoteContracts", default: false
    t.boolean "ShowRainHours", default: false
    t.integer "PORUserNumber"
    t.boolean "ForceCustomerHeard", default: false
    t.string "EmailSubjectQuote", limit: 255
    t.text "EmailBodyQuote"
    t.string "EmailSubjectResv", limit: 255
    t.text "EmailBodyResv"
    t.string "EmailSubjectOpen", limit: 255
    t.text "EmailBodyOpen"
    t.string "EmailSubjectClosed", limit: 255
    t.text "EmailBodyClosed"
    t.money "MaxPriceLevel1", precision: 19, scale: 4
    t.money "MaxPriceLevel2", precision: 19, scale: 4
    t.money "MaxPriceLevel3", precision: 19, scale: 4
    t.money "MaxPriceLevel4", precision: 19, scale: 4
    t.money "MaxPriceLevel5", precision: 19, scale: 4
    t.money "MaxPriceLevelNone", precision: 19, scale: 4
    t.money "MinimumDamageWaiver", precision: 19, scale: 4
    t.boolean "ProrateContinuation", default: false
    t.money "MinimumItemPercentage", precision: 19, scale: 4
    t.boolean "RequireOperatorOnOverride", default: false
    t.boolean "OrderSerializedByUsed", default: false
    t.string "LoadSlip", limit: 50
    t.string "QualcommUserName", limit: 100
    t.string "QualcommPassword", limit: 100
    t.boolean "CorporateOffice", default: false
    t.string "DamageWaiverName", limit: 100
    t.boolean "SaveClosedAccountModificationAsAdjustment", default: false
    t.boolean "SaveClosedCashModificationAsAdjustment", default: false
    t.boolean "ProrateBetweenPeriods", default: false
    t.float "DepositPercentage"
    t.integer "DefaultFormatFax"
    t.integer "DefaultFormatQuote"
    t.integer "DefaultFormatReservation"
    t.integer "DefaultFormatOpen"
    t.integer "DefaultFormatClosed"
    t.integer "DefaultFormatCompleted"
    t.integer "DefaultFormatPDF"
    t.boolean "AutomaticClose", default: false
    t.boolean "ForceContractType", default: false
    t.float "ROIIncomePercent"
    t.boolean "ForceOrderedBy", default: false
    t.boolean "CollectDepositAsRentSale", default: false
    t.boolean "ForceCallLogType", default: false
    t.boolean "RequireQtyChangeConfirm", default: false
    t.boolean "RoundOvertimeToNextDay", default: false
    t.boolean "DisableAR", default: false
    t.integer "StoreLanguage", limit: 2
    t.integer "ReportHeader", limit: 2
    t.integer "TransferGroup", limit: 2
    t.integer "ShowOverbookLevel", limit: 2
    t.integer "ReceiptHeader", limit: 2
    t.integer "ContractRounding", limit: 2
    t.integer "ReopenClosedContract", limit: 2
    t.integer "ModifyLockedContract", limit: 2
    t.boolean "ForceDeliveryTruck", default: false
    t.integer "BackgroundColor"
    t.money "MaximumItemPercentage", precision: 19, scale: 4
    t.ss_timestamp "Version", null: false
    t.index ["Store"], name: "ParameterFile$Store", unique: true
    t.index ["Version"], name: "IDX_ParameterFile_Version"
  end

  create_table "ParameterFileAdditional", primary_key: "Store", id: { type: :string, limit: 3 }, force: :cascade do |t|
    t.string "StoreDesignator", limit: 50
    t.boolean "Closed", null: false
    t.integer "CountryCode", limit: 2, default: 0
    t.boolean "BulkAutoSelectStore", null: false
    t.boolean "AllowOtherStoreRentalItems", null: false
    t.boolean "InactiveItemsBlocked", null: false
    t.boolean "UsePositek", null: false
    t.boolean "DWonNonDiscAmt"
    t.boolean "AcceptWebPay"
    t.boolean "AskReturnTransfer"
    t.boolean "ForcePickupTruck"
    t.boolean "UseItemRateStructureForSpecial"
    t.boolean "Elite"
    t.integer "MaxDailyDeliveries"
    t.integer "MaxDailyPickups"
    t.integer "DefaultFormatESign"
    t.integer "DefaultFormatWorkOrder"
    t.boolean "RoundOvertimeToNextHour"
    t.boolean "UseDocusign", default: false, null: false
    t.string "CCAPIToken", limit: 255
    t.integer "ReviewBillingCode"
    t.boolean "RequireAVSMatch", default: false, null: false
    t.boolean "RequireCVVMatch", default: false, null: false
    t.string "StoreFax", limit: 255
    t.string "BusinessNumber", limit: 255
    t.float "Latitude"
    t.float "Longitude"
    t.integer "RateEngineId"
    t.string "Culture", limit: 250
    t.string "CurrencyName", limit: 250
    t.string "CurrencyDisplayFormat", limit: 250
    t.boolean "AdjustmentsForBilledOnly", default: false, null: false
    t.integer "DefaultFormatCounterSign", default: 0
    t.boolean "UnifiedTransactionNumbering", default: false, null: false
    t.boolean "DecimalNotRequired", default: false, null: false
    t.boolean "AllowChangeDescription", default: false, null: false
    t.boolean "Sale_TransferInv", default: false, null: false
    t.boolean "Rental_TransferInv", default: false, null: false
    t.integer "OrganizationID", default: 0
    t.integer "RevenueDateCodeId", default: 0, null: false
    t.boolean "AutoSetCustomerKey", default: false, null: false
    t.integer "SalesTaxMethodId", default: 0, null: false
    t.string "TaxAreaId", limit: 255
    t.boolean "AutoSetItemKey", default: false, null: false
    t.integer "DefaultESignDeliveryFormat"
    t.boolean "DepreciateByStore", default: false, null: false
    t.boolean "RemoveCCToken", default: false, null: false
    t.boolean "eSignDelivery", default: false, null: false
    t.integer "ContractSalesRepDefault", default: 4, null: false
    t.integer "CustomerNameFormat", default: 2, null: false
    t.integer "DefaultContractStatus", default: 7, null: false
    t.boolean "AutoSavePDF", default: false, null: false
    t.boolean "BillActualInternal", default: false, null: false
    t.boolean "ShowAllTaxFeeDetails", default: false, null: false
    t.string "WebIntegrationURL", limit: 255
    t.boolean "AutoCreateLTicket", default: false, null: false
    t.boolean "SeqInvNumber", default: false, null: false
    t.integer "TransferType", default: 0, null: false
    t.boolean "BetaUser", default: false, null: false
    t.boolean "PreventItemPercentDiscount", default: false, null: false
    t.boolean "ContinueLinkedSubrentals", default: false, null: false
    t.boolean "AutoCreateSubrentalPO", default: false, null: false
    t.string "DefaultPaymentType", limit: 1
    t.boolean "DefaultSubrent", default: true, null: false
    t.boolean "AllowPOLineItemTax", default: false, null: false
  end

  create_table "ParameterFileBrand", primary_key: "Brand_Location", id: :integer, default: nil, force: :cascade do |t|
    t.integer "Brand_Number", null: false
    t.string "Brand_StoreAssigned", limit: 3
    t.string "Brand_Name", limit: 40
    t.string "Brand_Street", limit: 40
    t.string "Brand_City", limit: 30
    t.string "Brand_Zip", limit: 10
    t.string "Brand_Phone", limit: 10
    t.float "Brand_Fax"
    t.string "Brand_Web", limit: 50
    t.string "Brand_RemitName", limit: 50
    t.string "Brand_RemitStreet", limit: 50
    t.string "Brand_RemitCityStateZip", limit: 50
    t.string "Brand_RemitPhone", limit: 10
    t.string "Brand_RemitFax", limit: 10
    t.string "Brand_Logo"
    t.index ["Brand_StoreAssigned"], name: "Brand_StoreAssigned"
  end

  create_table "ParameterFileCompany", primary_key: "ApiAccessKeyId", id: { type: :string, limit: 255 }, force: :cascade do |t|
    t.string "ApiSecretKey", limit: 255
    t.integer "GlobalDbId"
    t.integer "CreatedBy", default: -1, null: false
    t.integer "ChangedBy", default: -1, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.integer "OrganizationID"
    t.integer "Environment", default: 0, null: false
    t.string "Config"
    t.string "DefaultCurrencyCode", limit: 255
    t.boolean "DisableTempItemSearch", default: false, null: false
    t.integer "AssignedTo", default: 0, null: false
    t.boolean "GlobalAdminPermissionSynced", default: false, null: false
    t.datetime "LastSeen", precision: nil
    t.boolean "EnableInternationalAddresses", default: false, null: false
    t.index ["ApiAccessKeyId"], name: "ParameterFileCompany_ApiAccessKeyId", unique: true
  end

  create_table "ParameterFileSecurity", primary_key: "Store", id: { type: :string, limit: 3 }, force: :cascade do |t|
    t.boolean "UseDefault", null: false
    t.boolean "RequireOperatorOnOverride", null: false
    t.money "MaxPriceLevel1", precision: 19, scale: 4, default: 0.0
    t.money "MaxPriceLevel2", precision: 19, scale: 4, default: 0.0
    t.money "MaxPriceLevel3", precision: 19, scale: 4, default: 0.0
    t.money "MaxPriceLevel4", precision: 19, scale: 4, default: 0.0
    t.money "MaxPriceLevel5", precision: 19, scale: 4, default: 0.0
    t.money "MaxPriceLevelNone", precision: 19, scale: 4, default: 0.0
    t.integer "MAX_DISC", limit: 2, default: 0
    t.integer "HOURS_OVER", limit: 2, default: 0
    t.integer "DUE_OVER", limit: 2, default: 0
    t.integer "PRICE_OVER", limit: 2, default: 0
    t.integer "TIME_OVER", limit: 2, default: 0
    t.integer "DISCOUNT_OVER", limit: 2, default: 0
    t.integer "OVER_30", limit: 2, default: 0
    t.integer "OVER_60", limit: 2, default: 0
    t.integer "OVER_90", limit: 2, default: 0
    t.integer "OverbookPassword", limit: 2, default: 0
    t.integer "OverCreditPassword", limit: 2, default: 0
    t.integer "OverrideCreditHold", limit: 2, default: 0
    t.integer "OverrideDiscount", limit: 2, default: 0
    t.integer "OverrideDueBack", limit: 2, default: 0
    t.integer "OverrideHours", limit: 2, default: 0
    t.integer "OverridePrice", limit: 2, default: 0
    t.integer "OverrideSpecialPrice", limit: 2, default: 0
    t.integer "OverrideTimeOut", limit: 2, default: 0
    t.integer "ChangeCustomer", limit: 2, default: 0
    t.integer "AllowCloseNoOvertime", limit: 2, default: 0
    t.integer "AllowCreditHold", limit: 2, default: 0
    t.integer "ContractIntoReservation", limit: 2, default: 0
    t.integer "AllowRefundDifferentCard", limit: 2, default: 0
    t.integer "AllowProcessAnyway", limit: 2, default: 0
    t.integer "AllowOtherStoreItems", limit: 2, default: 0
    t.integer "ReopenClosedContract", limit: 2, default: 0
    t.integer "ModifyClosed", limit: 2, default: 0
    t.integer "ModifyCompleted", limit: 2, default: 0
    t.integer "ModifyQuickButtons", limit: 2, default: 0
    t.integer "ModifyLockedContract", limit: 2, default: 0
    t.integer "TimeClockEntry", limit: 2, default: 0
    t.integer "AllowOtherStoreRentalItems", limit: 2, default: 0
    t.integer "AllowInactiveItems", limit: 2, default: 0
    t.integer "EditCallLog", limit: 2, default: 0
    t.integer "SetStopDateEarlier", limit: 2, default: 0
    t.integer "AllowWriteOffs", limit: 2, default: 0
    t.integer "OverrideDailyDeliveryPickups", limit: 2
  end

  create_table "ParameterFile_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.string "Store", limit: 3, null: false
    t.string "STORE_NAME", limit: 40
    t.string "STORE_STRT", limit: 40
    t.string "RemitName", limit: 50
    t.string "RemitStreet", limit: 50
    t.string "ItemPercentageName", limit: 50
    t.string "CustomerDefined1", limit: 15
    t.string "CustomerDefined2", limit: 15
    t.string "ItemDefined1", limit: 15
    t.string "ItemDefined2", limit: 15
    t.string "ContractCopyLocation", limit: 100
    t.string "AddItemReservation", limit: 50
    t.string "AddItemOpen", limit: 50
    t.string "AddItemRepairs", limit: 50
    t.string "AddItemWorkOrder", limit: 50
    t.string "EmailSubjectQuote", limit: 255
    t.text "EmailBodyQuote"
    t.string "EmailSubjectResv", limit: 255
    t.text "EmailBodyResv"
    t.string "EmailSubjectOpen", limit: 255
    t.text "EmailBodyOpen"
    t.string "EmailSubjectClosed", limit: 255
    t.text "EmailBodyClosed"
    t.string "LoadSlip", limit: 50
    t.string "DamageWaiverName", limit: 100
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["Store", "Languagecode"], name: "ParameterFile_Tr_Store", unique: true
  end

  create_table "PassName", primary_key: "Code", id: :integer, default: 0, force: :cascade do |t|
    t.string "Name", limit: 50
    t.index ["Code"], name: "PassName$Code", unique: true
  end

  create_table "Password", primary_key: "STORE", id: { type: :string, limit: 3 }, force: :cascade do |t|
    t.string "PSWD1", limit: 10
    t.string "PSWD2", limit: 10
    t.string "PSWD3", limit: 10
    t.string "PSWD4", limit: 10
    t.string "PSWD5", limit: 10
    t.index ["STORE"], name: "Password$STORE", unique: true
  end

  create_table "PasswordRemoteOverride", primary_key: "OverrideID", id: :integer, force: :cascade do |t|
    t.integer "OverrideType", default: 0, null: false
    t.integer "RequestedOpNo", default: -1, null: false
    t.datetime "RequestedDateTime", precision: nil, default: -> { "getdate()" }, null: false
    t.string "Description", limit: 1000
    t.integer "ReferenceType", default: -1, null: false
    t.string "ReferenceEntityId", limit: 20, null: false
    t.integer "SecurityType", default: -1, null: false
    t.integer "SecurityListID", default: -1, null: false
    t.integer "RespondingOpNo", default: -1, null: false
    t.integer "ResponseType", default: 0, null: false
    t.string "ReferenceEntityName", limit: 255
  end

  create_table "PaymentDetail", primary_key: ["Payment", "Contract"], force: :cascade do |t|
    t.integer "Payment", default: 0, null: false
    t.string "Contract", limit: 10, null: false
    t.money "Amount", precision: 19, scale: 4, default: 0.0
    t.money "Discount", precision: 19, scale: 4
    t.string "AccountingLink", limit: 255
    t.index ["Contract"], name: "PaymentDetail$Contract"
    t.index ["Payment"], name: "PaymentDetail$Payment"
  end

  create_table "PaymentFile", primary_key: "Payment", id: :integer, default: 0, force: :cascade do |t|
    t.integer "Batch", default: 0
    t.string "Store", limit: 3
    t.datetime "Date", precision: nil
    t.integer "Opr", default: 0
    t.boolean "Drawer", default: false
    t.string "Type", limit: 1
    t.string "CustNumb", limit: 6
    t.money "Amount", precision: 19, scale: 4, default: 0.0
    t.string "Meth", limit: 1
    t.string "RefNo", limit: 30
    t.string "Notes", limit: 100
    t.integer "Encrypted", limit: 2, default: 0
    t.string "EncryptedCard", limit: 255
    t.money "Tendered", precision: 19, scale: 4
    t.string "Terminal", limit: 255
    t.string "AccountingLink", limit: 255
    t.integer "GLTransactionGroupId", default: 0, null: false
    t.string "TransID", limit: 255
    t.integer "ParentPaymentId"
    t.integer "TransType"
    t.string "CCAlias", limit: 255
    t.index ["Batch"], name: "PaymentFile$Batch"
    t.index ["CustNumb"], name: "PaymentFile$CustNumb"
    t.index ["Store"], name: "PaymentFile$Store"
  end

  create_table "PaymentImport", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "FileImportId", null: false
    t.integer "PaymentImportStatusId", null: false
    t.boolean "Inactive", default: false, null: false
    t.datetime "DateModified", precision: nil
    t.datetime "DateProcessed", precision: nil
    t.string "EnvelopeNumber", limit: 30
    t.string "AccountNumber", limit: 30
    t.money "PaymentAmount", precision: 19, scale: 4
    t.string "PaymentType", limit: 30
    t.datetime "PaymentDate", precision: nil
    t.string "CheckNumber", limit: 30
    t.string "ContractNumber", limit: 30
    t.money "PaidAmount", precision: 19, scale: 4
    t.string "Notes", limit: 255
  end

  create_table "PaymentImportStatus", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Value", limit: 30, null: false
  end

  create_table "PaymentMethod", primary_key: "PayMeth", id: { type: :string, limit: 1 }, force: :cascade do |t|
    t.string "PayType", limit: 25, null: false
  end

  create_table "PaymentMethod_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.string "PayMeth", limit: 1, null: false
    t.string "PayType", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["PayMeth", "Languagecode"], name: "PaymentMethod_Tr_PayMeth", unique: true
  end

  create_table "PaymentType", primary_key: "PaymentTypeId", id: :integer, default: nil, force: :cascade do |t|
    t.string "PaymentTypeCode", limit: 1, null: false
    t.string "Description", limit: 255, null: false
    t.boolean "Inactive", default: false, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
  end

  create_table "PendingLockCollectionType", primary_key: "ID", id: :integer, default: nil, force: :cascade do |t|
    t.varchar "Name", limit: 50, null: false
    t.varchar "Description", limit: 100, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
  end

  create_table "PendingLockEntry", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "EntityTypeId", null: false
    t.varchar "ModelId", limit: 50, null: false
    t.varchar "RequestingUserId", limit: 50, null: false
    t.integer "PendingLockEventTypeId", null: false
    t.integer "PendingLockEntryStateId", null: false
    t.varchar_max "Payload", null: false
    t.varchar "Error", limit: 4096
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.datetime "DateUpdated", precision: nil, default: -> { "getdate()" }, null: false
    t.ss_timestamp "RowVersion", null: false
    t.index ["EntityTypeId"], name: "idx_PendingLockEntry_EntityTypeId"
    t.index ["ModelId", "EntityTypeId", "PendingLockEntryStateId"], name: "idx_PendingLockEntry_ModelId_EntityTypeId_StateId"
    t.index ["PendingLockEntryStateId"], name: "idx_PendingLockEntry_PendingLockEntryStateId"
    t.index ["PendingLockEventTypeId"], name: "idx_PendingLockEntry_PendingLockEventTypeId"
  end

  create_table "PendingLockEventType", primary_key: "ID", id: :integer, default: nil, force: :cascade do |t|
    t.integer "PendingLockCollectionTypeId", null: false
    t.varchar "Name", limit: 50, null: false
    t.varchar "Description", limit: 100, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
  end

  create_table "PendingLockState", primary_key: "ID", id: :integer, default: nil, force: :cascade do |t|
    t.varchar "Name", limit: 50, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
  end

  create_table "PendingPaymentFile", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Store", limit: 3
    t.datetime "Date", precision: nil
    t.integer "Opr"
    t.boolean "Drawer"
    t.string "Type", limit: 1
    t.string "CustNumb", limit: 6
    t.string "Contract", limit: 10
    t.money "Amount", precision: 19, scale: 4
    t.money "Discount", precision: 19, scale: 4
    t.string "Meth", limit: 1
    t.integer "TransactionType"
    t.string "UserProfileTerminal", limit: 255
    t.integer "VeriFoneTerminalId"
    t.string "EntryMode", limit: 255
    t.string "IdentifierKey", limit: 255, null: false
    t.integer "IdentifierKeyType", null: false
    t.integer "HealthStatus", default: 0, null: false
    t.text "ProcessorResponse"
    t.string "OtherInfo"
    t.integer "PaymentId"
  end

  create_table "PostalCodes", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Zip", limit: 7
    t.string "Province", limit: 2
    t.string "City", limit: 30
    t.integer "Sequence"
    t.integer "CRMTerritoriesID"
    t.index ["Zip"], name: "PostalCodes$Zip"
  end

  create_table "PriceLevel", primary_key: "Id", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.integer "ListOrder"
  end

  create_table "PriceLevel_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "PriceLevelId", null: false
    t.string "Description", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["PriceLevelId", "Languagecode"], name: "PriceLevel_Tr_PriceLevelId", unique: true
  end

  create_table "PriceModel", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "PriceModelTypeId", null: false
    t.string "Name", limit: 255, null: false
    t.string "Description", limit: 1000
    t.string "Formula", limit: 1000, null: false
    t.integer "PriceModelMarginId"
    t.boolean "AllowLowerValue", default: false, null: false
    t.integer "ModifiedBy", null: false
    t.datetime "ModifiedDateTime", precision: nil, null: false
    t.boolean "Inactive", default: false, null: false
  end

  create_table "PriceModelMargin", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Name", limit: 255, null: false
    t.string "Description", limit: 1000
    t.integer "ModifiedBy", null: false
    t.datetime "ModifiedDateTime", precision: nil, null: false
    t.boolean "Inactive", default: false, null: false
  end

  create_table "PriceModelMarginDetail", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "PriceModelMarginId", null: false
    t.decimal "MinPrice", precision: 10, scale: 2, null: false
    t.float "MarginPercent", null: false
  end

  create_table "PriceModelTag", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Tag", limit: 50, null: false
  end

  create_table "PriceModelToItemNumber", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "NUM", limit: 6, null: false
    t.integer "PriceModelId", null: false
    t.index ["NUM", "PriceModelId"], name: "IX_PriceModelToItemNumber", unique: true
  end

  create_table "PriceModelTransactionType", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Name", limit: 50, null: false
  end

  create_table "PriceModelType", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "Type", null: false
    t.string "Name", limit: 255, null: false
    t.integer "ResultTagId", null: false
  end

  create_table "PriceModelTypeToTag", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "PriceModelTypeId", null: false
    t.integer "PriceModelTagId", null: false
    t.index ["PriceModelTypeId", "PriceModelTagId"], name: "IX_PriceModelTypeToTag", unique: true
  end

  create_table "PrintSendOption", primary_key: "Id", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.integer "ContractPrintId"
    t.integer "StatementPrintId"
  end

  create_table "PrintSendOption_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "PrintSendOptionId", null: false
    t.string "Description", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["PrintSendOptionId", "Languagecode"], name: "StatementSendTo_Tr_PrintSendOptionId", unique: true
  end

  create_table "PrinterFile", primary_key: "Store", id: { type: :string, limit: 3 }, force: :cascade do |t|
    t.string "DepositSlip", limit: 255
    t.string "InstructFooter", limit: 255
    t.string "MaintenanceFooter", limit: 255
    t.string "ServiceFooter", limit: 255
    t.string "LetterFooter", limit: 255
    t.index ["Store"], name: "PrinterFile$Store", unique: true
  end

  create_table "ProcessLog", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Terminal", limit: 255
    t.string "ReferenceId", limit: 255
    t.text "Info"
    t.string "Process", limit: 255
    t.string "Program", limit: 255
    t.string "Module", limit: 255
    t.integer "CreatedBy", default: -1, null: false
    t.integer "ChangedBy", default: -1, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
  end

  create_table "ProfitCommParams", primary_key: "Store", id: { type: :string, limit: 3 }, force: :cascade do |t|
    t.boolean "EOM", default: false
    t.datetime "Date", precision: nil
  end

  create_table "ProfitCommissionPosted", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "Batch"
    t.string "Store", limit: 3
    t.datetime "COGSDate", precision: nil
    t.string "Num", limit: 6
    t.string "CNTR", limit: 10
    t.float "Quantity"
    t.float "SellPrice"
    t.float "PurchasePrice"
    t.float "ExtraCharges"
    t.integer "Salesman"
    t.integer "PurchaseNumber"
    t.string "TransCusn", limit: 6
    t.integer "TransSalesman"
    t.datetime "TransDate", precision: nil
    t.datetime "TransClose", precision: nil
    t.datetime "TransCompleted", precision: nil
    t.boolean "Duplicate", default: false
    t.integer "CustSalesman", default: 0
    t.integer "JobSalesman", default: 0
    t.index ["CNTR"], name: "ProfitCommissionPosted_CNTR"
    t.index ["Num"], name: "ProfitCommissionPosted_Num"
    t.index ["Store"], name: "ProfitCommissionPosted_Store"
    t.index ["TransCusn"], name: "ProfitCommissionPosted_TransCusn"
  end

  create_table "ProfitCommissionPostedA", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "Link", limit: 255
    t.integer "Batch"
    t.string "Store", limit: 3
    t.datetime "COGSDate", precision: nil
    t.string "Num", limit: 6
    t.string "CNTR", limit: 10
    t.integer "PurchaseNumber"
    t.float "QtyPosted"
    t.float "TotalPosted"
    t.float "PrevQtyPosted"
    t.float "PrevPosted"
    t.boolean "Duplicate", default: false
    t.string "PostStatus", limit: 255
    t.index ["Batch"], name: "ProfitCommissionPostedA_Batch"
    t.index ["CNTR"], name: "ProfitCommissionPostedA_CNTR"
    t.index ["COGSDate"], name: "ProfitCommissionPostedA_COGSDate"
    t.index ["Num"], name: "ProfitCommissionPostedA_Num"
    t.index ["Store"], name: "ProfitCommissionPostedA_Store"
  end

  create_table "PurchaseOrder", primary_key: ["PONumber", "Sequence"], force: :cascade do |t|
    t.integer "PONumber", null: false
    t.integer "Sequence", default: 0, null: false
    t.datetime "Date", precision: nil
    t.integer "Batch"
    t.string "Store", limit: 3
    t.string "Status", limit: 1
    t.integer "VendorNumber"
    t.integer "Opr"
    t.string "ShipMethod", limit: 50
    t.string "PaymentMethod", limit: 50
    t.datetime "EstShipDate", precision: nil
    t.money "ShippingCost", precision: 19, scale: 4
    t.money "Tax", precision: 19, scale: 4
    t.money "Miscellaneous", precision: 19, scale: 4
    t.money "TotalAmount", precision: 19, scale: 4
    t.string "POForRepair", limit: 10
    t.string "POForItem", limit: 6
    t.text "Notes"
    t.boolean "Posted", default: false
    t.datetime "PostedDate", precision: nil
    t.string "InvoiceNumber", limit: 50
    t.integer "PaymentMethodNumber", default: 0
    t.boolean "Subrental", default: false
    t.boolean "Credit", default: false
    t.integer "CurrencyNumber"
    t.float "ExchangeRate"
    t.datetime "InvoiceDate", precision: nil
    t.integer "Modification", limit: 2
    t.boolean "Pending"
    t.string "ReferenceNumber", limit: 50
    t.boolean "InvoiceReceived", default: false, null: false
    t.integer "TaxCode", default: 0
    t.boolean "RejectedInvoice", default: false, null: false
    t.integer "RejectReasonID"
    t.integer "RejectAssignedOperator"
    t.datetime "InvoiceDueDate", precision: nil
    t.index ["Batch"], name: "PurchaseOrder$Batch"
    t.index ["InvoiceNumber"], name: "PurchaseOrder$InvoiceNumber"
    t.index ["PONumber"], name: "PurchaseOrder$PONumber"
    t.index ["VendorNumber"], name: "PurchaseOrder$VendorNumber"
  end

  create_table "PurchaseOrderColumns", primary_key: "FieldNumber", id: { type: :integer, limit: 2, default: nil }, force: :cascade do |t|
    t.string "Description", limit: 255
  end

  create_table "PurchaseOrderDetail", primary_key: "DetailId", id: :integer, force: :cascade do |t|
    t.integer "PONumber"
    t.integer "Sequence", default: 0
    t.integer "LineNumber"
    t.string "ItemNumber", limit: 6
    t.string "ItemName", limit: 50
    t.string "PartNumber", limit: 50
    t.float "QuantityOrdered"
    t.float "Cases"
    t.float "QuantityReceived"
    t.datetime "DateReceived", precision: nil
    t.money "PriceEach", precision: 19, scale: 4
    t.money "ExtendedPrice", precision: 19, scale: 4
    t.string "ExpenseTo", limit: 50
    t.string "GLAccount", limit: 50
    t.string "Comments", limit: 255
    t.integer "GLNumber"
    t.string "ContractLink", limit: 10
    t.string "Store", limit: 3
    t.money "FreightEach", precision: 19, scale: 4, default: 0.0, null: false
    t.money "TaxEach", precision: 19, scale: 4, default: 0.0, null: false
    t.money "MiscEach", precision: 19, scale: 4, default: 0.0, null: false
    t.integer "PurchaseNumber", default: 0, null: false
    t.integer "AccountingTransactionId"
    t.integer "TaxCode", default: 0
    t.money "TaxAmount", precision: 19, scale: 4, default: 0.0, null: false
    t.index ["ContractLink"], name: "PurchaseOrderDetail$ContractLink"
    t.index ["ItemNumber"], name: "PurchaseOrderDetail$ItemNumber"
    t.index ["PONumber", "Sequence", "LineNumber"], name: "PurchaseOrderDetail_PONumberSequenceLineNumber", unique: true
    t.index ["PONumber", "Sequence"], name: "PurchaseOrderDetail$PONumberSequence"
    t.index ["PONumber"], name: "PurchaseOrderDetail$PONumber"
  end

  create_table "PurchaseOrderEdit", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "Batch"
    t.datetime "Date", precision: nil
    t.integer "PONumber"
    t.integer "Sequence"
    t.integer "Opr"
    t.string "Description", limit: 30
    t.string "Note", limit: 255
    t.integer "Modification", limit: 2
    t.index ["Batch"], name: "PurchaseOrderEdit$Batch"
    t.index ["Opr"], name: "PurchaseOrderEdit$Opr"
    t.index ["PONumber", "Sequence"], name: "PurchaseOrderEdit$PONumberSequence"
    t.index ["PONumber"], name: "PurchaseOrderEdit$PONumber"
  end

  create_table "PurchaseOrderFormat", primary_key: "Number", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 30
    t.string "FileName", limit: 30
    t.boolean "Inactive", default: false
    t.integer "DefaultCopies", limit: 2
    t.boolean "ShowDetails", default: false
    t.integer "DetailColumn1", limit: 2
    t.integer "DetailColumn2", limit: 2
    t.integer "DetailColumn3", limit: 2
    t.integer "DetailColumn4", limit: 2
    t.integer "DetailColumn5", limit: 2
    t.integer "DetailColumn6", limit: 2
    t.integer "DetailColumn7", limit: 2
    t.boolean "RemitTo", default: false
    t.index ["Number"], name: "PurchaseOrderFormat$Number", unique: true
  end

  create_table "PurchaseOrderGL", primary_key: "Number", id: :integer, force: :cascade do |t|
    t.string "GLAccount", limit: 50
    t.boolean "Inactive", default: false
    t.string "GLAccountNumber", limit: 100
    t.integer "AccountingItemId"
  end

  create_table "PurchaseOrderPaymentMethods", primary_key: "MethodNumber", id: :integer, force: :cascade do |t|
    t.string "PaymentMethod", limit: 50
    t.boolean "PostToAP", default: false
    t.string "GLAccount", limit: 255
  end

  create_table "PurchaseOrderRejectedReasons", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "Reason", limit: 1000
    t.boolean "Inactive", default: false, null: false
    t.datetime "CreatedDate", precision: nil, default: -> { "getdate()" }, null: false
    t.datetime "ModifiedDate", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "CreatedBy", default: -1, null: false
  end

  create_table "PurchaseOrderRejectedReasons_Tr", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "LanguageCode", limit: 10, null: false
    t.integer "PO_RejectReasonId", null: false
    t.string "Description", limit: 1000
    t.string "Notes", limit: 1000
    t.boolean "Inactive", default: false, null: false
    t.index ["PO_RejectReasonId"], name: "PO_RejectReasonID_Index", unique: true
  end

  create_table "PurchaseOrderShipTo", primary_key: ["PONumber", "Sequence"], force: :cascade do |t|
    t.integer "PONumber", null: false
    t.integer "Sequence", null: false
    t.string "Company", limit: 255
    t.string "Contact", limit: 255
    t.string "ContactPhone", limit: 255
    t.string "Address1", limit: 255
    t.string "Address2", limit: 255
    t.string "CityState", limit: 255
    t.string "Zip", limit: 255
  end

  create_table "PurchaseOrderTransport", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "CNTR", limit: 10, null: false
    t.integer "ETRItemLineNumber", default: 0, null: false
    t.string "ETRItemNum", limit: 6
    t.float "Weight", default: 0.0, null: false
    t.float "Cubic", default: 0.0, null: false
    t.integer "VendorNumber", default: 0, null: false
    t.integer "PONumber", default: 0, null: false
    t.datetime "DeliveryDDT", precision: nil
    t.datetime "PickUpDDT", precision: nil
    t.string "DeliveryLocationName", limit: 1000
    t.string "DeliveryAddress", limit: 1000
    t.string "DeliveryCity", limit: 255
    t.string "DeliveryPostalCode", limit: 100
    t.string "PickUpLocationName", limit: 1000
    t.string "PickUpAddress", limit: 1000
    t.string "PickUpCity", limit: 255
    t.string "PickUpPostalCode", limit: 100
    t.float "Charge", default: 0.0, null: false
    t.float "Cost", default: 0.0, null: false
    t.string "Comment"
    t.string "DeliveryContact", limit: 255
    t.string "DeliveryContactPhone", limit: 50
    t.string "PickupContact", limit: 255
    t.string "PickupContactPhone", limit: 50
  end

  create_table "PurchaseOrderTransportDetails", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "CNTR", limit: 10, null: false
    t.integer "ETRItemLineNumber", default: 0, null: false
    t.integer "TransportedItemLineNumber", default: 0, null: false
    t.string "TransportedItemNum", limit: 6
  end

  create_table "QueueFile", primary_key: "Number", id: :integer, force: :cascade do |t|
    t.string "Store", limit: 3
    t.string "Item", limit: 6
    t.string "Customer", limit: 50
    t.string "Phone", limit: 50
    t.integer "DesiredQty", limit: 2
    t.datetime "CalledIn", precision: nil
    t.string "AnsweredBy", limit: 50
    t.datetime "CalledBack", precision: nil
    t.string "CalledBy", limit: 50
    t.text "Notes"
    t.index ["Item"], name: "QueueFile$Queue"
  end

  create_table "QuickButton", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "Store", limit: 3
    t.integer "Button", limit: 2
    t.string "Name", limit: 15
    t.string "Description", limit: 50
    t.string "Customer", limit: 20
    t.string "Item0", limit: 20
    t.integer "Qty0", limit: 2
    t.string "Item1", limit: 20
    t.integer "Qty1", limit: 2
    t.string "Item2", limit: 20
    t.integer "Qty2", limit: 2
    t.string "Item3", limit: 20
    t.integer "Qty3", limit: 2
    t.string "Item4", limit: 20
    t.integer "Qty4", limit: 2
    t.string "Item5", limit: 20
    t.integer "Qty5", limit: 2
    t.string "Item6", limit: 20
    t.integer "Qty6", limit: 2
    t.string "Item7", limit: 20
    t.integer "Qty7", limit: 2
    t.string "Item8", limit: 20
    t.integer "Qty8", limit: 2
    t.string "Item9", limit: 20
    t.integer "Qty9", limit: 2
    t.index ["Store", "Button"], name: "QuickButton$StoreButton", unique: true
  end

  create_table "QuoteDetail", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "CNTR", limit: 10, null: false
    t.float "Probability", default: 0.0
    t.index ["CNTR"], name: "QuoteDetail_CNTR", unique: true
  end

  create_table "RateEngine", primary_key: "RateEngineId", id: :integer, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.string "Notes", limit: 255
    t.integer "RateEngineTypeId", default: 0
    t.integer "ItemRateCodeId", default: 0
    t.integer "HoursInADay", default: 0
    t.integer "DaysInAWeek", default: 0
    t.integer "WeeksInAMonth", null: false
    t.integer "MeterHoursInADay", null: false
    t.integer "MeterHoursInAWeek", null: false
    t.integer "MeterHoursInAMonth", null: false
    t.integer "UsageInADay", null: false
    t.integer "UsageInAWeek", null: false
    t.integer "UsageInAMonth", null: false
    t.boolean "MonthToMonth", null: false
    t.float "MeterShiftOvertimePercent", null: false
    t.boolean "ProrateBetweenMinAndDay", null: false
    t.boolean "ProrateContinuation", null: false
    t.integer "BillingDays", null: false
    t.float "GracePercent", null: false
    t.float "GraceMinimum", null: false
    t.float "GraceMaximum", null: false
    t.float "WeekendPercent", null: false
    t.integer "WeekendHours", null: false
    t.money "MinimumExtraCharges", precision: 19, scale: 4, null: false
    t.money "MinimumExtraRefund", precision: 19, scale: 4, null: false
    t.boolean "Inactive", null: false
    t.integer "ReplacementRateEngineId", null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "RoundOvertimeToNextDay", default: false, null: false
    t.boolean "RoundOvertimeToNextHour", default: false, null: false
    t.integer "Period1"
    t.integer "Period2"
    t.integer "Period3"
    t.integer "Period4"
    t.integer "Period5"
    t.integer "Period6"
    t.integer "Period7"
    t.integer "Period8"
    t.integer "Period9"
    t.integer "Period10"
    t.float "Rate1"
    t.float "Rate2"
    t.float "Rate3"
    t.float "Rate4"
    t.float "Rate5"
    t.float "Rate6"
    t.float "Rate7"
    t.float "Rate8"
    t.float "Rate9"
    t.float "Rate10"
    t.boolean "BillForSunday", default: false, null: false
    t.boolean "BillForSaturday", default: false, null: false
    t.integer "SuspenseCalcMethod", default: 0, null: false
    t.boolean "BillThrough", default: false, null: false
  end

  create_table "Region", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.boolean "Inactive", default: false, null: false
    t.integer "CreatedBy", default: -1, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: -1, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.ntext "ChangeNote"
  end

  create_table "RegisterFile", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "Store", limit: 3
    t.money "BeginDrawer", precision: 19, scale: 4, default: 0.0
    t.money "Cash", precision: 19, scale: 4, default: 0.0
    t.money "Check", precision: 19, scale: 4, default: 0.0
    t.money "CreditCard", precision: 19, scale: 4, default: 0.0
    t.money "DebitCard", precision: 19, scale: 4
    t.money "CurrentDrawer", precision: 19, scale: 4, default: 0.0
    t.money "ActiveDeposits", precision: 19, scale: 4, default: 0.0
    t.money "AdjustedDrawer", precision: 19, scale: 4, default: 0.0
    t.money "Visa", precision: 19, scale: 4, default: 0.0
    t.money "Mastercard", precision: 19, scale: 4, default: 0.0
    t.money "Amex", precision: 19, scale: 4, default: 0.0
    t.money "Discover", precision: 19, scale: 4, default: 0.0
    t.money "OtherCC", precision: 19, scale: 4, default: 0.0
    t.index ["Store"], name: "RegisterFile$STORE", unique: true
  end

  create_table "RegisterFileHistory", primary_key: "RegisterFileHistoryId", id: :integer, force: :cascade do |t|
    t.integer "Batch", null: false
    t.string "Store", limit: 3, null: false
    t.money "BeginDrawer", precision: 19, scale: 4, default: 0.0, null: false
    t.money "Cash", precision: 19, scale: 4, default: 0.0, null: false
    t.money "Check", precision: 19, scale: 4, default: 0.0, null: false
    t.money "CreditCard", precision: 19, scale: 4, default: 0.0, null: false
    t.money "DebitCard", precision: 19, scale: 4, default: 0.0, null: false
    t.money "CurrentDrawer", precision: 19, scale: 4, default: 0.0, null: false
    t.money "ActiveDeposits", precision: 19, scale: 4, default: 0.0, null: false
    t.money "AdjustedDrawer", precision: 19, scale: 4, default: 0.0, null: false
    t.money "Visa", precision: 19, scale: 4, default: 0.0, null: false
    t.money "Mastercard", precision: 19, scale: 4, default: 0.0, null: false
    t.money "Amex", precision: 19, scale: 4, default: 0.0, null: false
    t.money "Discover", precision: 19, scale: 4, default: 0.0, null: false
    t.money "OtherCC", precision: 19, scale: 4, default: 0.0, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
  end

  create_table "ReportDates", primary_key: "ReportDate", id: { type: :datetime, precision: nil }, force: :cascade do |t|
  end

  create_table "ReportDescriptionGroup", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.varchar_max "Name", null: false
    t.integer "DashboardTypeId"
    t.integer "SecurityListId", null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.ntext "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "ReportDescriptions", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "SecurityListId"
    t.string "ReportFileName", limit: 100
    t.text "ProgramName"
    t.string "FormName", limit: 100
    t.integer "ReportDescriptionGroupId"
    t.integer "SelectedObjectDashboardTypeId"
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "ReportFavorites", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "OperatorId", null: false
    t.integer "Order", null: false
    t.integer "ReportDescriptionsId", null: false
    t.integer "CreatedBy", default: -1, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: -1, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.ntext "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "ReportFormat", primary_key: "Number", id: :integer, force: :cascade do |t|
    t.integer "File", limit: 2, default: 0
    t.string "Description", limit: 50
    t.integer "NumFields", default: 0
    t.integer "Sort", default: 0
    t.integer "Order", default: 0
    t.integer "Field1", default: 0
    t.integer "FB1", default: 0
    t.integer "NB1", default: 0
    t.string "Fmt1", limit: 50
    t.string "Label1", limit: 50
    t.string "Trans1", limit: 50
    t.string "Math1", limit: 50
    t.integer "Field2", default: 0
    t.integer "FB2", default: 0
    t.integer "NB2", default: 0
    t.string "Fmt2", limit: 50
    t.string "Label2", limit: 50
    t.string "Trans2", limit: 50
    t.string "Math2", limit: 50
    t.integer "Field3", default: 0
    t.integer "FB3", default: 0
    t.integer "NB3", default: 0
    t.string "Fmt3", limit: 50
    t.string "Label3", limit: 50
    t.string "Trans3", limit: 50
    t.string "Math3", limit: 50
    t.integer "Field4", default: 0
    t.integer "FB4", default: 0
    t.integer "NB4", default: 0
    t.string "Fmt4", limit: 50
    t.string "Label4", limit: 50
    t.string "Trans4", limit: 50
    t.string "Math4", limit: 50
    t.integer "Field5", default: 0
    t.integer "FB5", default: 0
    t.integer "NB5", default: 0
    t.string "Fmt5", limit: 50
    t.string "Label5", limit: 50
    t.string "Trans5", limit: 50
    t.string "Math5", limit: 50
    t.integer "Field6", default: 0
    t.integer "FB6", default: 0
    t.integer "NB6", default: 0
    t.string "Fmt6", limit: 50
    t.string "Label6", limit: 50
    t.string "Trans6", limit: 50
    t.string "Math6", limit: 50
    t.integer "Field7", default: 0
    t.integer "FB7", default: 0
    t.integer "NB7", default: 0
    t.string "Fmt7", limit: 50
    t.string "Label7", limit: 50
    t.string "Trans7", limit: 50
    t.string "Math7", limit: 50
    t.integer "Field8", default: 0
    t.integer "FB8", default: 0
    t.integer "NB8", default: 0
    t.string "Fmt8", limit: 50
    t.string "Label8", limit: 50
    t.string "Trans8", limit: 50
    t.string "Math8", limit: 50
    t.integer "Field9", default: 0
    t.integer "FB9", default: 0
    t.integer "NB9", default: 0
    t.string "Fmt9", limit: 50
    t.string "Label9", limit: 50
    t.string "Trans9", limit: 50
    t.string "Math9", limit: 50
    t.integer "Field10", default: 0
    t.integer "FB10", default: 0
    t.integer "NB10", default: 0
    t.string "Fmt10", limit: 50
    t.string "Label10", limit: 50
    t.string "Trans10", limit: 50
    t.string "Math10", limit: 50
    t.integer "Field11", default: 0
    t.integer "FB11", default: 0
    t.integer "NB11", default: 0
    t.string "Fmt11", limit: 50
    t.string "Label11", limit: 50
    t.string "Trans11", limit: 50
    t.string "Math11", limit: 50
    t.integer "Field12", default: 0
    t.integer "FB12", default: 0
    t.integer "NB12", default: 0
    t.string "Fmt12", limit: 50
    t.string "Label12", limit: 50
    t.string "Trans12", limit: 50
    t.string "Math12", limit: 50
    t.integer "Field13", default: 0
    t.integer "FB13", default: 0
    t.integer "NB13", default: 0
    t.string "Fmt13", limit: 50
    t.string "Label13", limit: 50
    t.string "Trans13", limit: 50
    t.string "Math13", limit: 50
    t.integer "Field14", default: 0
    t.integer "FB14", default: 0
    t.integer "NB14", default: 0
    t.string "Fmt14", limit: 50
    t.string "Label14", limit: 50
    t.string "Trans14", limit: 50
    t.string "Math14", limit: 50
    t.integer "Field15", default: 0
    t.integer "FB15", default: 0
    t.integer "NB15", default: 0
    t.string "Fmt15", limit: 50
    t.string "Label15", limit: 50
    t.string "Trans15", limit: 50
    t.string "Math15", limit: 50
    t.integer "Field16", default: 0
    t.integer "FB16", default: 0
    t.integer "NB16", default: 0
    t.string "Fmt16", limit: 50
    t.string "Label16", limit: 50
    t.string "Trans16", limit: 50
    t.string "Math16", limit: 50
    t.integer "Field17", default: 0
    t.integer "FB17", default: 0
    t.integer "NB17", default: 0
    t.string "Fmt17", limit: 50
    t.string "Label17", limit: 50
    t.string "Trans17", limit: 50
    t.string "Math17", limit: 50
    t.integer "Field18", default: 0
    t.integer "FB18", default: 0
    t.integer "NB18", default: 0
    t.string "Fmt18", limit: 50
    t.string "Label18", limit: 50
    t.string "Trans18", limit: 50
    t.string "Math18", limit: 50
    t.integer "Field19", default: 0
    t.integer "FB19", default: 0
    t.integer "NB19", default: 0
    t.string "Fmt19", limit: 50
    t.string "Label19", limit: 50
    t.string "Trans19", limit: 50
    t.string "Math19", limit: 50
    t.integer "Field20", default: 0
    t.integer "FB20", default: 0
    t.integer "NB20", default: 0
    t.string "Fmt20", limit: 50
    t.string "Label20", limit: 50
    t.string "Trans20", limit: 50
    t.string "Math20", limit: 50
    t.index ["NumFields"], name: "ReportFormat$NumFields"
    t.index ["Number"], name: "ReportFormat$Number", unique: true
  end

  create_table "ReportLog", primary_key: "HistoryNumber", id: :integer, force: :cascade do |t|
    t.datetime "ReportDate", precision: nil
    t.string "ReportName", limit: 255
    t.string "Program", limit: 255
    t.string "Terminal", limit: 255
    t.integer "Opr"
    t.boolean "Exported", default: false
    t.integer "ReportID"
    t.index ["Opr", "ReportID"], name: "ReportLog_OprReportID"
  end

  create_table "ReportPrinting", primary_key: "ReportNumber", id: :integer, force: :cascade do |t|
    t.string "Store", limit: 3
    t.string "Description", limit: 255
    t.string "FileName", limit: 255
    t.boolean "Custom", default: false
    t.integer "PrintFrequency", limit: 2, default: 0
    t.string "PrinterName", limit: 255
    t.integer "FaxFrequency", limit: 2, default: 0
    t.string "FaxNumber", limit: 255
    t.integer "PDFFrequency", limit: 2, default: 0
    t.string "PDFFileName", limit: 255
    t.integer "EmailFrequency", limit: 2, default: 0
    t.string "EmailAddress", limit: 254, default: "", null: false
    t.text "SelectionCriteria"
    t.string "SortField1", limit: 255
    t.string "SortField2", limit: 255
    t.string "SortField3", limit: 255
    t.string "Parameter1", limit: 255
    t.string "ParameterValue1", limit: 255
    t.string "Parameter2", limit: 255
    t.string "ParameterValue2", limit: 255
    t.string "Parameter3", limit: 255
    t.string "ParameterValue3", limit: 255
    t.string "Parameter4", limit: 255
    t.string "ParameterValue4", limit: 255
    t.string "Parameter5", limit: 255
    t.string "ParameterValue5", limit: 255
    t.string "Parameter6", limit: 255
    t.string "ParameterValue6", limit: 255
    t.string "Parameter7", limit: 255
    t.string "ParameterValue7", limit: 255
    t.string "Parameter8", limit: 255
    t.string "ParameterValue8", limit: 255
    t.string "Parameter9", limit: 255
    t.string "ParameterValue9", limit: 255
    t.string "Parameter10", limit: 255
    t.string "ParameterValue10", limit: 255
    t.string "Parameter11", limit: 255
    t.string "ParameterValue11", limit: 255
    t.string "Parameter12", limit: 255
    t.string "ParameterValue12", limit: 255
    t.string "Parameter13", limit: 255
    t.string "ParameterValue13", limit: 255
    t.string "Parameter14", limit: 255
    t.string "ParameterValue14", limit: 255
    t.string "Parameter15", limit: 255
    t.string "ParameterValue15", limit: 255
    t.index ["ReportNumber"], name: "ReportPrinting$ReportNumber", unique: true
  end

  create_table "ReportPrintingFrequencies", id: false, force: :cascade do |t|
    t.integer "Frequency"
    t.string "Description", limit: 50
    t.index ["Frequency"], name: "ReportPrintingFrequencies$Frequency", unique: true
  end

  create_table "RevenueDateCode", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.boolean "Inactive", default: false, null: false
  end

  create_table "RevenueDateCode_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "LanguageCode", limit: 10, null: false
    t.integer "RevenueDateCodeId", null: false
    t.string "Description", limit: 255, null: false
    t.boolean "Inactive", default: false, null: false
    t.integer "CreatedBy", default: -1, null: false
    t.integer "ChangedBy", default: -1, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.string "ChangeNote"
  end

  create_table "RouseAnalytics", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "ClientCode", limit: 50
    t.datetime "DateUpdated", precision: nil
    t.string "Store", limit: 3
    t.string "CatClass", limit: 6
    t.decimal "Monthly_Standard_MAX", precision: 18, scale: 2
    t.decimal "Monthly_Standard_TQ", precision: 18, scale: 2
    t.decimal "Monthly_Standard_AVG", precision: 18, scale: 2
    t.decimal "Monthly_Standard_BQ", precision: 18, scale: 2
    t.decimal "Monthly_Standard_MIN", precision: 18, scale: 2
    t.decimal "Monthly_Spot_MAX", precision: 18, scale: 2
    t.decimal "Monthly_Spot_TQ", precision: 18, scale: 2
    t.decimal "Monthly_Spot_AVG", precision: 18, scale: 2
    t.decimal "Monthly_Spot_BQ", precision: 18, scale: 2
    t.decimal "Monthly_Spot_MIN", precision: 18, scale: 2
    t.decimal "Monthly_Contract_MAX", precision: 18, scale: 2
    t.decimal "Monthly_Contract_TQ", precision: 18, scale: 2
    t.decimal "Monthly_Contract_AVG", precision: 18, scale: 2
    t.decimal "Monthly_Contract_BQ", precision: 18, scale: 2
    t.decimal "Monthly_Contract_MIN", precision: 18, scale: 2
    t.decimal "Weekly_Standard_MAX", precision: 18, scale: 2
    t.decimal "Weekly_Standard_TQ", precision: 18, scale: 2
    t.decimal "Weekly_Standard_AVG", precision: 18, scale: 2
    t.decimal "Weekly_Standard_BQ", precision: 18, scale: 2
    t.decimal "Weekly_Standard_MIN", precision: 18, scale: 2
    t.decimal "Weekly_Spot_MAX", precision: 18, scale: 2
    t.decimal "Weekly_Spot_TQ", precision: 18, scale: 2
    t.decimal "Weekly_Spot_AVG", precision: 18, scale: 2
    t.decimal "Weekly_Spot_BQ", precision: 18, scale: 2
    t.decimal "Weekly_Spot_MIN", precision: 18, scale: 2
    t.decimal "Weekly_Contract_MAX", precision: 18, scale: 2
    t.decimal "Weekly_Contract_TQ", precision: 18, scale: 2
    t.decimal "Weekly_Contract_AVG", precision: 18, scale: 2
    t.decimal "Weekly_Contract_BQ", precision: 18, scale: 2
    t.decimal "Weekly_Contract_MIN", precision: 18, scale: 2
    t.decimal "Daily_Standard_MAX", precision: 18, scale: 2
    t.decimal "Daily_Standard_TQ", precision: 18, scale: 2
    t.decimal "Daily_Standard_AVG", precision: 18, scale: 2
    t.decimal "Daily_Standard_BQ", precision: 18, scale: 2
    t.decimal "Daily_Standard_MIN", precision: 18, scale: 2
    t.decimal "Daily_Spot_MAX", precision: 18, scale: 2
    t.decimal "Daily_Spot_TQ", precision: 18, scale: 2
    t.decimal "Daily_Spot_AVG", precision: 18, scale: 2
    t.decimal "Daily_Spot_BQ", precision: 18, scale: 2
    t.decimal "Daily_Spot_MIN", precision: 18, scale: 2
    t.decimal "Daily_Contract_MAX", precision: 18, scale: 2
    t.decimal "Daily_Contract_TQ", precision: 18, scale: 2
    t.decimal "Daily_Contract_AVG", precision: 18, scale: 2
    t.decimal "Daily_Contract_BQ", precision: 18, scale: 2
    t.decimal "Daily_Contract_MIN", precision: 18, scale: 2
    t.decimal "Util_Benchmark", precision: 18, scale: 2
  end

  create_table "SFSync_AuthorizedContacts", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "Number", null: false
    t.string "SFID", limit: 100
    t.datetime "LastSyncDate", precision: nil
  end

  create_table "SFSync_CallLogCalls", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "Number", null: false
    t.string "SFID", limit: 100
    t.datetime "LastSyncDate", precision: nil
  end

  create_table "SFSync_CustomerFileAccounts", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "CNUM", limit: 6, null: false
    t.string "SFID", limit: 100
    t.datetime "LastSyncDate", precision: nil
    t.index ["CNUM"], name: "CNUMIndex", unique: true
    t.index ["SFID"], name: "SFIDIndex", unique: true
  end

  create_table "SFSync_ItemFileProducts", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "NUM", limit: 6, null: false
    t.string "SFID", limit: 100
    t.datetime "LastSyncDate", precision: nil
    t.string "PriceBookId", limit: 100
    t.index ["NUM"], name: "NumIndex", unique: true
    t.index ["SFID"], name: "SFIDIndex", unique: true
  end

  create_table "SFSync_OperatorIdUsers", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "OpNo", null: false
    t.string "SFID", limit: 100
    t.datetime "LastSyncDate", precision: nil
    t.index ["OpNo"], name: "OpNoIndex", unique: true
    t.index ["SFID"], name: "SFIDIndex", unique: true
  end

  create_table "SFSync_Parameters", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.boolean "FirstTimeRan", default: false, null: false
    t.string "EmailToNotify", limit: 254, default: "", null: false
    t.string "AutoRunMode", limit: 50
    t.integer "FeatureMode"
    t.integer "LoggingDepth"
    t.string "RegisteredUsersCountEncoded", limit: 10
    t.boolean "CallLogsRegistered", default: false, null: false
    t.boolean "ContractsRegistered", default: false, null: false
    t.string "Keys", limit: 100
    t.string "POR", limit: 10
    t.datetime "Customer_LastModifiedCheckDate", precision: nil
    t.datetime "Account_LastModifiedCheckDate", precision: nil
    t.datetime "Contact_LastModifiedCheckDate", precision: nil
    t.datetime "Authorized_LastModifiedCheckDate", precision: nil
    t.string "FieldsToCheckForDuplicates", limit: 1000
    t.string "AutoSyncOptions", limit: 1000
    t.string "SalesForceLoginURL", limit: 300
    t.string "SalesForceDataServiceURLEnding", limit: 100
    t.string "SFUsername", limit: 100
    t.string "SFPassword", limit: 100
    t.string "SFConsumerKey", limit: 300
    t.string "SFConsumerSecret", limit: 300
    t.string "ProductCodeFieldLink", limit: 10
    t.integer "ProductsPerSession"
    t.integer "OpportunitiesPerSession"
    t.datetime "CreationDate", precision: nil
    t.datetime "ModificationDate", precision: nil
    t.boolean "SFJson_Synced", default: false, null: false
    t.boolean "SFXml_Synced", default: false, null: false
  end

  create_table "SFSync_SalesmanUsers", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "Number", null: false
    t.string "SFID", limit: 100
    t.datetime "LastSyncDate", precision: nil
    t.string "Salesforce_name", limit: 100
    t.string "Salesforce_email", limit: 254, default: "", null: false
    t.boolean "Selected", default: false, null: false
    t.index ["Number"], name: "NumberIndex", unique: true
    t.index ["SFID"], name: "SFIDIndex", unique: true
  end

  create_table "SFSync_TransactionOpportunities", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "CNTR", limit: 10, null: false
    t.string "SFID", limit: 100
    t.datetime "LastSyncDate", precision: nil
    t.index ["CNTR"], name: "CNTRIndex", unique: true
    t.index ["SFID"], name: "SFIDIndex", unique: true
  end

  create_table "SFSync_TransactionPDFs", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "Cntr", limit: 10, null: false
    t.integer "Modification", null: false
    t.string "SFID", limit: 100
    t.datetime "LastSyncDate", precision: nil
  end

  create_table "SalesPersonGoalTypes", primary_key: "Id", id: :integer, default: nil, force: :cascade do |t|
    t.string "Name", limit: 100, null: false
    t.boolean "Inactive", default: false, null: false
    t.datetime "CreatedOn", precision: nil, default: -> { "getdate()" }, null: false
  end

  create_table "SalesPersonGoalTypes_Tr", primary_key: "Id", id: :integer, default: nil, force: :cascade do |t|
    t.integer "SalesPersonGoalTypeId", null: false
    t.string "LanguageCode", limit: 10
    t.boolean "Inactive"
    t.integer "CreatedBy", default: -1, null: false
    t.integer "ChangedBy", default: -1, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.string "Name", limit: 100
  end

  create_table "SalesPersonMonthlyGoals", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "SalesPersonGoalTypeId", null: false
    t.integer "SalesPersonNumber", null: false
    t.integer "Year", limit: 2, null: false
    t.integer "Month", limit: 1, null: false
    t.money "Amount", precision: 19, scale: 4, null: false
    t.integer "CreatedBy", null: false
    t.integer "ChangedBy", null: false
    t.datetime "CreatedDate", precision: nil, default: -> { "getdate()" }, null: false
    t.datetime "UpdatedDate", precision: nil, default: -> { "getdate()" }, null: false
    t.index ["SalesPersonNumber"], name: "IDX_SalesPersonMonthlyGoals_SalesPersonNumber"
  end

  create_table "SalesTaxMethod", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.string "URL", limit: 255
    t.string "Password", limit: 255
    t.string "TrustedKey", limit: 255
    t.string "APIToken", limit: 255
    t.datetime "TokenExpiration", precision: nil
    t.boolean "Inactive", default: false, null: false
    t.integer "CreatedBy", default: -1, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: -1, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.ntext "ChangeNote"
  end

  create_table "Salesman", primary_key: "Number", id: :integer, force: :cascade do |t|
    t.string "Name", limit: 50
    t.boolean "Inactive", default: false
    t.integer "OperatorNo"
    t.string "Email", limit: 254, default: "", null: false
    t.string "CellPhone", limit: 255
    t.integer "CellProvider", limit: 2
    t.integer "Notification", limit: 2
    t.boolean "OpenQuote", default: false
    t.boolean "OpenReservation", default: false
    t.boolean "OpenContract", default: false
    t.boolean "OpenWorkOrder", default: false
    t.boolean "ModifyQuote", default: false
    t.boolean "ModifyReservation", default: false
    t.boolean "ModifyOpen", default: false
    t.boolean "ModifyClose", default: false
    t.boolean "ModifyWorkOrder", default: false
    t.boolean "SendOut", default: false
    t.boolean "Close", default: false
    t.boolean "CallOffRent", default: false
    t.boolean "MarkLoaded", default: false
    t.boolean "StatusChange", default: false
    t.boolean "OperationChange", default: false
    t.float "RentPercent"
    t.float "SalePercent"
    t.float "ProfitPercent"
    t.float "DWPercent"
    t.float "AssetPercent"
    t.float "OtherPercent"
    t.float "ItemPercent"
    t.float "Aging30Percent"
    t.float "Aging60Percent"
    t.float "Aging90Percent"
    t.float "Aging120Percent"
    t.float "AgingOverPercent"
    t.boolean "Geofence", default: false, null: false
    t.integer "AccountingSalesmanId"
    t.ss_timestamp "Version", null: false
    t.index ["CellProvider"], name: "Salesman$CellProvider"
    t.index ["Number"], name: "Salesman$Number", unique: true
    t.index ["OperatorNo"], name: "Salesman$OperatorNo"
    t.index ["Version"], name: "IDX_Salesman_Version"
  end

  create_table "SalesmanTerritoryRelationship", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "Salesman", null: false
    t.integer "TerritoryId", null: false
    t.boolean "Inactive", default: false, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.string "ChangeNote", limit: 255
  end

  create_table "SchedulingBudgetExceptions", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "ShiftId", default: 0, null: false
    t.integer "OperatorGroup", default: 0, null: false
    t.string "Store", limit: 6
    t.datetime "Start", precision: nil
    t.boolean "NotAvailableAllDay", default: false, null: false
    t.float "Duration", default: 0.0, null: false
    t.datetime "Finish", precision: nil
    t.string "Comments", limit: 255
    t.datetime "RequestedOn", precision: nil
    t.datetime "PlannedOn", precision: nil
    t.integer "PlannedByOpNo", default: 0, null: false
    t.boolean "Voided", default: false, null: false
    t.datetime "VoidedOn", precision: nil
    t.integer "VoidedByopNo", default: 0, null: false
    t.integer "VoidCode", default: 0, null: false
    t.datetime "LastEdit", precision: nil
  end

  create_table "SchedulingBudgetPlan", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "ShiftId", default: 0, null: false
    t.integer "OperatorGroup", default: 0, null: false
    t.string "Store", limit: 6
    t.datetime "Start", precision: nil
    t.float "Duration", default: 0.0, null: false
    t.datetime "Finish", precision: nil
    t.float "RequiredEmployees", default: 0.0, null: false
    t.float "RequiredHours", default: 0.0, null: false
    t.datetime "PlannedOn", precision: nil
    t.integer "PlannedByOpNo", default: 0, null: false
    t.boolean "Voided", default: false, null: false
    t.datetime "VoidedOn", precision: nil
    t.integer "VoidedByOpNo", default: 0, null: false
    t.integer "VoidCode", default: 0, null: false
    t.datetime "LastEdit", precision: nil
  end

  create_table "SchedulingEmployee", primary_key: "OpNo", id: :integer, default: nil, force: :cascade do |t|
    t.integer "WorkWeekStartDayOfWeek", default: 0, null: false
    t.datetime "WorkWeekStartTime", precision: nil
    t.boolean "OverTimeEligible", default: false, null: false
    t.float "Duration", default: 0.0, null: false
    t.float "OverTimeThresholdDay", default: 0.0, null: false
    t.float "OvertimeThresholdWeek", default: 0.0, null: false
    t.float "BreakAllowance", default: 0.0, null: false
    t.datetime "LastEdit", precision: nil
  end

  create_table "SchedulingEmployeeShiftExceptions", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "OpNo", default: 0, null: false
    t.integer "ShiftId", default: 0, null: false
    t.integer "DayOfWeek", default: 0, null: false
    t.integer "StartTimeDifferential", default: 0, null: false
    t.integer "FinishDifferential", default: 0, null: false
    t.datetime "PlannedOn", precision: nil
    t.integer "PlannedByOpNo", default: 0, null: false
    t.boolean "Voided", default: false, null: false
    t.datetime "VoidedOn", precision: nil
    t.integer "VoidedByOpNo", default: 0, null: false
    t.integer "VoidCode", default: 0, null: false
    t.datetime "LastEdit", precision: nil
  end

  create_table "SchedulingOptions", primary_key: "Store", id: { type: :string, limit: 6 }, force: :cascade do |t|
    t.integer "AddShiftPasswordLevel", default: 0, null: false
    t.integer "ApproveExceptionPasswordLevel", default: 0, null: false
    t.integer "AddBudgetPasswordLevel", default: 0, null: false
    t.integer "StartDayOfWeek", default: 0, null: false
    t.integer "CalendarFirstVisibleTime", default: 0, null: false
    t.integer "AutoScheduleWeeks", default: 0, null: false
  end

  create_table "SchedulingShiftExceptions", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "ShiftId", default: 0, null: false
    t.integer "OpNo", default: 0, null: false
    t.string "Store", limit: 6
    t.datetime "Start", precision: nil
    t.boolean "NotAvailableAllDay", default: false, null: false
    t.float "Duration", default: 0.0, null: false
    t.datetime "Finish", precision: nil
    t.integer "Type", default: 0, null: false
    t.string "Comments", limit: 255
    t.datetime "RequestedOn", precision: nil
    t.boolean "Approved", default: false, null: false
    t.datetime "ApprovedOn", precision: nil
    t.integer "ApprovedByOpNo", default: 0, null: false
    t.string "ApprovalComments", limit: 255
    t.boolean "Voided", default: false, null: false
    t.datetime "VoidedOn", precision: nil
    t.integer "VoidedByopNo", default: 0, null: false
    t.integer "VoidCode", default: 0, null: false
    t.integer "BlockId", default: 0, null: false
    t.datetime "LastEdit", precision: nil
  end

  create_table "SchedulingShiftPlan", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "ShiftId", default: 0, null: false
    t.integer "OpNo", default: 0, null: false
    t.string "Store", limit: 6
    t.datetime "Start", precision: nil
    t.float "Duration", default: 0.0, null: false
    t.float "BreakAllowance", default: 0.0, null: false
    t.datetime "Finish", precision: nil
    t.datetime "PlannedOn", precision: nil
    t.integer "PlannedByOpNo", default: 0, null: false
    t.boolean "Approved", default: false, null: false
    t.datetime "ApprovedOn", precision: nil
    t.integer "ApprovedByOpNo", default: 0, null: false
    t.string "ApprovalComments", limit: 255
    t.boolean "Voided", default: false, null: false
    t.datetime "VoidedOn", precision: nil
    t.integer "VoidedByOpNo", default: 0, null: false
    t.integer "VoidCode", default: 0, null: false
    t.datetime "LastEdit", precision: nil
  end

  create_table "SchedulingShiftTemplateEmployeeGroups", primary_key: ["ShiftId", "OperatorGroupNumber"], force: :cascade do |t|
    t.integer "ShiftId", null: false
    t.integer "OperatorGroupNumber", null: false
    t.float "RequiredHours", default: 0.0, null: false
    t.float "RequiredEmployees", default: 0.0, null: false
    t.integer "ManagerOpNo", default: 0, null: false
    t.float "BreakAllowance", default: 0.0, null: false
    t.float "Recurrence", default: 0.0, null: false
    t.boolean "Rotate", default: false, null: false
    t.datetime "LastRecurrence", precision: nil
    t.float "LastRank", default: 0.0, null: false
    t.boolean "Negate", default: false, null: false
    t.boolean "NegateDayInCurrentWeek", default: false, null: false
    t.integer "NegateDayOfWeek", default: 0, null: false
    t.datetime "PlannedOn", precision: nil
    t.integer "PlannedByOpNo", default: 0, null: false
    t.datetime "LastEdit", precision: nil
  end

  create_table "SchedulingShiftTemplateEmployees", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "ShiftId", default: 0, null: false
    t.integer "EmployeeOpNo", default: 0, null: false
    t.integer "EmployeeGroupNumber", default: 0, null: false
    t.integer "Rank", default: 0, null: false
    t.datetime "LastEdit", precision: nil
  end

  create_table "SchedulingShiftTemplates", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Name", limit: 255
    t.integer "DayOfWeek", default: 0, null: false
    t.string "Store", limit: 6
    t.datetime "Start", precision: nil
    t.float "Duration", default: 0.0, null: false
    t.datetime "Finish", precision: nil
    t.boolean "FlexibleStartTime", default: false, null: false
    t.datetime "PlannedOn", precision: nil
    t.integer "PlannedByOpNo", default: 0, null: false
    t.boolean "Voided", default: false, null: false
    t.datetime "VoidedOn", precision: nil
    t.integer "VoidedByOpNo", default: 0, null: false
    t.integer "VoidCode", default: 0, null: false
    t.datetime "LastEdit", precision: nil
  end

  create_table "SchedulingUserPreferences", primary_key: "OperatorNumber", id: :integer, default: nil, force: :cascade do |t|
    t.integer "ShowGroupNumber", default: 0, null: false
    t.integer "ShowCalendarView", default: 0, null: false
    t.integer "ShowCalendarTimeIncrement", default: 0, null: false
    t.integer "RequestApprovalLevel", default: 0, null: false
    t.integer "CalendarFirstVisibleTime", default: 0, null: false
    t.string "WorkWeekDaysCSV", limit: 255
  end

  create_table "SchedulingVersion", primary_key: "Vnum", id: :integer, default: nil, force: :cascade do |t|
    t.datetime "Vday", precision: nil
  end

  create_table "SearchSave", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Name", limit: 255, null: false
    t.string "UserId", limit: 25, null: false
    t.string "ObjectId", limit: 255, null: false
    t.text "DbValue", null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.ntext "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.integer "SearchSaveType", default: 2
  end

  create_table "SearchSaveOperator", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "SearchSaveId", null: false
    t.string "OperatorId", limit: 255, null: false
    t.boolean "IsDefault", default: false, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.ntext "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "SecurityArea", primary_key: "Id", id: :integer, default: nil, force: :cascade do |t|
    t.string "SecurityAreaName", limit: 255, null: false
    t.boolean "EliteOnly", null: false
    t.boolean "Inactive", null: false
    t.index ["SecurityAreaName"], name: "SecurityArea_SecurityAreaName", unique: true
  end

  create_table "SecurityArea_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "SecurityAreaId", null: false
    t.string "Languagecode", limit: 10, null: false
    t.string "SecurityAreaName", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["SecurityAreaId", "Languagecode"], name: "SecurityArea_Tr_SecurityAreadId", unique: true
  end

  create_table "SecurityDetail", primary_key: "SecurityId", id: :integer, force: :cascade do |t|
    t.integer "SecurityListId", null: false
    t.integer "SecurityTypeId", null: false
    t.string "SecurityLink", limit: 50
    t.boolean "AllowAccess", null: false
    t.integer "OverridePassword", limit: 2, null: false
    t.integer "CreatedBy", null: false
    t.datetime "CreatedDate", precision: nil, null: false
    t.string "Comment", limit: 255
    t.index ["SecurityLink"], name: "SecurityDetail_SecurityLink"
    t.index ["SecurityListId"], name: "SecurityDetail_SecurityListId"
    t.index ["SecurityTypeId"], name: "SecurityDetail_SecurityTypeId"
  end

  create_table "SecurityList", primary_key: "SecurityListId", id: :integer, default: nil, force: :cascade do |t|
    t.string "SecurityArea", limit: 255
    t.string "SecurityDescription", limit: 255
    t.boolean "DefaultAllowAccess", null: false
    t.integer "DefaultOverridePassword", limit: 2, null: false
    t.string "Comment", limit: 255
    t.integer "SecurityAreaId"
    t.string "SecurityDefinition", limit: 1000, default: ""
    t.string "VersionReleased", limit: 100, default: ""
  end

  create_table "SecurityList_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "SecurityListId", null: false
    t.string "Languagecode", limit: 10, null: false
    t.string "SecurityDescription", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.string "SecurityDefinition", limit: 1000
    t.index ["SecurityListId", "Languagecode"], name: "SecurityList_Tr_SecurityListId", unique: true
  end

  create_table "SecurityType", primary_key: "SecurityTypeId", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.boolean "Inactive", default: false, null: false
  end

  create_table "SecurityType_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "SecurityTypeId", null: false
    t.string "Languagecode", limit: 10, null: false
    t.string "Description", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["SecurityTypeId", "Languagecode"], name: "SecurityType_Tr_SecurityTypeId", unique: true
  end

  create_table "SelectionCriteria", primary_key: "Number", id: :integer, force: :cascade do |t|
    t.integer "File", limit: 2, default: 0
    t.string "Description", limit: 50
    t.boolean "Boolean1", default: false
    t.integer "Field1", default: 0
    t.string "Operator1", limit: 50
    t.string "Value1", limit: 50
    t.integer "FB1", default: 0
    t.integer "NB1", default: 0
    t.boolean "Boolean2", default: false
    t.integer "Field2", default: 0
    t.string "Operator2", limit: 50
    t.string "Value2", limit: 50
    t.integer "FB2", default: 0
    t.integer "NB2", default: 0
    t.boolean "Boolean3", default: false
    t.integer "Field3", default: 0
    t.string "Operator3", limit: 50
    t.string "Value3", limit: 50
    t.integer "FB3", default: 0
    t.integer "NB3", default: 0
    t.boolean "Boolean4", default: false
    t.integer "Field4", default: 0
    t.string "Operator4", limit: 50
    t.string "Value4", limit: 50
    t.integer "FB4", default: 0
    t.integer "NB4", default: 0
    t.boolean "Boolean5", default: false
    t.integer "Field5", default: 0
    t.string "Operator5", limit: 50
    t.string "Value5", limit: 50
    t.integer "FB5", default: 0
    t.integer "NB5", default: 0
    t.boolean "Boolean6", default: false
    t.integer "Field6", default: 0
    t.string "Operator6", limit: 50
    t.string "Value6", limit: 50
    t.integer "FB6", default: 0
    t.integer "NB6", default: 0
    t.boolean "Boolean7", default: false
    t.integer "Field7", default: 0
    t.string "Operator7", limit: 50
    t.string "Value7", limit: 50
    t.integer "FB7", default: 0
    t.integer "NB7", default: 0
    t.boolean "Boolean8", default: false
    t.integer "Field8", default: 0
    t.string "Operator8", limit: 50
    t.string "Value8", limit: 50
    t.integer "FB8", default: 0
    t.integer "NB8", default: 0
    t.boolean "Boolean9", default: false
    t.integer "Field9", default: 0
    t.string "Operator9", limit: 50
    t.string "Value9", limit: 50
    t.integer "FB9", default: 0
    t.integer "NB9", default: 0
    t.boolean "Boolean10", default: false
    t.integer "Field10", default: 0
    t.string "Operator10", limit: 50
    t.string "Value10", limit: 50
    t.integer "FB10", default: 0
    t.integer "NB10", default: 0
    t.index ["Number"], name: "SelectionCriteria$Number"
  end

  create_table "ShipFedEx", id: false, force: :cascade do |t|
    t.string "ShipmentID", limit: 255
    t.string "MasterTrackingNumber", limit: 255
    t.string "TrackingNumber", limit: 255
    t.string "SmartPostGroundTracking", limit: 255
    t.string "CustAHSType", limit: 255
    t.string "CustAlaskaSurcharge", limit: 255
    t.string "CustAppointmentDeliverySurcharge", limit: 255
    t.string "CustBonusDiscountAmount", limit: 255
    t.string "CustCAGlobalSalesTaxSurcharge", limit: 255
    t.string "CustCAHarmonizedSalesTaxSurcharge", limit: 255
    t.string "CustCAProvincialSalesTaxSurcharge", limit: 255
    t.string "CustClearanceEntryFee", limit: 255
    t.string "CustCollectonDeliverySurcharge", limit: 255
    t.string "CustDangerousGood/HazmatSurcharge", limit: 255
    t.string "CustDateCertainDeliverySurcharge", limit: 255
    t.string "CustDeclaredValueSurcharge", limit: 255
    t.string "CustDeliveryAreaSurcharge", limit: 255
    t.string "CustDryIceSurcharge", limit: 255
    t.string "CustEarnedDiscount", limit: 255
    t.string "CustEveingDeliverySurcharge", limit: 255
    t.string "CustFuelSurcharge", limit: 255
    t.string "CustGrossCharge", limit: 255
    t.string "CustHawaiiSurcharge", limit: 255
    t.string "CustInsideDeliverySurcharge", limit: 255
    t.string "CustInsidePickupSurcharge", limit: 255
    t.string "CustMexicoValueAddedTaxSurcharge", limit: 255
    t.string "CustNetCharge", limit: 255
    t.string "CustNonStandardContainerSurcharge", limit: 255
    t.string "CustOffshoreSurcharge", limit: 255
    t.string "CustOutofDeliveryAreaSurcharge", limit: 255
    t.string "CustOutofPickupAreaSurcharge", limit: 255
    t.string "CustOversizeSurcharge", limit: 255
    t.string "CustPriorityAlertSurcharge", limit: 255
    t.string "CustResidentialRuralSurcharge", limit: 255
    t.string "CustResidentialSurcharge", limit: 255
    t.string "CustSaterdayDeliverySurcharge", limit: 255
    t.string "CustSaterdayPickupSurcharge", limit: 255
    t.string "CustShipmentNotificationSurcharge", limit: 255
    t.string "CustSignatureOptionSurcharge", limit: 255
    t.string "CustSignatureServiceSurcharge", limit: 255
    t.string "CustSmartPostNon-MachinableSurcharge", limit: 255
    t.string "CustTotalCustomerCharge", limit: 255
    t.string "CustTotalDiscount", limit: 255
    t.string "CustTotalSurcharge", limit: 255
    t.string "ListAHSType", limit: 255
    t.string "ListAlaskaSurcharge", limit: 255
    t.string "ListAppointmentDeliverySurcharge", limit: 255
    t.string "ListBonusDiscountAmount", limit: 255
    t.string "ListCAGlobalSalesTaxSurcharge", limit: 255
    t.string "ListCAHarmonizedSalesTaxSurcharge", limit: 255
    t.string "ListCAProvincialSalesTaxSurcharge", limit: 255
    t.string "ListClearanceEntryFee", limit: 255
    t.string "ListCollectonDeliverySurcharge", limit: 255
    t.string "ListDangerousGood/HazmatSurcharge", limit: 255
    t.string "ListDateCertainDeliverySurcharge", limit: 255
    t.string "ListDeclaredValueSurcharge", limit: 255
    t.string "ListDeliveryAreaSurcharge", limit: 255
    t.string "ListDryIceSurcharge", limit: 255
    t.string "ListEarnedDiscount", limit: 255
    t.string "ListEveingDeliverySurcharge", limit: 255
    t.string "ListFuelSurcharge", limit: 255
    t.string "ListGrossCharge", limit: 255
    t.string "ListHawaiiSurcharge", limit: 255
    t.string "ListInsideDeliverySurcharge", limit: 255
    t.string "ListInsidePickupSurcharge", limit: 255
    t.string "ListMexicoValueAddedTaxSurcharge", limit: 255
    t.string "ListNetCharge", limit: 255
    t.string "ListNonStandardContainerSurcharge", limit: 255
    t.string "ListOffshoreSurcharge", limit: 255
    t.string "ListOutofDeliveryAreaSurcharge", limit: 255
    t.string "ListOutofPickupAreaSurcharge", limit: 255
    t.string "ListOversizeSurcharge", limit: 255
    t.string "ListPriorityAlertSurcharge", limit: 255
    t.string "ListResidentialRuralSurcharge", limit: 255
    t.string "ListResidentialSurcharge", limit: 255
    t.string "ListSaterdayDeliverySurcharge", limit: 255
    t.string "ListSaterdayPickupSurcharge", limit: 255
    t.string "ListShipmentNotificationSurcharge", limit: 255
    t.string "ListSignatureOptionSurcharge", limit: 255
    t.string "ListSignatureServiceSurcharge", limit: 255
    t.string "ListSmartPostNon-MachinableSurcharge", limit: 255
    t.string "ListTotalCustomerCharge", limit: 255
    t.string "ListTotalDiscount", limit: 255
    t.string "ListTotalSurcharge", limit: 255
    t.string "ListDeliveryAreaSurchargeDiscription", limit: 255
    t.string "PkgHeight", limit: 255
    t.string "PkgLength", limit: 255
    t.string "PkgWidth", limit: 255
    t.string "PkgCode", limit: 255
    t.string "PkgNotes", limit: 255
    t.string "PkgBillTransportationTo", limit: 255
    t.string "PkgBrazillianResidentDeliveryFl", limit: 255
    t.string "PkgCustomerReference", limit: 255
    t.string "PkgDeclaredValue", limit: 255
    t.string "PkgDeliveryDate", limit: 255
    t.string "PkgDeliveryInstructions", limit: 255
    t.string "PkgInvoiceNumber", limit: 255
    t.string "PkgNumberofPackages", limit: 255
    t.string "PkgPONumber", limit: 255
    t.string "PkgPackageType", limit: 255
    t.string "PkgPayorAccountNumber", limit: 255
    t.string "PkgServiceType", limit: 255
    t.string "PkgShipDate", limit: 255
    t.string "PkgShipmentID", limit: 255
    t.string "PkgSmartPostHubId", limit: 255
    t.string "PkgWeight", limit: 255
    t.string "PkgWeightType", limit: 255
    t.string "Cancelled", limit: 255
    t.string "Return", limit: 50
    t.index ["PkgNotes"], name: "PkgCode"
    t.index ["PkgShipmentID"], name: "PkgShipmentID"
    t.index ["PkgSmartPostHubId"], name: "PkgSmartPostHubId"
    t.index ["ShipmentID"], name: "ShipmentID"
  end

  create_table "ShipUPS", id: false, force: :cascade do |t|
    t.string "ShipmentID", limit: 255
    t.string "MasterTrackingNumber", limit: 255
    t.string "TrackingNumber", limit: 255
    t.string "SmartPostGroundTracking", limit: 255
    t.string "CustAHSType", limit: 255
    t.string "CustAlaskaSurcharge", limit: 255
    t.string "CustAppointmentDeliverySurcharge", limit: 255
    t.string "CustBonusDiscountAmount", limit: 255
    t.string "CustCAGlobalSalesTaxSurcharge", limit: 255
    t.string "CustCAHarmonizedSalesTaxSurcharge", limit: 255
    t.string "CustCAProvincialSalesTaxSurcharge", limit: 255
    t.string "CustClearanceEntryFee", limit: 255
    t.string "CustCollectonDeliverySurcharge", limit: 255
    t.string "CustDangerousGood/HazmatSurcharge", limit: 255
    t.string "CustDateCertainDeliverySurcharge", limit: 255
    t.string "CustDeclaredValueSurcharge", limit: 255
    t.string "CustDeliveryAreaSurcharge", limit: 255
    t.string "CustDryIceSurcharge", limit: 255
    t.string "CustEarnedDiscount", limit: 255
    t.string "CustEveingDeliverySurcharge", limit: 255
    t.string "CustFuelSurcharge", limit: 255
    t.string "CustGrossCharge", limit: 255
    t.string "CustHawaiiSurcharge", limit: 255
    t.string "CustInsideDeliverySurcharge", limit: 255
    t.string "CustInsidePickupSurcharge", limit: 255
    t.string "CustMexicoValueAddedTaxSurcharge", limit: 255
    t.string "CustNetCharge", limit: 255
    t.string "CustNonStandardContainerSurcharge", limit: 255
    t.string "CustOffshoreSurcharge", limit: 255
    t.string "CustOutofDeliveryAreaSurcharge", limit: 255
    t.string "CustOutofPickupAreaSurcharge", limit: 255
    t.string "CustOversizeSurcharge", limit: 255
    t.string "CustPriorityAlertSurcharge", limit: 255
    t.string "CustResidentialRuralSurcharge", limit: 255
    t.string "CustResidentialSurcharge", limit: 255
    t.string "CustSaterdayDeliverySurcharge", limit: 255
    t.string "CustSaterdayPickupSurcharge", limit: 255
    t.string "CustShipmentNotificationSurcharge", limit: 255
    t.string "CustSignatureOptionSurcharge", limit: 255
    t.string "CustSignatureServiceSurcharge", limit: 255
    t.string "CustSmartPostNon-MachinableSurcharge", limit: 255
    t.string "CustTotalCustomerCharge", limit: 255
    t.string "CustTotalDiscount", limit: 255
    t.string "CustTotalSurcharge", limit: 255
    t.string "ListAHSType", limit: 255
    t.string "ListAlaskaSurcharge", limit: 255
    t.string "ListAppointmentDeliverySurcharge", limit: 255
    t.string "ListBonusDiscountAmount", limit: 255
    t.string "ListCAGlobalSalesTaxSurcharge", limit: 255
    t.string "ListCAHarmonizedSalesTaxSurcharge", limit: 255
    t.string "ListCAProvincialSalesTaxSurcharge", limit: 255
    t.string "ListClearanceEntryFee", limit: 255
    t.string "ListCollectonDeliverySurcharge", limit: 255
    t.string "ListDangerousGood/HazmatSurcharge", limit: 255
    t.string "ListDateCertainDeliverySurcharge", limit: 255
    t.string "ListDeclaredValueSurcharge", limit: 255
    t.string "ListDeliveryAreaSurcharge", limit: 255
    t.string "ListDryIceSurcharge", limit: 255
    t.string "ListEarnedDiscount", limit: 255
    t.string "ListEveingDeliverySurcharge", limit: 255
    t.string "ListFuelSurcharge", limit: 255
    t.string "ListGrossCharge", limit: 255
    t.string "ListHawaiiSurcharge", limit: 255
    t.string "ListInsideDeliverySurcharge", limit: 255
    t.string "ListInsidePickupSurcharge", limit: 255
    t.string "ListMexicoValueAddedTaxSurcharge", limit: 255
    t.string "ListNetCharge", limit: 255
    t.string "ListNonStandardContainerSurcharge", limit: 255
    t.string "ListOffshoreSurcharge", limit: 255
    t.string "ListOutofDeliveryAreaSurcharge", limit: 255
    t.string "ListOutofPickupAreaSurcharge", limit: 255
    t.string "ListOversizeSurcharge", limit: 255
    t.string "ListPriorityAlertSurcharge", limit: 255
    t.string "ListResidentialRuralSurcharge", limit: 255
    t.string "ListResidentialSurcharge", limit: 255
    t.string "ListSaterdayDeliverySurcharge", limit: 255
    t.string "ListSaterdayPickupSurcharge", limit: 255
    t.string "ListShipmentNotificationSurcharge", limit: 255
    t.string "ListSignatureOptionSurcharge", limit: 255
    t.string "ListSignatureServiceSurcharge", limit: 255
    t.string "ListSmartPostNon-MachinableSurcharge", limit: 255
    t.string "ListTotalCustomerCharge", limit: 255
    t.string "ListTotalDiscount", limit: 255
    t.string "ListTotalSurcharge", limit: 255
    t.string "ListDeliveryAreaSurchargeDiscription", limit: 255
    t.string "PkgHeight", limit: 255
    t.string "PkgLength", limit: 255
    t.string "PkgWidth", limit: 255
    t.string "PkgCode", limit: 255
    t.string "PkgNotes", limit: 255
    t.string "PkgBillTransportationTo", limit: 255
    t.string "PkgBrazillianResidentDeliveryFl", limit: 255
    t.string "PkgCustomerReference", limit: 255
    t.string "PkgDeclaredValue", limit: 255
    t.string "PkgDeliveryDate", limit: 255
    t.string "PkgDeliveryInstructions", limit: 255
    t.string "PkgInvoiceNumber", limit: 255
    t.string "PkgNumberofPackages", limit: 255
    t.string "PkgPONumber", limit: 255
    t.string "PkgPackageType", limit: 255
    t.string "PkgPayorAccountNumber", limit: 255
    t.string "PkgServiceType", limit: 255
    t.string "PkgShipDate", limit: 255
    t.string "PkgShipmentID", limit: 255
    t.string "PkgSmartPostHubId", limit: 255
    t.string "PkgWeight", limit: 255
    t.string "PkgWeightType", limit: 255
    t.string "Cancelled", limit: 255
    t.string "Return", limit: 50
    t.index ["PkgNotes"], name: "PkgCode"
    t.index ["PkgShipmentID"], name: "PkgShipmentID"
    t.index ["PkgSmartPostHubId"], name: "PkgSmartPostHubId"
    t.index ["ShipmentID"], name: "ShipmentID"
  end

  create_table "SignatureRequests", primary_key: "CNTR", id: { type: :string, limit: 10 }, force: :cascade do |t|
    t.string "URL", limit: 1000, null: false
    t.integer "CreatedBy", null: false
    t.integer "ChangedBy", null: false
    t.datetime "DateCreated", precision: nil, null: false
    t.datetime "DateChanged", precision: nil, null: false
    t.string "ChangeNote", limit: 255
  end

  create_table "SocialMedia", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Link", limit: 50, null: false
    t.integer "LinkType", default: 0
    t.integer "SiteId", null: false
    t.string "URL", limit: 255, null: false
    t.boolean "Inactive", default: false, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.index ["Link"], name: "SocialMedia_Link"
    t.index ["LinkType"], name: "SocialMedia_LinkType"
  end

  create_table "SocialMediaSites", primary_key: "Site", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.string "Website", limit: 255
    t.boolean "Inactive", default: false, null: false
  end

  create_table "SoldAssetFile", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "Batch", default: 0
    t.string "Store", limit: 3
    t.datetime "Date", precision: nil
    t.string "CNTR", limit: 10
    t.string "ItemNo", limit: 6
    t.string "CustNo", limit: 6
    t.money "Amount", precision: 19, scale: 4, default: 0.0
    t.integer "Qty", default: 0
    t.string "Name", limit: 50
    t.money "PurchaseCost", precision: 19, scale: 4
    t.money "Depreciation", precision: 19, scale: 4
    t.string "GLAccount", limit: 50
    t.string "DeprecAccount", limit: 50
    t.boolean "Asset", default: false
    t.datetime "PurchaseDate", precision: nil
    t.integer "PurchaseNumber"
    t.string "HomeStore", limit: 3
    t.index ["Batch"], name: "SoldAssetFile$Batch"
    t.index ["CNTR"], name: "SoldAssetFile$SoldAssetFileCNTR"
    t.index ["CustNo"], name: "SoldAssetFile$CustNo"
    t.index ["ItemNo"], name: "SoldAssetFile$ItemNo"
    t.index ["PurchaseNumber"], name: "SoldAssetFile$PurchaseNumber"
    t.index ["Store"], name: "SoldAssetFile$Store"
  end

  create_table "SpecialRateType", primary_key: "ID", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.integer "Order", default: 0, null: false
  end

  create_table "StatementFormat", primary_key: "Id", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.integer "ListOrder"
  end

  create_table "StatementFormat_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "StatementFormatId", null: false
    t.string "Description", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["StatementFormatId", "Languagecode"], name: "StatementFormat_Tr_StatementFormatId", unique: true
  end

  create_table "StatementHeader", primary_key: "Header", id: { type: :integer, limit: 2, default: nil }, force: :cascade do |t|
    t.string "Description", limit: 255
  end

  create_table "Statements", primary_key: "Store", id: { type: :string, limit: 3 }, force: :cascade do |t|
    t.integer "SortByNumbNameKey", limit: 2
    t.boolean "PrintCreditBalance", default: false
    t.boolean "PrintZeroContracts", default: false
    t.boolean "CompoundFinanceCharges", default: false
    t.string "PaymentType", limit: 1
    t.integer "ContractStatus", limit: 2
    t.integer "StatementFormat", limit: 2
    t.integer "IndentSpaces", limit: 2
    t.integer "Copies", limit: 2
    t.integer "Letterhead", limit: 2
    t.boolean "PrintClosedDate", default: false
    t.string "TopMessage", limit: 250
    t.string "BottomMessage", limit: 250
    t.string "BalanceDueMessage", limit: 250
    t.string "PastDueMessage", limit: 250
    t.string "Over30DayMessage", limit: 250
    t.string "Over60DayMessage", limit: 250
    t.string "Over90DayMessage", limit: 250
    t.string "EmailMessage", limit: 250
    t.boolean "PrintFCBill", default: false
    t.boolean "PrintZeroBalanceStatements", default: false
    t.boolean "ShowRentSaleDmg", default: false
    t.boolean "ShowDetails", default: false
    t.boolean "ShowItemPrice", default: false
    t.boolean "AllowFaxing", default: false
    t.boolean "AllowEmailing", default: false
    t.string "ReportName", limit: 255
    t.string "FaxCoverPage", limit: 250
    t.string "EmailSubject", limit: 250
    t.text "EmailBody"
    t.integer "Header", limit: 2
    t.boolean "PrintInvoices", default: false
    t.string "ContractOrInvoice", limit: 50
    t.string "GroupBy", limit: 50
    t.boolean "PrintPayments", default: false
    t.boolean "PrintSignature", default: false
    t.boolean "PrintUnbilled", default: false
    t.boolean "UpdateBilledDate", default: false, null: false
  end

  create_table "StoreGroupType", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.boolean "Inactive", default: false, null: false
    t.integer "CreatedBy", default: -1, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: -1, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.ntext "ChangeNote"
  end

  create_table "StoreGroupType_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "LanguageCode", limit: 10, null: false
    t.string "Description", limit: 255, null: false
    t.boolean "Inactive", default: false, null: false
    t.integer "CreatedBy", default: -1, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: -1, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.ntext "ChangeNote"
  end

  create_table "StoreGroups", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "HomeStore", limit: 3
    t.string "Description", limit: 255, null: false
    t.string "StoreList", limit: 255
    t.boolean "Inactive", default: false
    t.datetime "InactiveDate", precision: nil
    t.integer "StoreGroupTypeId", default: 1, null: false
    t.integer "DistrictId"
    t.integer "RegionId"
    t.index ["HomeStore"], name: "StoreGroups$HomeStore"
    t.index ["Id"], name: "StoreGroups$Id", unique: true
  end

  create_table "StoreLogo", primary_key: "Store", id: { type: :string, limit: 3 }, force: :cascade do |t|
    t.binary "Logo"
    t.string "BackgroundImage"
  end

  create_table "StoreTaxClass", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "Store", limit: 3, null: false
    t.string "SalesTaxClass", limit: 255
    t.string "RentalTaxClass", limit: 255
    t.string "DamageWaiverTaxClass", limit: 255
    t.string "AssetSalesTaxClass", limit: 255
    t.string "OtherTaxClass", limit: 255
    t.string "ItemPercentageTaxClass", limit: 255
    t.integer "QuoteDateSource", default: 0, null: false
    t.integer "PostDateSource", default: 0, null: false
  end

  create_table "SummaryPanelSave", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Name", limit: 255, null: false
    t.string "OperatorId", limit: 25, null: false
    t.text "Data", null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil
    t.ntext "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "SuspenseFund", primary_key: "SuspenseFundId", id: :integer, force: :cascade do |t|
    t.integer "Batch", null: false
    t.string "Store", limit: 3, null: false
    t.datetime "TransactionDate", precision: nil, null: false
    t.string "AccountingMethodCode", limit: 2, null: false
    t.string "PaymentMethodCode", limit: 2
    t.string "PaymentTypeCode", limit: 2
    t.string "CNTR", limit: 20, null: false
    t.money "ChangeAmount", precision: 19, scale: 4, default: 0.0, null: false
    t.integer "GLTransactionGroupId", null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
  end

  create_table "SuspenseFund_BAK", primary_key: "SuspenseFundId", id: :integer, force: :cascade do |t|
    t.integer "Batch", null: false
    t.string "Store", limit: 3, null: false
    t.datetime "TransactionDate", precision: nil, null: false
    t.string "AccountingMethodCode", limit: 2, null: false
    t.string "PaymentTypeCode", limit: 1
    t.string "CNTR", limit: 20, null: false
    t.money "ChangeAmount", precision: 19, scale: 4, null: false
    t.integer "GLTransactionGroupId", null: false
    t.integer "CreatedBy", null: false
    t.datetime "DateCreated", precision: nil, null: false
    t.integer "ChangedBy", null: false
    t.datetime "DateChanged", precision: nil, null: false
    t.ntext "ChangeNote"
  end

  create_table "SuspenseReason", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "Description", limit: 1000
    t.string "Notes", limit: 1000
    t.boolean "Inactive", default: false, null: false
    t.datetime "CreatedDate", precision: nil, default: -> { "getdate()" }, null: false
    t.datetime "ModifiedDate", precision: nil, default: -> { "getdate()" }, null: false
  end

  create_table "SuspenseReason_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "LanguageCode", limit: 10, null: false
    t.integer "SuspenseReasonId", null: false
    t.string "Description", limit: 1000
    t.string "Notes", limit: 1000
    t.boolean "Inactive", default: false, null: false
  end

  create_table "SystemEdit", primary_key: "EditNumber", id: :integer, force: :cascade do |t|
    t.integer "Batch", null: false
    t.datetime "Date", precision: nil, null: false
    t.integer "Opr", null: false
    t.string "Description", limit: 255
    t.string "Note", limit: 255
    t.index ["Batch"], name: "Batch"
  end

  create_table "SystemNotificationTypes", primary_key: "Type", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 255
  end

  create_table "SystemNotifications", primary_key: "NotificationNumber", id: :integer, force: :cascade do |t|
    t.string "Store", limit: 3
    t.integer "Opr"
    t.integer "Type"
    t.float "Criteria"
    t.datetime "AddDate", precision: nil
    t.datetime "LastDate", precision: nil
    t.string "Note", limit: 255
    t.index ["Opr"], name: "SystemNotifications$Opr"
  end

  create_table "TEMPQYOT", id: false, force: :cascade do |t|
    t.string "key", limit: 16, null: false
    t.string "NUM", limit: 6
    t.float "QYOT"
    t.integer "DIFF", null: false
  end

  create_table "TaskList", primary_key: "Number", id: :integer, force: :cascade do |t|
    t.string "Store", limit: 3
    t.string "Status", limit: 1
    t.integer "OprCreated"
    t.integer "OprAssigned"
    t.integer "OprCompleted"
    t.integer "GroupAssigned"
    t.datetime "DateCreated", precision: nil
    t.datetime "DateDue", precision: nil
    t.datetime "DateRemind", precision: nil
    t.datetime "DateCompleted", precision: nil
    t.integer "LastNumber"
    t.boolean "NotifyWhenComplete", default: false
    t.string "Frequency", limit: 4
    t.string "Description", limit: 255
    t.text "ToDoTask"
    t.text "CompletionNotes"
    t.text "EditHistory"
    t.string "Cusn", limit: 6
    t.string "CNTR", limit: 10
    t.boolean "CreateTaskForEachGroupMember", default: false, null: false
    t.ss_timestamp "Version", null: false
    t.index ["CNTR"], name: "TaskList$CNTR"
    t.index ["Cusn"], name: "TaskList$Cusn"
    t.index ["GroupAssigned"], name: "TaskList$GroupAssigned"
    t.index ["OprAssigned"], name: "TaskList$OprAssigned"
    t.index ["OprCreated"], name: "TaskList$OprCreated"
    t.index ["Store"], name: "TaskList$Store"
    t.index ["Version"], name: "IDX_TaskList_Version"
  end

  create_table "TaskQueue", primary_key: "TaskQueueId", id: :integer, force: :cascade do |t|
    t.integer "TaskQueueCodeId", null: false
    t.datetime "QueueDate", precision: nil, null: false
    t.datetime "ScheduledDate", precision: nil, null: false
    t.datetime "ProcessDate", precision: nil
    t.datetime "CompleteDate", precision: nil
    t.datetime "ErrorDate", precision: nil
    t.datetime "CancelDate", precision: nil
    t.string "TaskKey", limit: 255, null: false
    t.text "TaskParams"
    t.text "Error"
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.integer "TaskKeyEntityTypeId"
    t.index ["ScheduledDate"], name: "TaskQueue_ScheduledDate"
    t.index ["TaskQueueCodeId"], name: "TaskQueue_TaskQueueCodeId"
  end

  create_table "TaskQueueCode", primary_key: "TaskQueueCodeId", id: :integer, default: nil, force: :cascade do |t|
    t.string "TaskDescription", limit: 255, null: false
    t.boolean "InActive", default: false, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
  end

  create_table "TaskQueueLog", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.datetime "AttemptedTime", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "TaskQueueID", null: false
    t.string "ErrrorDetails"
    t.index ["TaskQueueID"], name: "TaskQueueIDIndex"
  end

  create_table "TaxExternalFields", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "TaxExternalModelsId", null: false
    t.string "FieldName", limit: 255, null: false
    t.string "Displayname", limit: 255, null: false
    t.string "DataType", limit: 25, null: false
  end

  create_table "TaxExternalMappedSelections", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "TaxExternalFieldsId", null: false
    t.integer "Sequence", null: false
  end

  create_table "TaxExternalModels", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "TableName", limit: 255, null: false
    t.string "Displayname", limit: 255, null: false
  end

  create_table "TaxJurisdiction", primary_key: "TaxJurisdictionId", id: :integer, force: :cascade do |t|
    t.integer "TaxCode", null: false
    t.string "JurisdictionName", limit: 50, null: false
    t.string "TaxJurisdictionDescription", limit: 50, null: false
    t.float "TaxRent", null: false
    t.float "TaxSale", null: false
    t.float "TaxDW", null: false
    t.float "TaxItemPercentage", null: false
    t.string "TaxJurisdictionComment", limit: 255
    t.boolean "InActive", default: false, null: false
    t.string "GLAccount", limit: 100
  end

  create_table "TaxTable", primary_key: "TaxCode", id: :integer, default: nil, force: :cascade do |t|
    t.string "TaxDescription", limit: 50
    t.float "TaxRent1"
    t.float "TaxSale1"
    t.float "TaxDW1"
    t.float "TaxItemPercentage1"
    t.money "TaxableAmountUpTo1", precision: 19, scale: 4, default: 0.0
    t.float "TaxRent2", default: 0.0
    t.float "TaxSale2", default: 0.0
    t.float "TaxDW2", default: 0.0
    t.float "TaxItemPercentage2", default: 0.0
    t.money "TaxableAmountUpTo2", precision: 19, scale: 4, default: 0.0
    t.float "TaxRent3", default: 0.0
    t.float "TaxSale3", default: 0.0
    t.float "TaxDW3", default: 0.0
    t.float "TaxItemPercentage3", default: 0.0
    t.money "TaxableAmountUpTo3", precision: 19, scale: 4, default: 0.0
    t.float "MaximumTax"
    t.boolean "Inactive", default: false
    t.datetime "ActiveDate", precision: nil
    t.datetime "InactiveDate", precision: nil
    t.integer "NewTaxCode", default: 0
    t.string "Jurisdiction", limit: 255
    t.boolean "obsolete1", default: false
    t.boolean "DisplayBreakoutOnContract", default: false, null: false
    t.string "TaxAuthority", limit: 255
    t.boolean "obsolete2", default: false, null: false
    t.string "AccountingLink", limit: 255
    t.integer "TieredTaxMethod", default: 0, null: false
    t.index ["Jurisdiction"], name: "TaxTable$Jurisdiction"
  end

  create_table "TimeClock", primary_key: "TimeEntry", id: :integer, force: :cascade do |t|
    t.datetime "Date", precision: nil
    t.string "Store", limit: 3
    t.integer "Id", default: 0
    t.string "Code", limit: 2
    t.boolean "Cleared", default: false
    t.string "Note", limit: 100
    t.integer "AddType", limit: 2
    t.integer "GroupNumber"
    t.index ["Code"], name: "TimeClock$Code"
    t.index ["Date"], name: "TimeClock$Date"
    t.index ["Id"], name: "TimeClock$Id"
  end

  create_table "TimeClockAdditions", primary_key: "Number", id: :integer, force: :cascade do |t|
    t.string "Description", limit: 50
    t.string "PayCode", limit: 255
  end

  create_table "TotalsCompare", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "Store", limit: 3, null: false
    t.integer "TaxCode"
    t.integer "Batch", default: 0
    t.money "RTX", precision: 19, scale: 4, default: 0.0
    t.money "STX", precision: 19, scale: 4, default: 0.0
    t.money "DTX", precision: 19, scale: 4, default: 0.0
    t.money "ATX", precision: 19, scale: 4, default: 0.0
    t.money "TTX", precision: 19, scale: 4, default: 0.0
    t.money "RUT", precision: 19, scale: 4, default: 0.0
    t.money "SUT", precision: 19, scale: 4, default: 0.0
    t.money "DUT", precision: 19, scale: 4, default: 0.0
    t.money "AUT", precision: 19, scale: 4, default: 0.0
    t.money "TUT", precision: 19, scale: 4, default: 0.0
    t.money "PAY", precision: 19, scale: 4, default: 0.0
    t.money "CHG", precision: 19, scale: 4, default: 0.0
    t.money "BNK", precision: 19, scale: 4, default: 0.0
    t.money "TRS", precision: 19, scale: 4, default: 0.0
    t.money "TOT", precision: 19, scale: 4, default: 0.0
    t.money "INC", precision: 19, scale: 4, default: 0.0
    t.money "TAX", precision: 19, scale: 4, default: 0.0
    t.money "ALL", precision: 19, scale: 4, default: 0.0
    t.money "DISB", precision: 19, scale: 4, default: 0.0
    t.money "CRC", precision: 19, scale: 4, default: 0.0
    t.money "OVUN", precision: 19, scale: 4, default: 0.0
    t.money "CAD", precision: 19, scale: 4, default: 0.0
    t.money "PNA", precision: 19, scale: 4, default: 0.0
    t.money "DEPS", precision: 19, scale: 4, default: 0.0
    t.datetime "Date", precision: nil
    t.money "Discounts", precision: 19, scale: 4, default: 0.0
    t.money "DebitCards", precision: 19, scale: 4, default: 0.0
    t.money "ItemPercentageTax", precision: 19, scale: 4, default: 0.0
    t.money "ItemPercentageNonTax", precision: 19, scale: 4, default: 0.0
    t.money "FinanceChargeTax", precision: 19, scale: 4, default: 0.0
    t.money "FinanceChargeNonTax", precision: 19, scale: 4, default: 0.0
    t.index ["Batch"], name: "TotalsCompare$Batch"
    t.index ["Date"], name: "TotalsCompare$Date", order: :desc
    t.index ["Store", "TaxCode"], name: "TotalsCompare$STORE"
    t.index ["TaxCode"], name: "TotalsCompare$TaxCode"
  end

  create_table "TotalsContractsAccrual", primary_key: "TotalsContractsID", id: :integer, force: :cascade do |t|
    t.integer "Batch"
    t.string "Store", limit: 3
    t.integer "TaxCode"
    t.string "Meth", limit: 1
    t.datetime "Date", precision: nil
    t.string "CNTR", limit: 10
    t.string "Cusn", limit: 6
    t.money "RentTx", precision: 19, scale: 4
    t.money "SaleTx", precision: 19, scale: 4
    t.money "DwTx", precision: 19, scale: 4
    t.money "AssetTx", precision: 19, scale: 4
    t.money "RentNT", precision: 19, scale: 4
    t.money "SaleNT", precision: 19, scale: 4
    t.money "DwNT", precision: 19, scale: 4
    t.money "AssetNT", precision: 19, scale: 4
    t.money "Other", precision: 19, scale: 4
    t.money "Tax", precision: 19, scale: 4
    t.integer "Salesman"
    t.money "ItemPercentageTax", precision: 19, scale: 4
    t.money "ItemPercentageNonTax", precision: 19, scale: 4
    t.money "RentTx2", precision: 19, scale: 4
    t.money "SaleTx2", precision: 19, scale: 4
    t.money "DWTx2", precision: 19, scale: 4
    t.money "AssetTx2", precision: 19, scale: 4
    t.money "ItemPercentageTax2", precision: 19, scale: 4
    t.money "RentTx3", precision: 19, scale: 4
    t.money "SaleTx3", precision: 19, scale: 4
    t.money "DWTx3", precision: 19, scale: 4
    t.money "AssetTx3", precision: 19, scale: 4
    t.money "ItemPercentageTax3", precision: 19, scale: 4
    t.money "RentTx4", precision: 19, scale: 4
    t.money "SaleTx4", precision: 19, scale: 4
    t.money "DWTx4", precision: 19, scale: 4
    t.money "AssetTx4", precision: 19, scale: 4
    t.money "ItemPercentageTax4", precision: 19, scale: 4
    t.money "FinanceChargeTax", precision: 19, scale: 4, default: 0.0
    t.money "FinanceChargeNonTax", precision: 19, scale: 4, default: 0.0
    t.integer "GLTransactionGroupId"
    t.index ["Batch"], name: "TotalsContractsAccrual$Batch"
    t.index ["CNTR"], name: "TotalsContractsAccrual$TotalsContractsCNTR"
    t.index ["Salesman"], name: "TotalsContractsAccrual$Salesman"
    t.index ["TaxCode"], name: "TotalsContractsAccrual$TaxCode"
  end

  create_table "TotalsContractsCash", primary_key: "TotalsContractsID", id: :integer, force: :cascade do |t|
    t.integer "Batch"
    t.string "Store", limit: 3
    t.integer "TaxCode"
    t.string "Meth", limit: 1
    t.datetime "Date", precision: nil
    t.string "CNTR", limit: 10
    t.string "Cusn", limit: 6
    t.money "RentTx", precision: 19, scale: 4
    t.money "SaleTx", precision: 19, scale: 4
    t.money "DwTx", precision: 19, scale: 4
    t.money "AssetTx", precision: 19, scale: 4
    t.money "RentNT", precision: 19, scale: 4
    t.money "SaleNT", precision: 19, scale: 4
    t.money "DwNT", precision: 19, scale: 4
    t.money "AssetNT", precision: 19, scale: 4
    t.money "Other", precision: 19, scale: 4
    t.money "Tax", precision: 19, scale: 4
    t.integer "Salesman"
    t.money "ItemPercentageTax", precision: 19, scale: 4
    t.money "ItemPercentageNonTax", precision: 19, scale: 4
    t.money "RentTx2", precision: 19, scale: 4
    t.money "SaleTx2", precision: 19, scale: 4
    t.money "DWTx2", precision: 19, scale: 4
    t.money "AssetTx2", precision: 19, scale: 4
    t.money "ItemPercentageTax2", precision: 19, scale: 4
    t.money "RentTx3", precision: 19, scale: 4
    t.money "SaleTx3", precision: 19, scale: 4
    t.money "DWTx3", precision: 19, scale: 4
    t.money "AssetTx3", precision: 19, scale: 4
    t.money "ItemPercentageTax3", precision: 19, scale: 4
    t.money "RentTx4", precision: 19, scale: 4
    t.money "SaleTx4", precision: 19, scale: 4
    t.money "DWTx4", precision: 19, scale: 4
    t.money "AssetTx4", precision: 19, scale: 4
    t.money "ItemPercentageTax4", precision: 19, scale: 4
    t.money "FinanceChargeTax", precision: 19, scale: 4, default: 0.0
    t.money "FinanceChargeNonTax", precision: 19, scale: 4, default: 0.0
    t.integer "GLTransactionGroupId"
    t.index ["Batch"], name: "TotalsContractsCash$Batch"
    t.index ["CNTR"], name: "TotalsContractsCash$TotalsContractsCNTR"
    t.index ["Salesman"], name: "TotalsContractsCash$Salesman"
    t.index ["TaxCode"], name: "TotalsContractsCash$TaxCode"
  end

  create_table "TotalsDaily", primary_key: "Number", id: :integer, force: :cascade do |t|
    t.string "Store", limit: 3, null: false
    t.integer "TaxCode"
    t.integer "Batch", default: 0
    t.money "RTX", precision: 19, scale: 4, default: 0.0
    t.money "STX", precision: 19, scale: 4, default: 0.0
    t.money "DTX", precision: 19, scale: 4, default: 0.0
    t.money "ATX", precision: 19, scale: 4, default: 0.0
    t.money "TTX", precision: 19, scale: 4, default: 0.0
    t.money "RUT", precision: 19, scale: 4, default: 0.0
    t.money "SUT", precision: 19, scale: 4, default: 0.0
    t.money "DUT", precision: 19, scale: 4, default: 0.0
    t.money "AUT", precision: 19, scale: 4, default: 0.0
    t.money "TUT", precision: 19, scale: 4, default: 0.0
    t.money "PAY", precision: 19, scale: 4, default: 0.0
    t.money "CHG", precision: 19, scale: 4, default: 0.0
    t.money "BNK", precision: 19, scale: 4, default: 0.0
    t.money "TRS", precision: 19, scale: 4, default: 0.0
    t.money "TOT", precision: 19, scale: 4, default: 0.0
    t.money "INC", precision: 19, scale: 4, default: 0.0
    t.money "TAX", precision: 19, scale: 4, default: 0.0
    t.money "ALL", precision: 19, scale: 4, default: 0.0
    t.money "DISB", precision: 19, scale: 4, default: 0.0
    t.money "CRC", precision: 19, scale: 4, default: 0.0
    t.money "OVUN", precision: 19, scale: 4, default: 0.0
    t.money "CAD", precision: 19, scale: 4, default: 0.0
    t.money "PNA", precision: 19, scale: 4, default: 0.0
    t.money "DEPS", precision: 19, scale: 4, default: 0.0
    t.datetime "Date", precision: nil
    t.money "Discounts", precision: 19, scale: 4, default: 0.0
    t.money "DebitCards", precision: 19, scale: 4, default: 0.0
    t.money "ItemPercentageTax", precision: 19, scale: 4, default: 0.0
    t.money "ItemPercentageNonTax", precision: 19, scale: 4, default: 0.0
    t.money "FinanceChargeTax", precision: 19, scale: 4, default: 0.0
    t.money "FinanceChargeNonTax", precision: 19, scale: 4, default: 0.0
    t.integer "GLTransactionGroupId"
    t.index ["Batch"], name: "TotalsDaily$Batch"
    t.index ["Date"], name: "TotalsDaily$Date"
    t.index ["Store", "TaxCode"], name: "TotalsDaily$STORE"
    t.index ["TaxCode"], name: "TotalsDaily$TaxCode"
  end

  create_table "TotalsDailyHistory", primary_key: "TotalsDailyHistoryId", id: :integer, force: :cascade do |t|
    t.string "Store", limit: 3, null: false
    t.integer "Taxcode", default: 0, null: false
    t.integer "Batch", null: false
    t.money "RTX", precision: 19, scale: 4, null: false
    t.money "STX", precision: 19, scale: 4, default: 0.0, null: false
    t.money "DTX", precision: 19, scale: 4, default: 0.0, null: false
    t.money "ATX", precision: 19, scale: 4, default: 0.0, null: false
    t.money "TTX", precision: 19, scale: 4, default: 0.0, null: false
    t.money "RUT", precision: 19, scale: 4, default: 0.0, null: false
    t.money "SUT", precision: 19, scale: 4, default: 0.0, null: false
    t.money "DUT", precision: 19, scale: 4, default: 0.0, null: false
    t.money "AUT", precision: 19, scale: 4, default: 0.0, null: false
    t.money "TUT", precision: 19, scale: 4, default: 0.0, null: false
    t.money "PAY", precision: 19, scale: 4, default: 0.0, null: false
    t.money "CHG", precision: 19, scale: 4, default: 0.0, null: false
    t.money "BNK", precision: 19, scale: 4, default: 0.0, null: false
    t.money "TRS", precision: 19, scale: 4, default: 0.0, null: false
    t.money "TOT", precision: 19, scale: 4, default: 0.0, null: false
    t.money "INC", precision: 19, scale: 4, default: 0.0, null: false
    t.money "TAX", precision: 19, scale: 4, default: 0.0, null: false
    t.money "ALL", precision: 19, scale: 4, default: 0.0, null: false
    t.money "DISB", precision: 19, scale: 4, default: 0.0, null: false
    t.money "CRC", precision: 19, scale: 4, default: 0.0, null: false
    t.money "OVUN", precision: 19, scale: 4, default: 0.0, null: false
    t.money "CAD", precision: 19, scale: 4, default: 0.0, null: false
    t.money "PNA", precision: 19, scale: 4, default: 0.0, null: false
    t.money "DEPS", precision: 19, scale: 4, default: 0.0, null: false
    t.datetime "Date", precision: nil, default: -> { "getdate()" }, null: false
    t.money "Discounts", precision: 19, scale: 4, default: 0.0, null: false
    t.money "DebitCards", precision: 19, scale: 4, default: 0.0, null: false
    t.money "ItemPercentageTax", precision: 19, scale: 4, default: 0.0, null: false
    t.money "ItemPercentageNonTax", precision: 19, scale: 4, default: 0.0, null: false
    t.money "FinanceChargeTax", precision: 19, scale: 4, default: 0.0, null: false
    t.money "FinanceChargeNonTax", precision: 19, scale: 4, default: 0.0, null: false
    t.integer "Number", default: 0, null: false
    t.integer "GLTransactionGroupId"
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
  end

  create_table "TotalsSummary", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "Store", limit: 3, null: false
    t.integer "Batch", default: 0
    t.datetime "Date", precision: nil
    t.money "BankDeposits", precision: 19, scale: 4, default: 0.0
    t.money "CreditCards", precision: 19, scale: 4, default: 0.0
    t.money "CarryOver", precision: 19, scale: 4, default: 0.0
    t.money "OverUnder", precision: 19, scale: 4, default: 0.0
    t.money "ActiveDeposits", precision: 19, scale: 4, default: 0.0
    t.money "CashAmounts", precision: 19, scale: 4, default: 0.0
    t.money "CashPayments", precision: 19, scale: 4, default: 0.0
    t.money "CashCredits", precision: 19, scale: 4, default: 0.0
    t.money "AccountAmounts", precision: 19, scale: 4, default: 0.0
    t.money "AccountPayments", precision: 19, scale: 4, default: 0.0
    t.money "AccountCredits", precision: 19, scale: 4, default: 0.0
    t.money "SuspenseFund", precision: 19, scale: 4, default: 0.0
    t.boolean "EndOfMonth", default: false
    t.money "DebitCards", precision: 19, scale: 4
    t.money "Visa", precision: 19, scale: 4, default: 0.0
    t.money "Mastercard", precision: 19, scale: 4, default: 0.0
    t.money "Amex", precision: 19, scale: 4, default: 0.0
    t.money "Discover", precision: 19, scale: 4, default: 0.0
    t.money "OtherCC", precision: 19, scale: 4, default: 0.0
    t.money "SalesInventory", precision: 19, scale: 4, default: 0.0
    t.money "CapitalizedRentalInventory", precision: 19, scale: 4, default: 0.0
    t.money "AccruedDepreciation", precision: 19, scale: 4, default: 0.0
    t.money "NonCapitalizedRentalInventory", precision: 19, scale: 4, default: 0.0
    t.money "BeginDrawer", precision: 19, scale: 4, default: 0.0
    t.money "CashComputed", precision: 19, scale: 4, default: 0.0
    t.money "CashCounted", precision: 19, scale: 4, default: 0.0
    t.money "ChecksComputed", precision: 19, scale: 4, default: 0.0
    t.money "ChecksCounted", precision: 19, scale: 4, default: 0.0
    t.money "DepositChecksCounted", precision: 19, scale: 4, default: 0.0
    t.money "CreditCardsComputed", precision: 19, scale: 4, default: 0.0
    t.money "DebitCardsComputed", precision: 19, scale: 4, default: 0.0
    t.money "OtherAmountsComputed", precision: 19, scale: 4, default: 0.0
    t.money "OtherAmountsCounted", precision: 19, scale: 4, default: 0.0
    t.money "EndOfDayDeposit", precision: 19, scale: 4, default: 0.0
    t.money "WithdrawnDeposit", precision: 19, scale: 4, default: 0.0
    t.money "ReservationValueMonth", precision: 19, scale: 4, default: 0.0
    t.money "ReservationValueQuarter", precision: 19, scale: 4, default: 0.0
    t.money "ReservationValueYear", precision: 19, scale: 4, default: 0.0
    t.money "ReservationValueAll", precision: 19, scale: 4, default: 0.0
    t.integer "Coins01"
    t.integer "Coins05"
    t.integer "Coins10"
    t.integer "Coins25"
    t.integer "Coins50"
    t.integer "Coins100"
    t.integer "Coins200"
    t.integer "Bills01"
    t.integer "Bills02"
    t.integer "Bills05"
    t.integer "Bills10"
    t.integer "Bills20"
    t.integer "Bills50"
    t.integer "Bills100"
    t.money "EquipmentSuspense", precision: 19, scale: 4
    t.money "InventorySuspense", precision: 19, scale: 4
    t.money "SubrentLiability", precision: 19, scale: 4
    t.money "OtherLiability", precision: 19, scale: 4
    t.index ["Batch"], name: "TotalsSummary$Batch"
    t.index ["Date"], name: "TotalsSummary$Date"
    t.index ["Store", "Batch"], name: "TotalsSummary$PrimaryKey"
    t.index ["Store"], name: "TotalsSummary$Store"
  end

  create_table "TransEditCode", primary_key: "Code", id: { type: :string, limit: 1 }, force: :cascade do |t|
    t.string "CodeDescrip", limit: 50
    t.index ["Code"], name: "TransEditCode$Code"
    t.index ["CodeDescrip"], name: "TransEditCode$CodeDescrip"
  end

  create_table "TransEditCode_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.string "Code", limit: 1, null: false
    t.string "CodeDescrip", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["Code", "Languagecode"], name: "TransEditCode_Tr_Code", unique: true
  end

  create_table "TransHistory", primary_key: "CNTR", id: { type: :string, limit: 10 }, force: :cascade do |t|
    t.datetime "DATE", precision: nil
    t.string "TIME", limit: 4
    t.integer "OPID"
    t.string "PYMT", limit: 1
    t.string "DPMT", limit: 1
    t.string "STAT", limit: 2
    t.string "CUSN", limit: 6
    t.string "RDIS", limit: 2
    t.money "DMG", precision: 19, scale: 4, default: 0.0
    t.money "OTHR", precision: 19, scale: 4, default: 0.0
    t.money "RENT", precision: 19, scale: 4, default: 0.0
    t.money "SALE", precision: 19, scale: 4, default: 0.0
    t.money "TAX", precision: 19, scale: 4, default: 0.0
    t.money "TOTL", precision: 19, scale: 4, default: 0.0
    t.money "PAID", precision: 19, scale: 4, default: 0.0
    t.money "DEPP", precision: 19, scale: 4, default: 0.0
    t.money "DEPR", precision: 19, scale: 4, default: 0.0
    t.string "CKN", limit: 50
    t.string "DCKN", limit: 50
    t.string "JOBN", limit: 50
    t.string "JBPO", limit: 50
    t.string "JBID", limit: 50
    t.integer "TaxCode"
    t.string "STR", limit: 3
    t.string "SDIS", limit: 2
    t.datetime "CMDT", precision: nil
    t.datetime "CLDT", precision: nil
    t.string "CONT", limit: 1
    t.integer "DAY", default: 0
    t.boolean "Delvr", default: false
    t.datetime "Completed", precision: nil
    t.datetime "Billed", precision: nil
    t.boolean "DeliveryConfirmed", default: false
    t.datetime "DeliveryDate", precision: nil
    t.string "DeliveryTrip", limit: 20
    t.boolean "Pickup", default: false
    t.boolean "PickupConfirmed", default: false
    t.datetime "PickupDate", precision: nil
    t.string "PickupTrip", limit: 20
    t.string "Contact", limit: 50
    t.string "ContactPhone", limit: 50
    t.boolean "SameAddress", default: false
    t.string "DeliveryAddress", limit: 150
    t.string "DeliveryCity", limit: 150
    t.string "DeliveryZip", limit: 50
    t.string "CardSwipe", limit: 255
    t.boolean "Nontaxable", default: false
    t.money "Discount", precision: 19, scale: 4
    t.integer "Salesman"
    t.string "PickedUpBy", limit: 255
    t.string "PickedUpDlNo", limit: 255
    t.money "ItemPercentage", precision: 19, scale: 4
    t.string "AutoLicense", limit: 50
    t.boolean "DamageWaiverExempt", default: false
    t.boolean "ItemPercentageExempt", default: false
    t.integer "PriceLevel", limit: 2
    t.integer "Modification", limit: 2, default: 0
    t.datetime "EventEndDate", precision: nil
    t.integer "DeliveryTruckNumber"
    t.integer "PickupTruckNumber"
    t.integer "JobSite"
    t.string "DeliverToCompany", limit: 50
    t.string "DeliveryNotes", limit: 1000
    t.string "VerifiedAddress", limit: 250
    t.float "DeliverySetupTime"
    t.float "PickupLoadTime"
    t.integer "TransactionType"
    t.integer "Operation"
    t.integer "DeliveryRoute"
    t.integer "PickupRoute"
    t.datetime "DeliveryDatePromised", precision: nil
    t.datetime "PickupDatePromised", precision: nil
    t.string "LastLetter", limit: 250
    t.datetime "LetterDate", precision: nil
    t.boolean "PostedCash", default: false
    t.boolean "PostedAccrual", default: false
    t.integer "CurrencyNumber"
    t.float "ExchangeRate"
    t.integer "DiscountTable"
    t.string "OrderedBy", limit: 255
    t.integer "DeliveryCrewCount", limit: 2
    t.integer "PickupCrewCount", limit: 2
    t.float "DeliverySetupTimeComputed"
    t.string "MasterBill", limit: 7
    t.integer "ServiceSeq"
    t.text "Notes"
    t.string "ParentContract", limit: 10
    t.boolean "PickupSameAddress"
    t.string "PickupAddress", limit: 255
    t.string "PickupCity", limit: 255
    t.string "PickupZip", limit: 255
    t.integer "OperatorCreated"
    t.integer "OperatorAssigned"
    t.string "PickupVerifiedAddress", limit: 250
    t.string "PickupFromCompany", limit: 50
    t.datetime "CreatedDate", precision: nil
    t.string "Status", limit: 10
    t.string "SecondaryStatus", limit: 10
    t.boolean "Cancelled", default: false, null: false
    t.boolean "ReviewBilling", default: false, null: false
    t.float "RentDiscount", default: 0.0
    t.float "SaleDiscount", default: 0.0
    t.integer "RateEngineId"
    t.money "DesiredDeposit", precision: 19, scale: 4
    t.string "PickupContact", limit: 255
    t.string "PickupContactPhone", limit: 255
    t.string "PickupNotes", limit: 1000
    t.boolean "Archived", default: false, null: false
    t.string "AccountingLink", limit: 255
    t.datetime "RevenueDate", precision: nil
    t.integer "ClassID", default: 0, null: false
    t.integer "CurrentModifyOpNo", default: 0, null: false
    t.money "DamageWaiverTaxAmount", precision: 19, scale: 4, default: 0.0, null: false
    t.money "ItemPercentageTaxAmount", precision: 19, scale: 4, default: 0.0, null: false
    t.money "OtherTaxAmount", precision: 19, scale: 4, default: 0.0, null: false
    t.integer "AccountingTransactionId"
    t.ss_timestamp "Version", null: false
    t.string "InvoiceNumber", limit: 50
    t.datetime "UpdatedDateTime", precision: nil
    t.index ["Archived"], name: "TransHistory_Archived"
    t.index ["CUSN", "CNTR"], name: "TransHistory$CUSN"
    t.index ["CUSN"], name: "TransHistory$CUSN1"
    t.index ["Delvr"], name: "TransHistory$Delivery"
    t.index ["InvoiceNumber"], name: "TransHistory_InvoiceNumber"
    t.index ["JobSite"], name: "TransHistory$JobSite"
    t.index ["Operation"], name: "TransHistory$Operation"
    t.index ["TransactionType"], name: "TransHistory$TransactionType"
  end

  create_table "TransItemsHistory", primary_key: ["CNTR", "LineNumber"], force: :cascade do |t|
    t.string "CNTR", limit: 10, null: false
    t.integer "SUBF", default: 0, null: false
    t.string "ITEM", limit: 6
    t.float "QTY", default: 0.0
    t.integer "HRSC", default: 0
    t.datetime "DDT", precision: nil, null: false
    t.string "DTM", limit: 4
    t.string "TXTY", limit: 2
    t.money "PRIC", precision: 19, scale: 4, default: 0.0
    t.string "Desc", limit: 150
    t.string "Comments", limit: 255
    t.money "DmgWvr", precision: 19, scale: 4
    t.money "ItemPercentage", precision: 19, scale: 4
    t.money "DiscountPercent", precision: 19, scale: 4
    t.boolean "Nontaxable", default: false
    t.boolean "Nondiscount", default: false
    t.string "LetterSent", limit: 5
    t.string "Sort", limit: 15
    t.money "DiscountAmount", precision: 19, scale: 4, default: 0.0
    t.money "DailyAmount", precision: 19, scale: 4, default: 0.0
    t.money "WeeklyAmount", precision: 19, scale: 4, default: 0.0
    t.money "MonthlyAmount", precision: 19, scale: 4, default: 0.0
    t.money "MinimumAmount", precision: 19, scale: 4, default: 0.0
    t.real "ReadingOut", default: 0.0
    t.real "ReadingIn", default: 0.0
    t.integer "RainHours", default: 0
    t.datetime "LastModified", precision: nil
    t.money "RetailPrice", precision: 19, scale: 4
    t.string "KitField", limit: 50
    t.datetime "ConfirmedDate", precision: nil
    t.float "SubrentQuantity"
    t.integer "Substatus"
    t.string "ContractLink", limit: 11
    t.integer "LineNumber", null: false
    t.integer "RateEngineId"
    t.money "BaseRate", precision: 19, scale: 4
    t.string "LogisticsOUT", limit: 10
    t.string "LogisticsIN", limit: 10
    t.boolean "Archived", default: false, null: false
    t.datetime "OutDate", precision: nil
    t.integer "TransRelated", default: 0, null: false
    t.integer "SpecialRateTypeId", default: 0, null: false
    t.money "TaxAmount", precision: 19, scale: 4, default: 0.0, null: false
    t.datetime "MonthlyRateDate", precision: nil
    t.string "Id", limit: 27, null: false
    t.datetime "UserOverrideAvailabilityBegin", precision: nil
    t.datetime "UserOverrideAvailabilityEnd", precision: nil
    t.index ["Archived"], name: "TransItemsHistory_Archived"
    t.index ["CNTR"], name: "TransItemsHistory$CNTR"
    t.index ["ContractLink"], name: "TransItemsHistory$ContractLink"
    t.index ["ITEM", "CNTR"], name: "TransItemsHistory$ITEM2"
    t.index ["ITEM"], name: "TransItemsHistory$ITEM"
    t.index ["Id"], name: "IDX_TransItemsHistory_Id", unique: true
    t.index ["SUBF"], name: "SUBF"
    t.index ["Substatus"], name: "TransItemsHistory$Substatus"
  end

  create_table "TransItemsSuspense", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "CNTR", limit: 10, null: false
    t.integer "LineNumber", default: 0, null: false
    t.datetime "SuspenseDate", precision: nil, null: false
    t.integer "SuspenseHours", default: 0, null: false
    t.integer "SuspenseReasonID", null: false
    t.float "SuspensePercentCharge", default: 0.0, null: false
    t.float "SuspenseAmountCalculated", default: 0.0, null: false
    t.string "Notes", limit: 1000
  end

  create_table "TransactionClassification", primary_key: "ClassID", id: :integer, default: nil, force: :cascade do |t|
    t.string "ClassDescription", limit: 255, default: "**No Description**", null: false
  end

  create_table "TransactionEdit", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "Batch", default: 0
    t.string "Store", limit: 3
    t.datetime "Date", precision: nil
    t.integer "Opr", default: 0
    t.string "CNTR", limit: 10
    t.datetime "Out", precision: nil
    t.string "Time", limit: 4
    t.string "Code", limit: 1
    t.string "Stat", limit: 2
    t.money "Rent", precision: 19, scale: 4, default: 0.0
    t.money "Sale", precision: 19, scale: 4, default: 0.0
    t.money "DW", precision: 19, scale: 4, default: 0.0
    t.money "Tax", precision: 19, scale: 4, default: 0.0
    t.money "Other", precision: 19, scale: 4, default: 0.0
    t.money "Paid", precision: 19, scale: 4, default: 0.0
    t.string "PayMeth", limit: 2
    t.money "Deposit", precision: 19, scale: 4, default: 0.0
    t.string "DepMeth", limit: 1
    t.string "Cusn", limit: 6
    t.string "Note", limit: 100
    t.money "ItemPercentage", precision: 19, scale: 4
    t.integer "Modification", limit: 2, default: 0
    t.integer "GLTransactionGroupId", default: 0
    t.index ["Batch"], name: "TransactionEdit$Batch"
    t.index ["CNTR"], name: "TransactionEdit$CNTR"
    t.index ["Code"], name: "TransactionEdit$Code"
    t.index ["Date"], name: "TransactionEdit$Date"
    t.index ["Paid"], name: "TransactionEdit$Paid"
  end

  create_table "TransactionFulfillmentLog", primary_key: "LogId", id: :integer, force: :cascade do |t|
    t.string "Contract", limit: 10
    t.integer "DepartmentNum", default: 0
    t.boolean "Fulfilled", default: false
    t.integer "OpNo"
    t.datetime "TimeStamp", precision: nil
    t.boolean "Prepped", default: false, null: false
    t.index ["Contract", "DepartmentNum"], name: "TransactionFulfillmentLog$Contract"
  end

  create_table "TransactionItems", primary_key: ["CNTR", "LineNumber"], force: :cascade do |t|
    t.string "CNTR", limit: 10, null: false
    t.integer "SUBF", default: 0, null: false
    t.string "ITEM", limit: 6
    t.float "QTY", default: 0.0
    t.integer "HRSC", default: 0
    t.datetime "DDT", precision: nil, null: false
    t.string "DTM", limit: 4
    t.string "TXTY", limit: 2
    t.money "PRIC", precision: 19, scale: 4, default: 0.0
    t.string "Desc", limit: 150
    t.string "Comments", limit: 255
    t.money "DmgWvr", precision: 19, scale: 4
    t.money "ItemPercentage", precision: 19, scale: 4
    t.money "DiscountPercent", precision: 19, scale: 4
    t.boolean "Nontaxable", default: false
    t.boolean "Nondiscount", default: false
    t.string "LetterSent", limit: 5
    t.string "Sort", limit: 15
    t.money "DiscountAmount", precision: 19, scale: 4, default: 0.0
    t.money "DailyAmount", precision: 19, scale: 4, default: 0.0
    t.money "WeeklyAmount", precision: 19, scale: 4, default: 0.0
    t.money "MonthlyAmount", precision: 19, scale: 4, default: 0.0
    t.money "MinimumAmount", precision: 19, scale: 4, default: 0.0
    t.real "ReadingOut", default: 0.0
    t.real "ReadingIn", default: 0.0
    t.integer "RainHours", default: 0
    t.datetime "LastModified", precision: nil
    t.money "RetailPrice", precision: 19, scale: 4
    t.string "KitField", limit: 50
    t.datetime "ConfirmedDate", precision: nil
    t.float "SubrentQuantity"
    t.integer "Substatus"
    t.string "ContractLink", limit: 11
    t.integer "LineNumber", null: false
    t.integer "RateEngineId"
    t.money "BaseRate", precision: 19, scale: 4
    t.string "LogisticsOUT", limit: 10
    t.string "LogisticsIN", limit: 10
    t.boolean "Archived", default: false, null: false
    t.datetime "OutDate", precision: nil
    t.integer "TransRelated", default: 0, null: false
    t.integer "SpecialRateTypeId", default: 0, null: false
    t.money "TaxAmount", precision: 19, scale: 4, default: 0.0, null: false
    t.datetime "MonthlyRateDate", precision: nil
    t.string "Id", limit: 27, null: false
    t.datetime "UserOverrideAvailabilityBegin", precision: nil
    t.datetime "UserOverrideAvailabilityEnd", precision: nil
    t.index ["Archived"], name: "TransactionItems_Archived"
    t.index ["CNTR"], name: "TransactionItems$CNTR"
    t.index ["ContractLink"], name: "TransactionItems$ContractLink"
    t.index ["ITEM", "CNTR", "TXTY"], name: "idx_transaction_items_item_cnt_txty"
    t.index ["ITEM", "CNTR"], name: "TransactionItems$ITEM2"
    t.index ["ITEM"], name: "TransactionItems$ITEM"
    t.index ["Id"], name: "IDX_TransactionItems_Id", unique: true
    t.index ["SUBF"], name: "SUBF"
    t.index ["Substatus"], name: "TransactionItems$Substatus"
  end

  create_table "TransactionItemsSerialization", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "Cntr", limit: 10, null: false
    t.integer "LineNumber", null: false
    t.string "Num", limit: 6, null: false
    t.string "UniqueIdentifier", limit: 255, null: false
    t.float "Quantity", null: false
    t.integer "OpNo", null: false
    t.integer "ActionId", null: false
    t.integer "ActionSource", null: false
    t.datetime "TimeStamp", precision: nil, null: false
    t.float "Latitude", null: false
    t.float "Longitude", null: false
    t.integer "GeoAccuracy", null: false
    t.string "Comment", limit: 255
    t.float "MeterReading"
    t.float "FuelLevel"
    t.integer "Eyeballed", limit: 2
    t.string "ParentContract", limit: 10
    t.index ["Cntr"], name: "TransactionItemsSerialization$CNTR"
    t.index ["Num"], name: "TransactionItemsSerialization$Num"
    t.index ["ParentContract"], name: "idx_contract"
    t.index ["UniqueIdentifier"], name: "TransactionItemsSerialization$UniqueIdentifier"
  end

  create_table "TransactionItemsSerializationAction", primary_key: "ActionId", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 255
  end

  create_table "TransactionItemsSerializationActionSources", primary_key: "SourceID", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.boolean "Inactive", null: false
  end

  create_table "TransactionItemsSubStatus_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.string "TISubstatus", limit: 10, null: false
    t.string "SubStatusName", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "TransactionItemsSubstatus", primary_key: "TISubstatus", id: :integer, force: :cascade do |t|
    t.string "SubstatusName", limit: 255
    t.boolean "Inactive", default: false
  end

  create_table "TransactionItems_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.string "CNTR", limit: 10, null: false
    t.integer "SUBF", null: false
    t.string "Desc", limit: 50
    t.string "Comments", limit: 255
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["CNTR", "SUBF", "Languagecode"], name: "TransactionItems_Tr_CNTR_SUBF", unique: true
  end

  create_table "TransactionKey", id: false, force: :cascade do |t|
    t.integer "KeyNumber"
  end

  create_table "TransactionKeyBackup", primary_key: "BackupNumber", id: :integer, force: :cascade do |t|
    t.datetime "DateStamp", precision: nil
    t.integer "KeyNumber"
  end

  create_table "TransactionNotificationMessages", primary_key: "MessageNumber", id: :integer, force: :cascade do |t|
    t.string "Description", limit: 255
    t.string "Status", limit: 20
    t.string "Subject", limit: 255
    t.text "Body"
    t.text "SMSMessage"
    t.boolean "IncludePDF", default: false, null: false
    t.integer "TransactionNotificationType"
  end

  create_table "TransactionNotificationMessagesType", primary_key: "TransactionNotificationType", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.boolean "Inactive", default: false, null: false
  end

  create_table "TransactionNotifications", primary_key: "NotificationNumber", id: :integer, force: :cascade do |t|
    t.string "CNTR", limit: 10
    t.integer "OperatorNo"
    t.string "Email", limit: 254, default: "", null: false
    t.string "CellPhone", limit: 255
    t.integer "CellProvider", limit: 2
    t.integer "Notification", limit: 2
    t.boolean "Open", default: false
    t.boolean "Modify", default: false
    t.boolean "MarkLoaded", default: false
    t.boolean "SendOut", default: false
    t.boolean "CallOffRent", default: false
    t.boolean "Close", default: false
    t.boolean "Completed", default: false
    t.boolean "OperationChange", default: false
    t.boolean "Delivery", default: false
    t.index ["CNTR"], name: "TransactionNotifications$CNTR"
    t.index ["OperatorNo"], name: "TransactionNotifications$OperatorNo"
  end

  create_table "TransactionOperation", primary_key: "OperationNumber", id: :integer, force: :cascade do |t|
    t.string "Status", limit: 50
    t.string "OperationName", limit: 255
    t.boolean "Inactive", default: false
    t.index ["Status"], name: "TransactionOperation$Status"
  end

  create_table "TransactionOperation_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "OperationNumber", null: false
    t.string "OperationName", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["OperationNumber", "Languagecode"], name: "TransactionOperation_Tr_OperationNumber", unique: true
  end

  create_table "TransactionSecondaryStatus", primary_key: "SecondaryStatus", id: { type: :string, limit: 10 }, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.boolean "Inactive", default: false, null: false
    t.integer "CreatedBy", default: -1, null: false
    t.integer "ChangedBy", default: -1, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
  end

  create_table "TransactionSecondaryStatus_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "LanguageCode", limit: 10, null: false
    t.string "Description", limit: 255, null: false
    t.string "SecondaryStatus", limit: 10, null: false
    t.boolean "Inactive", default: false, null: false
    t.integer "CreatedBy", default: -1, null: false
    t.integer "ChangedBy", default: -1, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.index ["SecondaryStatus"], name: "TransactionSecondaryStatus_Tr_Status", unique: true
  end

  create_table "TransactionService", primary_key: "ServiceNumber", id: :integer, force: :cascade do |t|
    t.string "CNTR", limit: 10
    t.string "Description", limit: 255
    t.string "Type", limit: 1
    t.integer "Frequency"
    t.boolean "DayOfWeek1", default: false
    t.boolean "DayOfWeek2", default: false
    t.boolean "DayOfWeek3", default: false
    t.boolean "DayOfWeek4", default: false
    t.boolean "DayOfWeek5", default: false
    t.boolean "DayOfWeek6", default: false
    t.boolean "DayOfWeek7", default: false
    t.datetime "StartDate", precision: nil
    t.integer "LastReading"
    t.datetime "LastDate", precision: nil
    t.integer "MaxServiceTimes", limit: 2
    t.integer "ServiceTimes", limit: 2
    t.string "IROCustomer", limit: 50
    t.string "RouteName", limit: 50
    t.integer "ServiceTruck"
    t.string "DeliveryNotes", limit: 255
    t.string "ContractInfo", limit: 100
    t.string "PONumber", limit: 50
    t.boolean "IncludeAllItems", default: false
    t.string "LinkItem", limit: 50
    t.string "AutoAddItem1", limit: 50
    t.string "AutoAddItem2", limit: 50
    t.string "AutoAddItem3", limit: 50
    t.float "ServiceTime"
    t.integer "ServiceSeq"
    t.index ["CNTR"], name: "TransactionService$CNTR"
  end

  create_table "TransactionServiceType", primary_key: "Type", id: { type: :string, limit: 10 }, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.integer "ListOrder"
  end

  create_table "TransactionServiceType_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.string "Type", limit: 10, null: false
    t.string "Description", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["Type", "Languagecode"], name: "TransactionServiceType_Tr_Type", unique: true
  end

  create_table "TransactionSignature", primary_key: "Number", id: :integer, force: :cascade do |t|
    t.string "CNTR", limit: 10
    t.integer "Modification"
    t.datetime "TimeStamp", precision: nil
    t.string "CustomerName", limit: 50
    t.binary "Signature"
    t.integer "SignatureTypeId"
    t.index ["CNTR", "Modification"], name: "TransactionSignature$ContractModification"
    t.index ["CNTR"], name: "TransactionSignature$CNTR"
  end

  create_table "TransactionStatus", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Description", limit: 50
    t.string "Status", limit: 1
    t.index ["Status"], name: "TransactionStatus$Status", unique: true
  end

  create_table "TransactionStatus_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.string "Status", limit: 10
    t.string "Description", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
  end

  create_table "TransactionTaxDefinition", primary_key: "TaxFeeId", id: :integer, force: :cascade do |t|
    t.string "APIJurisdiction", limit: 255
    t.string "APITaxName", limit: 255, null: false
    t.string "InvoiceNameAlias", limit: 255
    t.boolean "ShowOnInvoice", default: false, null: false
    t.index ["APITaxName"], name: "TransactionTaxDefinition_APITaxName", unique: true
  end

  create_table "TransactionTaxDetail", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "Contract", limit: 10, null: false
    t.integer "TaxFeeId", null: false
    t.money "TaxAmount", precision: 19, scale: 4, null: false
    t.money "TaxableRevenue", precision: 19, scale: 4, null: false
    t.float "TaxRate", null: false
  end

  create_table "TransactionType", primary_key: "TypeNumber", id: :integer, force: :cascade do |t|
    t.string "Status", limit: 50
    t.string "TypeName", limit: 255
    t.boolean "Inactive", default: false
    t.boolean "AutoReminder", default: false
    t.index ["Status"], name: "TransactionType$Status"
  end

  create_table "TransactionType_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "TypeNumber", null: false
    t.string "TypeName", limit: 255, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["TypeNumber", "Languagecode"], name: "TransactionType_Tr_TypeNumber", unique: true
  end

  create_table "Transactions", primary_key: "CNTR", id: { type: :string, limit: 10 }, force: :cascade do |t|
    t.datetime "DATE", precision: nil
    t.string "TIME", limit: 4
    t.integer "OPID", default: 0
    t.string "PYMT", limit: 1
    t.string "DPMT", limit: 1
    t.string "STAT", limit: 2
    t.string "CUSN", limit: 6
    t.string "RDIS", limit: 2
    t.money "DMG", precision: 19, scale: 4, default: 0.0
    t.money "OTHR", precision: 19, scale: 4, default: 0.0
    t.money "RENT", precision: 19, scale: 4, default: 0.0
    t.money "SALE", precision: 19, scale: 4, default: 0.0
    t.money "TAX", precision: 19, scale: 4, default: 0.0
    t.money "TOTL", precision: 19, scale: 4, default: 0.0
    t.money "PAID", precision: 19, scale: 4, default: 0.0
    t.money "DEPP", precision: 19, scale: 4, default: 0.0
    t.money "DEPR", precision: 19, scale: 4, default: 0.0
    t.string "CKN", limit: 50
    t.string "DCKN", limit: 50
    t.string "JOBN", limit: 50
    t.string "JBPO", limit: 50
    t.string "JBID", limit: 50
    t.integer "TaxCode"
    t.string "STR", limit: 3
    t.string "SDIS", limit: 2
    t.datetime "CMDT", precision: nil
    t.datetime "CLDT", precision: nil
    t.string "CONT", limit: 1
    t.integer "DAY", default: 0
    t.boolean "Delvr", default: false
    t.datetime "Completed", precision: nil
    t.datetime "Billed", precision: nil
    t.boolean "DeliveryConfirmed", default: false
    t.datetime "DeliveryDate", precision: nil
    t.string "DeliveryTrip", limit: 20
    t.boolean "Pickup", default: false
    t.boolean "PickupConfirmed", default: false
    t.datetime "PickupDate", precision: nil
    t.string "PickupTrip", limit: 20
    t.string "Contact", limit: 50
    t.string "ContactPhone", limit: 50
    t.boolean "SameAddress", default: false
    t.string "DeliveryAddress", limit: 150
    t.string "DeliveryCity", limit: 150
    t.string "DeliveryZip", limit: 50
    t.string "CardSwipe", limit: 255
    t.boolean "Nontaxable", default: false
    t.money "Discount", precision: 19, scale: 4
    t.integer "Salesman"
    t.string "PickedUpBy", limit: 255
    t.string "PickedUpDlNo", limit: 255
    t.money "ItemPercentage", precision: 19, scale: 4
    t.string "AutoLicense", limit: 50
    t.boolean "DamageWaiverExempt", default: false
    t.boolean "ItemPercentageExempt", default: false
    t.integer "PriceLevel", limit: 2
    t.integer "Modification", limit: 2, default: 0
    t.datetime "EventEndDate", precision: nil
    t.integer "DeliveryTruckNumber"
    t.integer "PickupTruckNumber"
    t.integer "JobSite"
    t.string "DeliverToCompany", limit: 50
    t.string "DeliveryNotes", limit: 1000
    t.string "VerifiedAddress", limit: 250
    t.float "DeliverySetupTime"
    t.float "PickupLoadTime"
    t.integer "TransactionType"
    t.integer "Operation"
    t.integer "DeliveryRoute"
    t.integer "PickupRoute"
    t.datetime "DeliveryDatePromised", precision: nil
    t.datetime "PickupDatePromised", precision: nil
    t.string "LastLetter", limit: 250
    t.datetime "LetterDate", precision: nil
    t.boolean "PostedCash", default: false
    t.boolean "PostedAccrual", default: false
    t.integer "CurrencyNumber"
    t.float "ExchangeRate"
    t.integer "DiscountTable"
    t.string "OrderedBy", limit: 255
    t.integer "DeliveryCrewCount", limit: 2
    t.integer "PickupCrewCount", limit: 2
    t.float "DeliverySetupTimeComputed"
    t.string "MasterBill", limit: 7
    t.integer "ServiceSeq"
    t.text "Notes"
    t.string "ParentContract", limit: 10
    t.boolean "PickupSameAddress"
    t.string "PickupAddress", limit: 255
    t.string "PickupCity", limit: 255
    t.string "PickupZip", limit: 255
    t.integer "OperatorCreated"
    t.integer "OperatorAssigned"
    t.string "PickupVerifiedAddress", limit: 250
    t.string "PickupFromCompany", limit: 50
    t.datetime "CreatedDate", precision: nil
    t.string "Status", limit: 10
    t.string "SecondaryStatus", limit: 10
    t.boolean "Cancelled", default: false, null: false
    t.boolean "ReviewBilling", default: false, null: false
    t.float "RentDiscount", default: 0.0
    t.float "SaleDiscount", default: 0.0
    t.integer "RateEngineId"
    t.money "DesiredDeposit", precision: 19, scale: 4
    t.string "PickupContact", limit: 255
    t.string "PickupContactPhone", limit: 255
    t.string "PickupNotes", limit: 1000
    t.boolean "Archived", default: false, null: false
    t.string "AccountingLink", limit: 255
    t.datetime "RevenueDate", precision: nil
    t.integer "ClassID", default: 0, null: false
    t.integer "CurrentModifyOpNo", default: 0, null: false
    t.money "DamageWaiverTaxAmount", precision: 19, scale: 4, default: 0.0, null: false
    t.money "ItemPercentageTaxAmount", precision: 19, scale: 4, default: 0.0, null: false
    t.money "OtherTaxAmount", precision: 19, scale: 4, default: 0.0, null: false
    t.integer "AccountingTransactionId"
    t.ss_timestamp "Version", null: false
    t.string "InvoiceNumber", limit: 50
    t.datetime "UpdatedDateTime", precision: nil
    t.integer "DeliveryCountryCode", default: 0, null: false
    t.integer "PickupCountryCode", default: 0, null: false
    t.index ["Archived"], name: "Transactions_Archived"
    t.index ["CUSN", "CNTR"], name: "Transactions$CUSN"
    t.index ["CUSN"], name: "Transactions$CUSN1"
    t.index ["DATE", "Salesman", "ClassID", "Status", "STR"], name: "IDX_Transaction_DATE_SalesRep"
    t.index ["Delvr"], name: "Transactions$Delivery"
    t.index ["InvoiceNumber"], name: "Transactions_InvoiceNumber"
    t.index ["JobSite"], name: "Transactions$JobSite"
    t.index ["Operation"], name: "Transactions$Operation"
    t.index ["SecondaryStatus"], name: "Transactions_SecondaryStatus"
    t.index ["Status"], name: "Transactions_Status"
    t.index ["TransactionType"], name: "Transactions$TransactionType"
    t.index ["Version"], name: "IDX_Transactions_Version"
  end

  create_table "TransactionsRelated", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Contract", limit: 10, null: false
    t.integer "LineNumber", default: 0
    t.string "RelatedDocument", limit: 20, null: false
    t.integer "RelatedDocumentType", default: 0
    t.string "Note", limit: 255
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false
    t.index ["Contract"], name: "TransactionsRelated_Contract"
    t.index ["RelatedDocument"], name: "TransactionsRelated_RelatedDocument"
    t.index ["RelatedDocumentType"], name: "TransactionsRelated_RelatedDocumentType"
  end

  create_table "TransactionsRelatedType", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.boolean "Inactive", default: false, null: false
  end

  create_table "TransactionsRelatedType_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "LanguageCode", limit: 10, null: false
    t.string "Description", limit: 255, null: false
    t.boolean "Inactive", default: false, null: false
  end

  create_table "TransactionsVoided", primary_key: "TransactionsVoidedId", id: :integer, force: :cascade do |t|
    t.integer "VoidReasonCodeId", null: false
    t.string "CNTR", limit: 10, null: false
    t.integer "OPID", default: 0
    t.string "STAT", limit: 2, null: false
    t.money "TOTL", precision: 19, scale: 4, default: 0.0
    t.text "TransVoidNote"
    t.datetime "TransVoidDate", precision: nil, default: -> { "getdate()" }
  end

  create_table "Transactions_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.string "CNTR", limit: 10, null: false
    t.string "DeliveryTrip", limit: 20
    t.string "PickupTrip", limit: 20
    t.string "DeliveryAddress", limit: 150
    t.string "DeliverToCompany", limit: 50
    t.string "DeliveryNotes", limit: 1000
    t.string "VerifiedAddress", limit: 250
    t.string "LastLetter", limit: 250
    t.text "Notes"
    t.string "PickupAddress", limit: 255
    t.string "PickupVerifiedAddress", limit: 250
    t.string "PickupFromCompany", limit: 50
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.string "PickupNotes", limit: 1000
    t.index ["CNTR", "Languagecode"], name: "Transactions_Tr_CNTR", unique: true
  end

  create_table "TransferDelay", primary_key: "DelayNumber", id: :integer, force: :cascade do |t|
    t.string "StoreReceive", limit: 3, null: false
    t.string "StoreGive", limit: 3, null: false
    t.float "TransferDelayHours", null: false
    t.boolean "NoTransfers", null: false
    t.string "Note", limit: 255
    t.index ["StoreReceive", "StoreGive"], name: "TransferDelayStores", unique: true
  end

  create_table "TransferToRent", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.integer "Batch"
    t.string "Store", limit: 3
    t.datetime "Date", precision: nil
    t.integer "OpNo"
    t.string "SaleItem", limit: 6
    t.string "RentItem", limit: 6
    t.string "RentItemName", limit: 250
    t.float "Quantity"
    t.money "PriceEach", precision: 19, scale: 4
    t.money "ExtraCharges", precision: 19, scale: 4
    t.integer "PurchaseNumber"
    t.integer "GLTransactionGroupId", default: 0
    t.index ["Batch"], name: "TransferToRent$Batch"
    t.index ["PurchaseNumber"], name: "TransferToRent$PurchaseNumber"
    t.index ["SaleItem"], name: "TransferToRent$SaleItem"
  end

  create_table "TransfersBetweenStores", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "Batch"
    t.string "Store", limit: 3
    t.datetime "Date", precision: nil
    t.string "Num", limit: 6
    t.integer "OpNo"
    t.string "CNTR", limit: 10
    t.float "Quantity"
    t.money "PriceEach", precision: 19, scale: 4
    t.money "ExtraCharges", precision: 19, scale: 4
    t.index ["Batch"], name: "TransfersBetweenStores$Batch"
    t.index ["Num"], name: "TransfersBetweenStores$Num"
  end

  create_table "TranslationColumn", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.integer "TranslationTableId", null: false
    t.string "ColumnName", limit: 255, null: false
    t.integer "ColumnLength", null: false
    t.integer "ColumnOrder", null: false
    t.boolean "Translated", default: false, null: false
    t.boolean "Inactive", default: false, null: false
  end

  create_table "TranslationKeys", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.varchar "KeyText", limit: 900, null: false, collation: "SQL_Latin1_General_CP1_CS_AS"
    t.index ["KeyText", "Id"], name: "TranslationKeys_KeyText_Id", unique: true
  end

  create_table "TranslationMessages", primary_key: ["Number", "Store"], force: :cascade do |t|
    t.integer "Number", null: false
    t.string "Store", limit: 255, null: false
    t.string "Report", limit: 255
    t.string "Description", limit: 255
    t.text "1"
    t.text "2"
    t.text "3"
    t.text "4"
    t.text "5"
  end

  create_table "TranslationNames", primary_key: "Translations", id: { type: :integer, limit: 2, default: nil }, force: :cascade do |t|
    t.string "Language", limit: 255
    t.string "LanguageCode", limit: 10
    t.boolean "DatabaseLanguage", default: false, null: false
  end

  create_table "TranslationTable", primary_key: "Id", id: :integer, default: nil, force: :cascade do |t|
    t.string "TableName", limit: 255, null: false
    t.string "TranslationTableType", limit: 1, null: false
    t.string "ParentKeyColumnName", limit: 255, null: false
    t.string "TrKeyColumnName", limit: 255, null: false
    t.string "KeyColumnType", limit: 255, null: false
    t.string "LookupColumnName", limit: 255, null: false
    t.boolean "ParentHasInactiveColumn", default: false, null: false
    t.boolean "Inactive", default: false, null: false
  end

  create_table "Translations", primary_key: "Number", id: :integer, default: nil, force: :cascade do |t|
    t.string "1", limit: 255
    t.string "2", limit: 255
    t.string "3", limit: 255
    t.string "4", limit: 255
    t.string "5", limit: 255
  end

  create_table "TranslationsCustom", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.string "LanguageCode", limit: 5, null: false
    t.string "KeyText", limit: 890, null: false
    t.string "TranslatedText"
  end

  create_table "TriggerEvents", primary_key: "ID", id: :integer, force: :cascade do |t|
    t.datetime "DateCreated", precision: nil
    t.integer "TriggerType", null: false
    t.string "Email", limit: 254, default: "", null: false
    t.string "CNTR", limit: 10
    t.string "Num", limit: 6
    t.string "CNUM", limit: 6
    t.integer "Authorized"
    t.boolean "Synced", default: false, null: false
    t.index ["CNTR"], name: "TriggerEvents_CNTR"
    t.index ["CNUM"], name: "TriggerEvents_CNUM"
    t.index ["Num"], name: "TriggerEvents_NUM"
  end

  create_table "TriggerTypes", primary_key: "ID", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 255, null: false
    t.boolean "Track", default: false, null: false
  end

  create_table "UserProfile", primary_key: "Terminal", id: { type: :string, limit: 50 }, force: :cascade do |t|
    t.string "Contract", limit: 100
    t.string "Report", limit: 100
    t.string "EndDay", limit: 100
    t.string "Instruct", limit: 100
    t.string "Receipt", limit: 100
    t.string "Drawer", limit: 100
    t.string "Deposit", limit: 100
    t.string "Label", limit: 100
    t.string "Fax", limit: 100
    t.string "LoadSlip", limit: 100
    t.string "LaserContract", limit: 100
    t.string "EndOfPeriod", limit: 100
    t.integer "Company", default: 0
    t.integer "Store", default: 0
    t.integer "NumberStores", default: 0
    t.string "StoreCode", limit: 1
    t.string "Master", limit: 1
    t.string "ScanFile", limit: 100
    t.string "OCRFile", limit: 100
    t.string "SignatureFile", limit: 100
    t.string "LaserContract2", limit: 100
    t.string "LaserContract3", limit: 100
    t.string "LaserContractQuote", limit: 100
    t.string "LaserContractReservation", limit: 100
    t.string "LaserContractClosed", limit: 100
    t.string "Attachments", limit: 100
    t.string "CreditCardIP", limit: 100
    t.integer "VeriFoneTerminalId"
    t.integer "NetworkDeviceId"
    t.boolean "NotRequireOperatorId", default: true, null: false
    t.integer "SharedOpNo"
    t.index ["NumberStores"], name: "UserProfile$NumberStores"
    t.index ["StoreCode"], name: "UserProfile$StoreCode"
  end

  create_table "VendorEdit", primary_key: "EditNumber", id: :integer, force: :cascade do |t|
    t.integer "Batch", null: false
    t.datetime "Date", precision: nil, null: false
    t.integer "VendorNumber", null: false
    t.integer "Opr", null: false
    t.string "Description", limit: 255
    t.string "Note", limit: 255
    t.index ["Batch"], name: "Batch"
    t.index ["VendorNumber"], name: "VendorNumber"
  end

  create_table "VendorFile", primary_key: "VendorNumber", id: :integer, force: :cascade do |t|
    t.string "VendorName", limit: 50, default: "", null: false
    t.string "Address1", limit: 50, default: "", null: false
    t.string "Address2", limit: 50, default: "", null: false
    t.string "CityState", limit: 50, default: "", null: false
    t.string "Zip", limit: 10, default: "", null: false
    t.string "Phone", limit: 50, default: "", null: false
    t.string "Fax", limit: 25, default: "", null: false
    t.string "WebAddress", limit: 75, default: "", null: false
    t.string "Contact1", limit: 50, default: "", null: false
    t.string "Contact1Phone", limit: 50, default: "", null: false
    t.string "Contact1Email", limit: 254, default: "", null: false
    t.string "Contact2", limit: 50, default: "", null: false
    t.string "Contact2Phone", limit: 50, default: "", null: false
    t.string "Contact2Email", limit: 254, default: "", null: false
    t.string "AccountNumber", limit: 50, default: "", null: false
    t.string "Terms", limit: 50, default: "", null: false
    t.money "MinimumOrder", precision: 19, scale: 4, default: 0.0, null: false
    t.money "YearToDate", precision: 19, scale: 4, default: 0.0, null: false
    t.money "LifeToDate", precision: 19, scale: 4, default: 0.0, null: false
    t.money "LastYear", precision: 19, scale: 4, default: 0.0, null: false
    t.string "Products", limit: 255, default: "", null: false
    t.boolean "Inactive", default: false, null: false
    t.text "Notes", default: "", null: false
    t.boolean "SubrentalVendor", default: false, null: false
    t.string "GLLink", limit: 100, default: "", null: false
    t.integer "PaymentMethod", default: 0, null: false
    t.money "POApprovalOverride", precision: 19, scale: 4, default: 0.0, null: false
    t.integer "CurrencyNumber", default: 0, null: false
    t.integer "Language", limit: 2, default: 0, null: false
    t.string "POPrintout", limit: 255, default: "", null: false
    t.integer "TaxCode", default: 0, null: false
    t.integer "AccountingVendorId", default: 0, null: false
    t.integer "TermDays", default: 0, null: false
    t.integer "CountryCode", default: 0, null: false
    t.ss_timestamp "Version", null: false
    t.index ["Version"], name: "IDX_VendorFile_Version"
  end

  create_table "VendorMarkup", primary_key: "VendorMarkupNumber", id: :integer, force: :cascade do |t|
    t.integer "VendorNumber"
    t.money "MinimumPrice", precision: 19, scale: 4
    t.float "MarkupPercent"
    t.index ["VendorNumber"], name: "VendorMarkup$VendorNumber"
  end

  create_table "VendorMarkup_Backup", primary_key: "VendorMarkupNumber", id: :integer, force: :cascade do |t|
    t.integer "VendorNumber"
    t.money "MinimumPrice", precision: 19, scale: 4
    t.float "MarkupPercent"
  end

  create_table "VeriFoneTerminal", primary_key: "TerminalId", id: :integer, force: :cascade do |t|
    t.integer "Store", null: false
    t.string "TerminalDescription", limit: 255
    t.string "TerminalIP", limit: 50, null: false
    t.string "MACLabel", limit: 255
    t.integer "Counter", default: 0, null: false
    t.integer "IntegrationMethod", limit: 2, default: 0, null: false
    t.boolean "AllowDebit", null: false
    t.boolean "AllowGift", null: false
    t.boolean "InActive", default: false, null: false
    t.text "MACKey"
  end

  create_table "Version", primary_key: "Number", id: :integer, default: nil, force: :cascade do |t|
    t.datetime "CodeDate", precision: nil
  end

  create_table "VersionHistory", primary_key: "HistoryNumber", id: :integer, force: :cascade do |t|
    t.integer "Batch", limit: 2
    t.datetime "DateStamp", precision: nil
    t.integer "VersionNumber", limit: 2
  end

  create_table "VersionedObjectDetail", primary_key: "Name", id: { type: :string, limit: 255 }, force: :cascade do |t|
    t.integer "VersionNumber", default: 0, null: false
    t.datetime "TimeStamp", precision: nil, default: -> { "getdate()" }, null: false
  end

  create_table "VoidReasonCode", primary_key: "VoidReasonCodeId", id: :integer, force: :cascade do |t|
    t.string "VoidReason", limit: 100, null: false
    t.boolean "Inactive", null: false
  end

  create_table "WarningMessage", primary_key: "Number", id: :integer, default: 0, force: :cascade do |t|
    t.string "Message", limit: 72
    t.index ["Number"], name: "WarningMessage$Number"
  end

  create_table "WarningMessage_Tr", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Languagecode", limit: 10, null: false
    t.integer "Number", null: false
    t.string "Message", limit: 72, null: false
    t.integer "CreatedBy", default: 0, null: false
    t.datetime "DateCreated", precision: nil, default: -> { "getdate()" }, null: false
    t.integer "ChangedBy", default: 0, null: false
    t.datetime "DateChanged", precision: nil, default: -> { "getdate()" }, null: false
    t.text "ChangeNote"
    t.boolean "Inactive", default: false, null: false
    t.index ["Number", "Languagecode"], name: "WarningMessage_Tr_Number", unique: true
  end

  create_table "WarrantyClaimStatus", primary_key: "StatusNumber", id: :integer, force: :cascade do |t|
    t.string "StatusName", limit: 255
    t.integer "SortOrder", limit: 2
    t.boolean "Inactive", default: false
  end

  create_table "WarrantyClaims", primary_key: "WarrantyNumber", id: :integer, force: :cascade do |t|
    t.string "CNTR", limit: 10
    t.integer "StatusNumber"
    t.integer "Opr"
    t.datetime "SubmittedDate", precision: nil
    t.datetime "ModifiedDate", precision: nil
    t.datetime "ClosedDate", precision: nil
    t.integer "VendorNumber"
    t.string "ClaimNumber", limit: 250
    t.string "ContactName", limit: 250
    t.datetime "CreditReceived", precision: nil
    t.string "CreditInvoice", limit: 250
    t.money "CreditAmount", precision: 19, scale: 4
    t.text "Notes"
    t.index ["CNTR"], name: "WarrantyClaims$CNTR"
    t.index ["Opr"], name: "WarrantyClaims$Opr"
    t.index ["VendorNumber"], name: "WarrantyClaims$VendorNumber"
  end

  create_table "WorkOrderFormat", primary_key: "Number", id: :integer, default: nil, force: :cascade do |t|
    t.string "Description", limit: 30
    t.string "FileName", limit: 50
    t.boolean "Inactive", default: false
    t.integer "Header", limit: 2
    t.integer "Detail", limit: 2
    t.integer "ShadeColor", limit: 2
    t.boolean "Barcode", default: false
    t.boolean "BillTo", default: false
    t.boolean "FaxCover", default: false
    t.boolean "RemitTo", default: false
    t.boolean "CaliforniaSig", default: false
    t.boolean "WithoutAmounts", default: false
    t.boolean "UseParameters", default: false
    t.boolean "ShowNoTime", default: false
    t.integer "DetailColumn1", limit: 2
    t.integer "DetailColumn2", limit: 2
    t.integer "DetailColumn3", limit: 2
    t.integer "DetailColumn4", limit: 2
    t.integer "DetailColumn5", limit: 2
    t.integer "DetailColumn6", limit: 2
    t.integer "DetailColumn7", limit: 2
    t.integer "DetailColumnS1", limit: 2
    t.integer "DetailColumnS2", limit: 2
    t.integer "DetailColumnS3", limit: 2
    t.integer "DetailColumnS4", limit: 2
    t.integer "DetailColumnS5", limit: 2
    t.integer "DetailColumnS6", limit: 2
    t.integer "DetailColumnS7", limit: 2
    t.boolean "PrintSpecs", default: false
    t.boolean "ItemPrintOut", default: false
    t.boolean "PaymentDetail", default: false
    t.boolean "PrintOperName", default: false
    t.boolean "ContDueDate", default: false
    t.boolean "ShowMods", default: false
    t.boolean "ShowSig", default: false
    t.boolean "PrintItemRate", default: false
    t.boolean "PrintDiscDetail", default: false
    t.boolean "PrintContComments", default: false
    t.boolean "ShowContractFooter", default: false
    t.boolean "DeliveryComments", default: false
    t.boolean "ShowAllItems", default: false
    t.boolean "DeliveryAtTop", default: false
    t.boolean "SetupTime", default: false
    t.boolean "PrintTotalsSection", default: false
    t.boolean "ShowRetailPricing", default: false
    t.boolean "PrintLegalEase", default: false
    t.integer "VersionFormat", limit: 2
    t.boolean "PrintItemPicture", default: false
    t.boolean "PrintDeliveryTruck", default: false
    t.boolean "PrintCCAuthorization", default: false
    t.boolean "PrintMarketingPage", default: false
    t.integer "Footer", limit: 2
    t.string "GroupBy", limit: 50
    t.string "SubGroup", limit: 50
    t.string "Font", limit: 50
    t.boolean "WebLinksHeader", default: false
    t.boolean "WebLinksItems", default: false
    t.boolean "DiscountedRates"
    t.boolean "PrintAfterContract"
    t.boolean "WebLinksPay"
    t.boolean "PaymentDetailSummary", default: false, null: false
    t.boolean "HideLogisticsOUT", default: false, null: false
    t.boolean "HideLogisticsIN", default: false, null: false
    t.index ["Number"], name: "WorkOrderFormat$Number", unique: true
  end

  create_table "ZipFile", primary_key: "ZIP", id: { type: :string, limit: 255 }, force: :cascade do |t|
    t.string "Zip_Hi", limit: 50
    t.string "City", limit: 255
    t.integer "CRMTerritoriesID"
  end

  create_table "ZipFileAustralia", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Zip", limit: 255
    t.string "Zip_Hi", limit: 50
    t.string "City", limit: 255
    t.integer "CRMTerritoriesID"
    t.index ["Zip"], name: "ZipFileAustralia_Zip"
  end

  create_table "ZipFileBoundaries", primary_key: "Id", id: :integer, force: :cascade do |t|
    t.string "Zip", limit: 255, null: false
    t.integer "Order", null: false
    t.float "Lat", null: false
    t.float "Long", null: false
    t.integer "PathId", null: false
    t.integer "OuterPathId"
  end

  create_table "ZipFileLocation", primary_key: "ZIP", id: { type: :string, limit: 255 }, force: :cascade do |t|
    t.string "County", limit: 255
    t.float "Latitude", null: false
    t.float "Longitude", null: false
  end

  create_table "ZipFileTaxJurisdiction", primary_key: "ZipFileTaxJurisdictionId", id: :integer, force: :cascade do |t|
    t.string "Zip", limit: 255
    t.integer "Low+4", limit: 2
    t.integer "High+4", limit: 2
    t.integer "TaxCode"
    t.string "Jurisdiction", limit: 255
    t.datetime "ActiveDate", precision: nil
    t.datetime "InActiveDate", precision: nil
    t.boolean "InActive", default: false
    t.integer "NewZipFileTaxJurisdictionId"
    t.index ["Jurisdiction"], name: "ZipFileTaxJurisdiction$Jurisdiction"
    t.index ["Zip"], name: "ZipFileTaxJurisdiction$Zip"
  end

  create_table "bkZipFileAustralia", id: false, force: :cascade do |t|
    t.string "Zip", limit: 255
    t.string "Zip_Hi", limit: 50
    t.string "City", limit: 255
  end

  create_table "tempLocks", primary_key: ["Lock1", "Lock2"], force: :cascade do |t|
    t.integer "Lock1", null: false
    t.integer "Lock2", null: false
    t.integer "Job"
    t.string "User", limit: 50
    t.datetime "DateStamp", precision: nil
    t.string "ProgramName", limit: 255
    t.index ["Job"], name: "tempLocks$Job"
    t.index ["Lock1"], name: "tempLocks$Lock1"
    t.index ["Lock2"], name: "tempLocks$Lock2"
  end

  create_table "wrkingContacts", id: false, force: :cascade do |t|
    t.float "counter"
    t.string "custnum", limit: 255
    t.string "type_cd", limit: 255
    t.string "gender", limit: 255
    t.string "first_name", limit: 255
    t.string "middle_initial", limit: 255
    t.string "last_name", limit: 255
    t.string "phone", limit: 255
    t.string "fax", limit: 255
    t.string "phone2", limit: 255
    t.string "notes", limit: 255
    t.string "dlnumber", limit: 255
    t.string "email_address", limit: 255
    t.string "position", limit: 255
    t.string "department", limit: 255
    t.boolean "type_correspondence", null: false
    t.boolean "type_credit_control", null: false
    t.boolean "type_invoicing", null: false
    t.boolean "type_sales", null: false
    t.boolean "type_sales_lead", null: false
    t.boolean "type_site", null: false
    t.string "web_username", limit: 255
    t.string "web_password", limit: 255
    t.string "guid", limit: 255
    t.string "guid_valid", limit: 255
    t.boolean "Mailshot", null: false
    t.float "AddressID"
    t.boolean "Inactive", null: false
    t.float "ActionCount"
    t.float "OpenActionCount"
    t.boolean "OpenActionBit", null: false
    t.boolean "NotesPresent", null: false
    t.string "SalesPerson", limit: 255
    t.string "newEmail", limit: 50
    t.string "newPhone", limit: 12
  end

  create_table "wrkingCustomerType", id: false, force: :cascade do |t|
    t.integer "oldtype"
    t.integer "newType"
    t.string "Description", limit: 50
  end

  create_table "wrkingCustomerType2", primary_key: "newtype", id: :integer, force: :cascade do |t|
    t.string "Description", limit: 50
  end

  create_table "wrkingCustomers", primary_key: "newCnum", id: :integer, force: :cascade do |t|
    t.string "custnum", limit: 255
    t.string "type", limit: 255
    t.string "custname", limit: 255
    t.string "addr1", limit: 255
    t.string "addr2", limit: 255
    t.string "city", limit: 255
    t.string "state", limit: 255
    t.string "zip", limit: 255
    t.string "contact", limit: 255
    t.string "phonenum", limit: 255
    t.float "discount"
    t.string "discmethod", limit: 255
    t.string "taxcode", limit: 255
    t.string "faxnum", limit: 255
    t.boolean "printtax", null: false
    t.text "notes"
    t.string "notoll_number", limit: 255
    t.string "taxid", limit: 255
    t.string "department", limit: 255
    t.string "terms", limit: 255
    t.text "dtoperations"
    t.string "invcoperations", limit: 255
    t.string "pricinglevel", limit: 255
    t.string "sales_person", limit: 255
    t.string "grid_id", limit: 255
    t.string "blanket_order", limit: 255
    t.string "credit_code", limit: 255
    t.string "master", limit: 255
    t.boolean "inactive", null: false
    t.string "print_style", limit: 255
    t.float "poreq"
    t.string "scustname", limit: 255
    t.string "saddr1", limit: 255
    t.string "saddr2", limit: 255
    t.string "scity", limit: 255
    t.string "sstate", limit: 255
    t.string "szip", limit: 255
    t.string "sphonenum", limit: 255
    t.string "sfaxnum", limit: 255
    t.string "expense_gl", limit: 255
    t.string "zone", limit: 255
    t.boolean "deposit", null: false
    t.string "ourvendaccountnum", limit: 255
    t.string "org_id", limit: 255
    t.string "org_id2", limit: 255
    t.boolean "internalcust", null: false
    t.boolean "chargetaxoncost", null: false
    t.money "credit_limit", precision: 19, scale: 4
    t.string "cur_app_date", limit: 255
    t.boolean "req_1099", null: false
    t.string "web_site", limit: 255
    t.string "ar_ap_gl", limit: 255
    t.string "country_id", limit: 255
    t.string "scountry_id", limit: 255
    t.datetime "lastamended", precision: nil
    t.string "email", limit: 255
    t.string "financial_ref", limit: 255
    t.float "business_class_id"
    t.float "source_of_contact_id"
    t.float "cust_type_id"
    t.boolean "is_this_master", null: false
    t.float "lock_spid"
    t.string "lock_app", limit: 255
    t.string "rowversion", limit: 255
    t.datetime "lock_login", precision: nil
    t.float "currency_id"
    t.float "dw1_percent"
    t.float "dw2_percent"
    t.boolean "inv_destination", null: false
    t.float "invoice_run_code_id"
    t.boolean "allow_direct_debit", null: false
    t.float "sales_discount"
    t.string "sort_code", limit: 255
    t.string "origin", limit: 255
    t.datetime "date_created", precision: nil
    t.boolean "fin_charge_reqd", null: false
    t.boolean "fromprospect", null: false
    t.float "consolidation"
    t.money "balance", precision: 19, scale: 4
    t.float "transport_distance_id"
    t.float "transport_grid_id"
    t.float "free_day_calendar_id"
    t.boolean "icp_company", null: false
    t.float "ID"
    t.string "local_tax_code", limit: 255
    t.float "transmission_method"
    t.boolean "pro_forma", null: false
    t.boolean "prompt_initial_payment", null: false
    t.string "company_reg_no", limit: 255
    t.string "bank_name", limit: 255
    t.string "bank_sort_code", limit: 255
    t.string "bank_acc_no", limit: 255
    t.string "bank_acc_ref1", limit: 255
    t.string "bank_acc_ref2", limit: 255
    t.string "bank_acc_holder", limit: 255
    t.float "merchantid_column"
    t.boolean "closed", null: false
    t.float "edi_method"
    t.boolean "uninvoiced_debt", null: false
    t.boolean "continuous_damagewaiver", null: false
    t.string "depot", limit: 255
    t.string "legal_name", limit: 255
    t.boolean "CWPSendOrderToSiteContact", null: false
    t.boolean "CWPSendOrderToLoggedInContact", null: false
    t.string "CWPSendOrderToContact1", limit: 255
    t.string "CWPSendOrderToContact2", limit: 255
    t.float "CWPSendOrderAttachmentType"
    t.string "CWPOnlineOrderingOppReportID", limit: 255
    t.string "OverrideTaxCode", limit: 255
    t.string "HoldingAccount", limit: 255
    t.string "PONoFormat", limit: 255
    t.string "ConvertedDate", limit: 255
    t.string "ConvertedBy", limit: 255
    t.string "ProspectNumber", limit: 255
    t.float "ActionCount"
    t.float "OpenActionCount"
    t.boolean "OpenActionBit", null: false
    t.boolean "NotesPresent", null: false
    t.float "OfficeAddressID"
    t.boolean "Individual", null: false
    t.string "newPhone", limit: 12
    t.string "newMobile", limit: 12
    t.integer "newDiscount"
    t.string "newFax", limit: 12
    t.string "newEmail", limit: 50
    t.string "newZip", limit: 50
    t.integer "newType"
  end

  create_table "wrkingHeaders", id: false, force: :cascade do |t|
    t.string "item", limit: 255
    t.string "descr", limit: 255
    t.money "daymin", precision: 19, scale: 4
    t.float "days_min"
    t.money "weekchg", precision: 19, scale: 4
    t.money "monthchg", precision: 19, scale: 4
    t.string "cat", limit: 255
    t.string "sub", limit: 255
    t.string "serial", limit: 255
    t.string "length", limit: 255
    t.string "mfg", limit: 255
    t.string "office", limit: 255
    t.string "associtems", limit: 255
    t.string "remarks", limit: 255
    t.string "status", limit: 255
    t.float "totalinvent"
    t.float "totalonhand"
    t.float "totalout"
    t.boolean "taxable", null: false
    t.boolean "discountable", null: false
    t.float "max_discount"
    t.boolean "serialized", null: false
    t.boolean "commissionable", null: false
    t.string "istatus", limit: 255
    t.boolean "groupable", null: false
    t.string "itype", limit: 255
    t.money "cost", precision: 19, scale: 4
    t.datetime "purchase_date", precision: nil
    t.datetime "last_return_date", precision: nil
    t.string "auth_office", limit: 255
    t.string "um", limit: 255
    t.money "hourlychg", precision: 19, scale: 4
    t.float "meter"
    t.string "standby", limit: 255
    t.string "standbyper", limit: 255
    t.string "reorderindex", limit: 255
    t.float "reordertype"
    t.string "exchangecode", limit: 255
    t.money "replacecost", precision: 19, scale: 4
    t.string "reorder_pn", limit: 255
    t.string "reorder_vend", limit: 255
    t.money "reorder_price", precision: 19, scale: 4
    t.string "delivery", limit: 255
    t.float "reorder_qty"
    t.float "min_qty"
    t.float "max_qty"
    t.string "reorder_um", limit: 255
    t.money "stdcost", precision: 19, scale: 4
    t.float "weight_amt"
    t.string "weight_um", limit: 255
    t.money "secure_dep", precision: 19, scale: 4
    t.string "owner_id", limit: 255
    t.boolean "inactive", null: false
    t.money "repair_cap", precision: 19, scale: 4
    t.money "ins_value", precision: 19, scale: 4
    t.string "def_bin_loc", limit: 255
    t.string "taxcode", limit: 255
    t.float "cat_id"
    t.float "sub_id"
    t.boolean "sale_or_return", null: false
    t.string "barcode_rfid", limit: 255
    t.boolean "non_stock", null: false
    t.float "model_id"
    t.boolean "service", null: false
    t.float "warranty_period"
    t.float "warranty_period_freq_id"
    t.float "sale_type"
    t.boolean "rehire", null: false
    t.float "equivalent_id"
    t.string "generated_by_poline", limit: 255
    t.datetime "meter_date", precision: nil
    t.float "activity_id"
    t.string "owner_type", limit: 255
    t.string "freetyped_owner", limit: 255
    t.float "defleet_months"
    t.float "defleet_days"
    t.float "defleet_utilisation"
    t.string "defleet_expected_date", limit: 255
    t.string "defleet_actual_date", limit: 255
    t.boolean "defleet_vat_qualify", null: false
    t.boolean "defleet_marked", null: false
    t.boolean "vehicle", null: false
    t.string "regnum", limit: 255
    t.float "ID"
    t.float "financing_status"
    t.string "financing_end_date", limit: 255
    t.float "itemised_status"
    t.string "WorkTypeName", limit: 255
    t.float "origin"
    t.boolean "is_asset", null: false
    t.boolean "prevent_asset_load", null: false
    t.float "meteroffset"
    t.datetime "meterresetdate", precision: nil
    t.boolean "ReturnWithMainItem", null: false
    t.boolean "viewfromweb", null: false
    t.string "search_owner", limit: 255
    t.float "search_owner_type"
    t.string "item_or_regnum", limit: 255
    t.datetime "LastStockAdjustmentDate", precision: nil
    t.boolean "ExcludeFromAllocation", null: false
    t.boolean "SerialNumberTracking", null: false
    t.string "custname", limit: 255
    t.boolean "EquipmentTrackingData", null: false
    t.boolean "TrackingUpdatesMeter", null: false
    t.boolean "NotesPresent", null: false
    t.string "ponum", limit: 255
    t.float "ItemisedBooked"
    t.string "newsub", limit: 50
    t.bigint "subfield"
    t.integer "newCat"
    t.string "newType", limit: 1
    t.string "newHeader", limit: 16
    t.string "newKey", limit: 16
    t.string "newHStore", limit: 3
    t.string "newCStore", limit: 3
    t.integer "NewSerialized"
  end

  create_table "wrkingHeaders2", id: false, force: :cascade do |t|
    t.string "item", limit: 255
    t.string "descr", limit: 255
    t.money "daymin", precision: 19, scale: 4
    t.float "days_min"
    t.money "weekchg", precision: 19, scale: 4
    t.money "monthchg", precision: 19, scale: 4
    t.string "cat", limit: 255
    t.string "sub", limit: 255
    t.string "serial", limit: 255
    t.string "length", limit: 255
    t.string "mfg", limit: 255
    t.string "office", limit: 255
    t.string "associtems", limit: 255
    t.string "remarks", limit: 255
    t.string "status", limit: 255
    t.float "totalinvent"
    t.float "totalonhand"
    t.float "totalout"
    t.boolean "taxable", null: false
    t.boolean "discountable", null: false
    t.float "max_discount"
    t.boolean "serialized", null: false
    t.boolean "commissionable", null: false
    t.string "istatus", limit: 255
    t.boolean "groupable", null: false
    t.string "itype", limit: 255
    t.money "cost", precision: 19, scale: 4
    t.datetime "purchase_date", precision: nil
    t.datetime "last_return_date", precision: nil
    t.string "auth_office", limit: 255
    t.string "um", limit: 255
    t.money "hourlychg", precision: 19, scale: 4
    t.float "meter"
    t.string "standby", limit: 255
    t.string "standbyper", limit: 255
    t.string "reorderindex", limit: 255
    t.float "reordertype"
    t.string "exchangecode", limit: 255
    t.money "replacecost", precision: 19, scale: 4
    t.string "reorder_pn", limit: 255
    t.string "reorder_vend", limit: 255
    t.money "reorder_price", precision: 19, scale: 4
    t.string "delivery", limit: 255
    t.float "reorder_qty"
    t.float "min_qty"
    t.float "max_qty"
    t.string "reorder_um", limit: 255
    t.money "stdcost", precision: 19, scale: 4
    t.float "weight_amt"
    t.string "weight_um", limit: 255
    t.money "secure_dep", precision: 19, scale: 4
    t.string "owner_id", limit: 255
    t.boolean "inactive", null: false
    t.money "repair_cap", precision: 19, scale: 4
    t.money "ins_value", precision: 19, scale: 4
    t.string "def_bin_loc", limit: 255
    t.string "taxcode", limit: 255
    t.float "cat_id"
    t.float "sub_id"
    t.boolean "sale_or_return", null: false
    t.string "barcode_rfid", limit: 255
    t.boolean "non_stock", null: false
    t.float "model_id"
    t.boolean "service", null: false
    t.float "warranty_period"
    t.float "warranty_period_freq_id"
    t.float "sale_type"
    t.boolean "rehire", null: false
    t.float "equivalent_id"
    t.string "generated_by_poline", limit: 255
    t.datetime "meter_date", precision: nil
    t.float "activity_id"
    t.string "owner_type", limit: 255
    t.string "freetyped_owner", limit: 255
    t.float "defleet_months"
    t.float "defleet_days"
    t.float "defleet_utilisation"
    t.string "defleet_expected_date", limit: 255
    t.string "defleet_actual_date", limit: 255
    t.boolean "defleet_vat_qualify", null: false
    t.boolean "defleet_marked", null: false
    t.boolean "vehicle", null: false
    t.string "regnum", limit: 255
    t.float "ID"
    t.float "financing_status"
    t.string "financing_end_date", limit: 255
    t.float "itemised_status"
    t.string "WorkTypeName", limit: 255
    t.float "origin"
    t.boolean "is_asset", null: false
    t.boolean "prevent_asset_load", null: false
    t.float "meteroffset"
    t.datetime "meterresetdate", precision: nil
    t.boolean "ReturnWithMainItem", null: false
    t.boolean "viewfromweb", null: false
    t.string "search_owner", limit: 255
    t.float "search_owner_type"
    t.string "item_or_regnum", limit: 255
    t.datetime "LastStockAdjustmentDate", precision: nil
    t.boolean "ExcludeFromAllocation", null: false
    t.boolean "SerialNumberTracking", null: false
    t.string "custname", limit: 255
    t.boolean "EquipmentTrackingData", null: false
    t.boolean "TrackingUpdatesMeter", null: false
    t.boolean "NotesPresent", null: false
    t.string "ponum", limit: 255
    t.float "ItemisedBooked"
    t.string "newsub", limit: 50
    t.bigint "subfield"
    t.integer "newCat"
    t.string "newType", limit: 1
    t.string "newHeader", limit: 16
    t.string "newKey", limit: 16
    t.string "newHStore", limit: 3
    t.string "newCStore", limit: 3
    t.integer "NewSerialized"
  end

  create_table "wrkingInventory", primary_key: "newNum", id: :integer, force: :cascade do |t|
    t.string "item", limit: 255
    t.string "descr", limit: 255
    t.money "daymin", precision: 19, scale: 4
    t.float "days_min"
    t.money "weekchg", precision: 19, scale: 4
    t.money "monthchg", precision: 19, scale: 4
    t.string "cat", limit: 255
    t.string "sub", limit: 255
    t.string "serial", limit: 255
    t.string "length", limit: 255
    t.string "mfg", limit: 255
    t.string "office", limit: 255
    t.string "associtems", limit: 255
    t.string "remarks", limit: 255
    t.string "status", limit: 255
    t.float "totalinvent"
    t.float "totalonhand"
    t.float "totalout"
    t.boolean "taxable", null: false
    t.boolean "discountable", null: false
    t.float "max_discount"
    t.boolean "serialized", null: false
    t.boolean "commissionable", null: false
    t.string "istatus", limit: 255
    t.boolean "groupable", null: false
    t.string "itype", limit: 255
    t.money "cost", precision: 19, scale: 4
    t.datetime "purchase_date", precision: nil
    t.datetime "last_return_date", precision: nil
    t.string "auth_office", limit: 255
    t.string "um", limit: 255
    t.money "hourlychg", precision: 19, scale: 4
    t.float "meter"
    t.string "standby", limit: 255
    t.string "standbyper", limit: 255
    t.string "reorderindex", limit: 255
    t.float "reordertype"
    t.string "exchangecode", limit: 255
    t.money "replacecost", precision: 19, scale: 4
    t.string "reorder_pn", limit: 255
    t.string "reorder_vend", limit: 255
    t.money "reorder_price", precision: 19, scale: 4
    t.string "delivery", limit: 255
    t.float "reorder_qty"
    t.float "min_qty"
    t.float "max_qty"
    t.string "reorder_um", limit: 255
    t.money "stdcost", precision: 19, scale: 4
    t.float "weight_amt"
    t.string "weight_um", limit: 255
    t.money "secure_dep", precision: 19, scale: 4
    t.string "owner_id", limit: 255
    t.boolean "inactive", null: false
    t.money "repair_cap", precision: 19, scale: 4
    t.money "ins_value", precision: 19, scale: 4
    t.string "def_bin_loc", limit: 255
    t.string "taxcode", limit: 255
    t.float "cat_id"
    t.float "sub_id"
    t.boolean "sale_or_return", null: false
    t.string "barcode_rfid", limit: 255
    t.boolean "non_stock", null: false
    t.float "model_id"
    t.boolean "service", null: false
    t.float "warranty_period"
    t.float "warranty_period_freq_id"
    t.float "sale_type"
    t.boolean "rehire", null: false
    t.float "equivalent_id"
    t.string "generated_by_poline", limit: 255
    t.datetime "meter_date", precision: nil
    t.float "activity_id"
    t.string "owner_type", limit: 255
    t.string "freetyped_owner", limit: 255
    t.float "defleet_months"
    t.float "defleet_days"
    t.float "defleet_utilisation"
    t.string "defleet_expected_date", limit: 255
    t.string "defleet_actual_date", limit: 255
    t.boolean "defleet_vat_qualify", null: false
    t.boolean "defleet_marked", null: false
    t.boolean "vehicle", null: false
    t.string "regnum", limit: 255
    t.float "ID"
    t.float "financing_status"
    t.string "financing_end_date", limit: 255
    t.float "itemised_status"
    t.string "WorkTypeName", limit: 255
    t.float "origin"
    t.boolean "is_asset", null: false
    t.boolean "prevent_asset_load", null: false
    t.float "meteroffset"
    t.datetime "meterresetdate", precision: nil
    t.boolean "ReturnWithMainItem", null: false
    t.boolean "viewfromweb", null: false
    t.string "search_owner", limit: 255
    t.float "search_owner_type"
    t.string "item_or_regnum", limit: 255
    t.datetime "LastStockAdjustmentDate", precision: nil
    t.boolean "ExcludeFromAllocation", null: false
    t.boolean "SerialNumberTracking", null: false
    t.string "custname", limit: 255
    t.boolean "EquipmentTrackingData", null: false
    t.boolean "TrackingUpdatesMeter", null: false
    t.boolean "NotesPresent", null: false
    t.string "ponum", limit: 255
    t.float "ItemisedBooked"
    t.string "newsub", limit: 50
    t.bigint "subfield"
    t.integer "newCat"
    t.string "newType", limit: 1
    t.string "newHeader", limit: 16
    t.string "newKey", limit: 16
    t.string "newHStore", limit: 3
    t.string "newCStore", limit: 3
    t.integer "NewSerialized"
  end

  create_table "wrkingKits", id: false, force: :cascade do |t|
    t.string "item", limit: 255
    t.float "ctr"
    t.string "charge_item", limit: 255
    t.string "descr", limit: 255
    t.float "apply"
    t.money "min_chg", precision: 19, scale: 4
    t.float "days_min"
    t.money "weekchg", precision: 19, scale: 4
    t.money "monthchg", precision: 19, scale: 4
    t.string "itype", limit: 255
    t.string "um", limit: 255
    t.boolean "taxable", null: false
    t.boolean "discountable", null: false
    t.string "applies_to_itype", limit: 255
    t.float "quant"
    t.float "line_type"
    t.boolean "per_item", null: false
    t.boolean "grid_prices", null: false
    t.money "meter_rate", precision: 19, scale: 4
    t.boolean "eurohire", null: false
    t.float "id"
    t.float "default_selection"
    t.boolean "Locked", null: false
    t.integer "newNum"
    t.string "newSubKey", limit: 16
  end

  create_table "wrkingKitsAuto", id: false, force: :cascade do |t|
    t.string "item", limit: 255
    t.float "ctr"
    t.string "charge_item", limit: 255
    t.string "descr", limit: 255
    t.float "apply"
    t.money "min_chg", precision: 19, scale: 4
    t.float "days_min"
    t.money "weekchg", precision: 19, scale: 4
    t.money "monthchg", precision: 19, scale: 4
    t.string "itype", limit: 255
    t.string "um", limit: 255
    t.boolean "taxable", null: false
    t.boolean "discountable", null: false
    t.string "applies_to_itype", limit: 255
    t.float "quant"
    t.float "line_type"
    t.boolean "per_item", null: false
    t.boolean "grid_prices", null: false
    t.money "meter_rate", precision: 19, scale: 4
    t.boolean "eurohire", null: false
    t.float "id"
    t.float "default_selection"
    t.boolean "Locked", null: false
    t.integer "newNum"
    t.string "newsubkey", limit: 16
  end

  create_table "wrkingMaintenance", id: false, force: :cascade do |t|
    t.float "id"
    t.float "form"
    t.string "code", limit: 255
    t.string "description", limit: 255
    t.float "calendar_freq_id"
    t.float "rental_interval"
    t.float "meter_interval"
    t.string "last_maint", limit: 255
    t.float "interval_base"
    t.datetime "next_calendar_date", precision: nil
    t.float "rental_days_left"
    t.float "next_meter"
    t.float "supersedes_id_1"
    t.string "supersedes_id_2", limit: 255
    t.string "supersedes_id_3", limit: 255
    t.float "generate_maint"
    t.float "maintenance_type"
    t.float "active"
    t.float "spec_id"
    t.boolean "out_of_service", null: false
    t.datetime "last_expiry_date", precision: nil
    t.string "last_certificate", limit: 255
    t.float "meteroffset"
    t.integer "newDescid"
  end

  create_table "yard_return_form_entries", primary_key: ["Id", "ItemNo"], force: :cascade do |t|
    t.uuid "Id", null: false
    t.integer "ItemNo", null: false
    t.integer "RowId"
    t.integer "FormVersion"
    t.decimal "Latitude", precision: 28, scale: 6
    t.decimal "Longitude", precision: 28, scale: 6
    t.datetime "StartTime", precision: nil
    t.datetime "ReceivedTime", precision: nil
    t.datetime "CompleteTime", precision: nil
    t.text "UserFirstName"
    t.text "UserLastName"
    t.text "usercompleted"
    t.text "contractnumber2"
    t.text "customername2"
    t.text "item2zz1"
    t.text "contnumhidden"
    t.text "qtyhidden"
    t.text "itemnumhidden"
    t.text "itemnamehidden"
    t.text "untitled52"
    t.text "fuelhidden"
    t.text "fuel"
    t.text "hourshidden"
    t.text "hours"
    t.text "step3"
    t.text "branch"
    t.text "barcodescan"
    t.text "plantnumberentry"
    t.text "userselection"
    t.text "contractnumber"
    t.text "CN"
    t.text "plantnumber"
    t.text "customername"
    t.text "plantnumbervalidation"
    t.datetime "formdate", precision: nil
    t.text "item1zz1"
    t.text "brcontracts2"
    t.text "plantnumber1"
    t.text "plantnumber2"
    t.text "itemname1"
    t.text "itemname2"
    t.text "itemqty1"
    t.text "itemqtyreturn"
    t.text "itemqtyreturn2"
    t.text "itemcontractnum1"
    t.text "itemcontractnum2"
    t.text "itemlinenum1"
    t.text "fuelyesno1"
    t.text "fuelreading1"
    t.text "fuelamount1"
    t.text "fuelamount2"
    t.text "houryesno1"
    t.text "hourmeter1"
    t.text "hourmeter2"
    t.text "damage1"
    t.text "damage2"
    t.text "returned1"
    t.text "accessories"
    t.text "step"
    t.text "step2"
    t.integer "_identity", null: false
    t.ss_timestamp "_rowversion", null: false
    t.datetime "_lastupdated", precision: nil, null: false
    t.boolean "_deleted", null: false
    t.text "branch1"
    t.text "custname"
    t.text "contractnumber1"
    t.text "userselection1"
    t.text "CN1"
    t.text "customername1"
    t.text "contractnum"
    t.text "contractvalidation"
    t.datetime "formdate1", precision: nil
    t.text "item11zz1"
    t.text "brcontracts21"
    t.text "plantnumber11"
    t.text "plantnumber21"
    t.text "itemname11"
    t.text "itemname21"
    t.text "itemqty11"
    t.text "itemqtyreturn1"
    t.text "itemqtyreturn21"
    t.text "itemcontractnum11"
    t.text "itemcontractnum21"
    t.text "itemlinenum11"
    t.text "damage11"
    t.text "damage21"
    t.text "returned11"
    t.text "accessories1"
    t.text "step21"
    t.text "accdetails2"
    t.text "damagedetails2"
    t.text "addphoto1"
    t.text "damagephoto11"
    t.text "damagephoto22"
    t.text "damagephoto33"
    t.text "damagephoto44"
    t.text "damagephoto55"
    t.text "accdetails"
    t.text "damagedetails"
    t.text "addphoto"
    t.text "damagephoto1"
    t.text "damagephoto2"
    t.text "damagephoto3"
    t.text "damagephoto4"
    t.text "damagephoto5"
    t.text "itemsmissing"
    t.text "damagerecorded"
    t.text "untitled102"
    t.text "untitled101"
    t.text "untitled100"
    t.text "untitled99"
    t.text "untitled98"
    t.text "formdatecompleted"
    t.text "now"
    t.text "now1"
    t.datetime "datecompleted", precision: nil
    t.text "formulacount"
    t.text "formulasum"
    t.text "custnametemp"
    t.text "returned"
    t.text "untitled108"
    t.text "custnametemp1"
    t.text "returned2"
    t.text "untitled113"
    t.text "diamondmm"
    t.text "jerrycan"
    t.text "charged"
    t.text "firstitem"
    t.text "fuelreadingcount"
    t.text "first"
    t.text "checkdevice"
    t.text "returnnotes"
    t.text "returnnotes2"
    t.text "branchcompleted"
    t.string "yellowtape", limit: 150
    t.text "initialentry"
    t.text "initials"
    t.string "yellowtape_f33", limit: 150
    t.string "untitled121", limit: 150
    t.string "accessoriesreturned", limit: 150
    t.string "contractnumaccess", limit: 500
    t.string "branch2", limit: 500
    t.string "formdate2", limit: 500
    t.string "userselection2", limit: 500
    t.string "damagephoto12", limit: 500
  end

  create_table "zContacts", id: false, force: :cascade do |t|
    t.float "counter"
    t.string "custnum", limit: 255
    t.string "type_cd", limit: 255
    t.string "gender", limit: 255
    t.string "first_name", limit: 255
    t.string "middle_initial", limit: 255
    t.string "last_name", limit: 255
    t.string "phone", limit: 255
    t.string "fax", limit: 255
    t.string "phone2", limit: 255
    t.string "notes", limit: 255
    t.string "dlnumber", limit: 255
    t.string "email_address", limit: 255
    t.string "position", limit: 255
    t.string "department", limit: 255
    t.boolean "type_correspondence", null: false
    t.boolean "type_credit_control", null: false
    t.boolean "type_invoicing", null: false
    t.boolean "type_sales", null: false
    t.boolean "type_sales_lead", null: false
    t.boolean "type_site", null: false
    t.string "web_username", limit: 255
    t.string "web_password", limit: 255
    t.string "guid", limit: 255
    t.string "guid_valid", limit: 255
    t.boolean "Mailshot", null: false
    t.float "AddressID"
    t.boolean "Inactive", null: false
    t.float "ActionCount"
    t.float "OpenActionCount"
    t.boolean "OpenActionBit", null: false
    t.boolean "NotesPresent", null: false
    t.string "SalesPerson", limit: 255
  end

  create_table "zCustomers", id: false, force: :cascade do |t|
    t.string "custnum", limit: 255
    t.string "type", limit: 255
    t.string "custname", limit: 255
    t.string "addr1", limit: 255
    t.string "addr2", limit: 255
    t.string "city", limit: 255
    t.string "state", limit: 255
    t.string "zip", limit: 255
    t.string "contact", limit: 255
    t.string "phonenum", limit: 255
    t.float "discount"
    t.string "discmethod", limit: 255
    t.string "taxcode", limit: 255
    t.string "faxnum", limit: 255
    t.boolean "printtax", null: false
    t.text "notes"
    t.string "notoll_number", limit: 255
    t.string "taxid", limit: 255
    t.string "department", limit: 255
    t.string "terms", limit: 255
    t.text "dtoperations"
    t.string "invcoperations", limit: 255
    t.string "pricinglevel", limit: 255
    t.string "sales_person", limit: 255
    t.string "grid_id", limit: 255
    t.string "blanket_order", limit: 255
    t.string "credit_code", limit: 255
    t.string "master", limit: 255
    t.boolean "inactive", null: false
    t.string "print_style", limit: 255
    t.float "poreq"
    t.string "scustname", limit: 255
    t.string "saddr1", limit: 255
    t.string "saddr2", limit: 255
    t.string "scity", limit: 255
    t.string "sstate", limit: 255
    t.string "szip", limit: 255
    t.string "sphonenum", limit: 255
    t.string "sfaxnum", limit: 255
    t.string "expense_gl", limit: 255
    t.string "zone", limit: 255
    t.boolean "deposit", null: false
    t.string "ourvendaccountnum", limit: 255
    t.string "org_id", limit: 255
    t.string "org_id2", limit: 255
    t.boolean "internalcust", null: false
    t.boolean "chargetaxoncost", null: false
    t.money "credit_limit", precision: 19, scale: 4
    t.string "cur_app_date", limit: 255
    t.boolean "req_1099", null: false
    t.string "web_site", limit: 255
    t.string "ar_ap_gl", limit: 255
    t.string "country_id", limit: 255
    t.string "scountry_id", limit: 255
    t.datetime "lastamended", precision: nil
    t.string "email", limit: 255
    t.string "financial_ref", limit: 255
    t.float "business_class_id"
    t.float "source_of_contact_id"
    t.float "cust_type_id"
    t.boolean "is_this_master", null: false
    t.float "lock_spid"
    t.string "lock_app", limit: 255
    t.string "rowversion", limit: 255
    t.datetime "lock_login", precision: nil
    t.float "currency_id"
    t.float "dw1_percent"
    t.float "dw2_percent"
    t.boolean "inv_destination", null: false
    t.float "invoice_run_code_id"
    t.boolean "allow_direct_debit", null: false
    t.float "sales_discount"
    t.string "sort_code", limit: 255
    t.string "origin", limit: 255
    t.datetime "date_created", precision: nil
    t.boolean "fin_charge_reqd", null: false
    t.boolean "fromprospect", null: false
    t.float "consolidation"
    t.money "balance", precision: 19, scale: 4
    t.float "transport_distance_id"
    t.float "transport_grid_id"
    t.float "free_day_calendar_id"
    t.boolean "icp_company", null: false
    t.float "ID"
    t.string "local_tax_code", limit: 255
    t.float "transmission_method"
    t.boolean "pro_forma", null: false
    t.boolean "prompt_initial_payment", null: false
    t.string "company_reg_no", limit: 255
    t.string "bank_name", limit: 255
    t.string "bank_sort_code", limit: 255
    t.string "bank_acc_no", limit: 255
    t.string "bank_acc_ref1", limit: 255
    t.string "bank_acc_ref2", limit: 255
    t.string "bank_acc_holder", limit: 255
    t.float "merchantid_column"
    t.boolean "closed", null: false
    t.float "edi_method"
    t.boolean "uninvoiced_debt", null: false
    t.boolean "continuous_damagewaiver", null: false
    t.string "depot", limit: 255
    t.string "legal_name", limit: 255
    t.boolean "CWPSendOrderToSiteContact", null: false
    t.boolean "CWPSendOrderToLoggedInContact", null: false
    t.string "CWPSendOrderToContact1", limit: 255
    t.string "CWPSendOrderToContact2", limit: 255
    t.float "CWPSendOrderAttachmentType"
    t.string "CWPOnlineOrderingOppReportID", limit: 255
    t.string "OverrideTaxCode", limit: 255
    t.string "HoldingAccount", limit: 255
    t.string "PONoFormat", limit: 255
    t.string "ConvertedDate", limit: 255
    t.string "ConvertedBy", limit: 255
    t.string "ProspectNumber", limit: 255
    t.float "ActionCount"
    t.float "OpenActionCount"
    t.boolean "OpenActionBit", null: false
    t.boolean "NotesPresent", null: false
    t.float "OfficeAddressID"
    t.boolean "Individual", null: false
  end

  create_table "zItems", id: false, force: :cascade do |t|
    t.string "item", limit: 255
    t.string "descr", limit: 255
    t.money "daymin", precision: 19, scale: 4
    t.float "days_min"
    t.money "weekchg", precision: 19, scale: 4
    t.money "monthchg", precision: 19, scale: 4
    t.string "cat", limit: 255
    t.string "sub", limit: 255
    t.string "serial", limit: 255
    t.string "length", limit: 255
    t.string "mfg", limit: 255
    t.string "office", limit: 255
    t.string "associtems", limit: 255
    t.string "remarks", limit: 255
    t.string "status", limit: 255
    t.float "totalinvent"
    t.float "totalonhand"
    t.float "totalout"
    t.boolean "taxable", null: false
    t.boolean "discountable", null: false
    t.float "max_discount"
    t.boolean "serialized", null: false
    t.boolean "commissionable", null: false
    t.string "istatus", limit: 255
    t.boolean "groupable", null: false
    t.string "itype", limit: 255
    t.money "cost", precision: 19, scale: 4
    t.datetime "purchase_date", precision: nil
    t.datetime "last_return_date", precision: nil
    t.string "auth_office", limit: 255
    t.string "um", limit: 255
    t.money "hourlychg", precision: 19, scale: 4
    t.float "meter"
    t.string "standby", limit: 255
    t.string "standbyper", limit: 255
    t.string "reorderindex", limit: 255
    t.float "reordertype"
    t.string "exchangecode", limit: 255
    t.money "replacecost", precision: 19, scale: 4
    t.string "reorder_pn", limit: 255
    t.string "reorder_vend", limit: 255
    t.money "reorder_price", precision: 19, scale: 4
    t.string "delivery", limit: 255
    t.float "reorder_qty"
    t.float "min_qty"
    t.float "max_qty"
    t.string "reorder_um", limit: 255
    t.money "stdcost", precision: 19, scale: 4
    t.float "weight_amt"
    t.string "weight_um", limit: 255
    t.money "secure_dep", precision: 19, scale: 4
    t.string "owner_id", limit: 255
    t.boolean "inactive", null: false
    t.money "repair_cap", precision: 19, scale: 4
    t.money "ins_value", precision: 19, scale: 4
    t.string "def_bin_loc", limit: 255
    t.string "taxcode", limit: 255
    t.float "cat_id"
    t.float "sub_id"
    t.boolean "sale_or_return", null: false
    t.string "barcode_rfid", limit: 255
    t.boolean "non_stock", null: false
    t.float "model_id"
    t.boolean "service", null: false
    t.float "warranty_period"
    t.float "warranty_period_freq_id"
    t.float "sale_type"
    t.boolean "rehire", null: false
    t.float "equivalent_id"
    t.string "generated_by_poline", limit: 255
    t.datetime "meter_date", precision: nil
    t.float "activity_id"
    t.string "owner_type", limit: 255
    t.string "freetyped_owner", limit: 255
    t.float "defleet_months"
    t.float "defleet_days"
    t.float "defleet_utilisation"
    t.string "defleet_expected_date", limit: 255
    t.string "defleet_actual_date", limit: 255
    t.boolean "defleet_vat_qualify", null: false
    t.boolean "defleet_marked", null: false
    t.boolean "vehicle", null: false
    t.string "regnum", limit: 255
    t.float "ID"
    t.float "financing_status"
    t.string "financing_end_date", limit: 255
    t.float "itemised_status"
    t.string "WorkTypeName", limit: 255
    t.float "origin"
    t.boolean "is_asset", null: false
    t.boolean "prevent_asset_load", null: false
    t.float "meteroffset"
    t.datetime "meterresetdate", precision: nil
    t.boolean "ReturnWithMainItem", null: false
    t.boolean "viewfromweb", null: false
    t.string "search_owner", limit: 255
    t.float "search_owner_type"
    t.string "item_or_regnum", limit: 255
    t.datetime "LastStockAdjustmentDate", precision: nil
    t.boolean "ExcludeFromAllocation", null: false
    t.boolean "SerialNumberTracking", null: false
    t.string "custname", limit: 255
    t.boolean "EquipmentTrackingData", null: false
    t.boolean "TrackingUpdatesMeter", null: false
    t.boolean "NotesPresent", null: false
    t.string "ponum", limit: 255
    t.float "ItemisedBooked"
    t.string "newsub", limit: 50
  end

  create_table "zStdPricing", id: false, force: :cascade do |t|
    t.string "IType", limit: 255
    t.string "Lower Day", limit: 255
    t.string "Upper Day", limit: 255
    t.string "Unit###", limit: 255
    t.string "Subgroup", limit: 255
    t.string "Item###", limit: 255
    t.string "Discount", limit: 255
    t.float "Daily"
    t.float "Weekly"
    t.float "Monthly"
    t.string "Meter Rate", limit: 255
    t.float "Meter Allowance"
  end

  create_table "zWorksorderHeader", id: false, force: :cascade do |t|
    t.string "worknumber", limit: 255
    t.string "itemcode", limit: 255
    t.string "descr", limit: 255
    t.text "task_descr"
    t.float "qty"
    t.boolean "itemised", null: false
    t.string "serialnum", limit: 255
    t.string "manufacturer", limit: 255
    t.float "model_id"
    t.string "depot", limit: 255
    t.datetime "date_created", precision: nil
    t.datetime "date_in", precision: nil
    t.datetime "date_approved", precision: nil
    t.string "parts_order_date", limit: 255
    t.datetime "est_complete_date", precision: nil
    t.datetime "actual_complete_date", precision: nil
    t.datetime "stock_available_date", precision: nil
    t.money "replacement_cost", precision: 19, scale: 4
    t.money "est_parts_cost", precision: 19, scale: 4
    t.money "est_labour_cost", precision: 19, scale: 4
    t.money "est_parts_sale", precision: 19, scale: 4
    t.money "est_labour_sale", precision: 19, scale: 4
    t.money "actual_parts_cost", precision: 19, scale: 4
    t.money "actual_labour_cost", precision: 19, scale: 4
    t.money "actual_parts_sale", precision: 19, scale: 4
    t.money "actual_labour_sale", precision: 19, scale: 4
    t.float "meterstart"
    t.float "meterstop"
    t.string "custnum", limit: 255
    t.string "name", limit: 255
    t.string "addr1", limit: 255
    t.string "addr2", limit: 255
    t.string "town", limit: 255
    t.string "county", limit: 255
    t.string "postcode", limit: 255
    t.string "country_id", limit: 255
    t.string "contact", limit: 255
    t.string "sitename", limit: 255
    t.string "siteaddr1", limit: 255
    t.string "siteaddr2", limit: 255
    t.string "sitetown", limit: 255
    t.string "sitecounty", limit: 255
    t.string "sitepostcode", limit: 255
    t.string "sitecountry_id", limit: 255
    t.string "phonenum", limit: 255
    t.string "faxnum", limit: 255
    t.boolean "on_site", null: false
    t.boolean "charge_to_cust", null: false
    t.string "charge_to_contract", limit: 255
    t.string "cust_ponum", limit: 255
    t.boolean "charge_as_asset_addition", null: false
    t.boolean "write_off", null: false
    t.float "qty_write_off"
    t.string "estimated_by", limit: 255
    t.string "approved_by", limit: 255
    t.float "technician_id"
    t.string "invnotes", limit: 255
    t.boolean "warranty_repair", null: false
    t.float "stage"
    t.float "created_via"
    t.float "worktype"
    t.string "certificate", limit: 255
    t.string "contract", limit: 255
    t.datetime "expiry_date", precision: nil
    t.float "sched_maint_id"
    t.boolean "superseded", null: false
    t.string "service_supplier", limit: 255
    t.string "est_travel_time", limit: 255
    t.string "time_on_site", limit: 255
    t.string "time_off_site", limit: 255
    t.boolean "rejected", null: false
    t.boolean "item_owned_by_cust", null: false
    t.float "ucounter"
    t.boolean "cash", null: false
    t.string "job_number", limit: 255
    t.string "identification", limit: 255
    t.string "cust_job_number", limit: 255
    t.boolean "fin_charge_reqd", null: false
    t.float "invoice"
    t.float "inspection_worktype"
    t.boolean "vehicle", null: false
    t.string "regnum", limit: 255
    t.string "costed_job", limit: 255
    t.float "activity_id"
    t.float "meterstartoffset"
    t.float "meterstopoffset"
    t.string "item_or_regnum", limit: 255
    t.string "WorkflowStatusChangeID", limit: 255
    t.float "ContactID"
    t.string "WorkflowStatusID", limit: 255
    t.string "WorkflowUserID", limit: 255
    t.string "WorkflowDeptID", limit: 255
    t.money "InvoicedLabourSaleValue", precision: 19, scale: 4
    t.money "InvoicedPartsSaleValue", precision: 19, scale: 4
    t.boolean "Invoiced", null: false
    t.string "search_owner", limit: 255
    t.string "custname", limit: 255
    t.float "technician2_id"
    t.string "SiteLatitude", limit: 255
    t.string "SiteLongitude", limit: 255
    t.string "TaxCode", limit: 255
    t.string "LocalTaxCode", limit: 255
    t.string "Rowversion", limit: 255
    t.boolean "useitemdescription", null: false
    t.boolean "NotesPresent", null: false
    t.string "NonChargeableReasonID", limit: 255
    t.float "ActionCount"
    t.float "OpenActionCount"
    t.boolean "OpenActionBit", null: false
  end

  create_table "zgridhdr", id: false, force: :cascade do |t|
    t.string "grid_id", limit: 255
    t.string "grid_name", limit: 255
    t.boolean "jobtype", null: false
    t.boolean "bygroup", null: false
    t.boolean "bysubgroup", null: false
    t.boolean "byexchangecode", null: false
    t.boolean "byitem", null: false
    t.datetime "grid_date", precision: nil
    t.float "discmethod"
    t.float "CurrencyID"
    t.boolean "Inactive", null: false
    t.boolean "ExcludeFromUpdate", null: false
    t.boolean "NotesPresent", null: false
  end

  create_table "zgriditem", id: false, force: :cascade do |t|
    t.float "id"
    t.string "grid_id", limit: 255
    t.string "cat_id", limit: 255
    t.float "sub_id"
    t.string "item", limit: 255
    t.string "exchange", limit: 255
    t.string "job_type", limit: 255
    t.string "unit", limit: 255
    t.string "itype", limit: 255
    t.string "discount", limit: 255
    t.money "price1", precision: 19, scale: 4
    t.money "price2", precision: 19, scale: 4
    t.money "price3", precision: 19, scale: 4
    t.money "meter_rate", precision: 19, scale: 4
    t.money "excess", precision: 19, scale: 4
    t.float "lower_day"
    t.float "upper_day"
    t.money "cdw_rate", precision: 19, scale: 4
    t.float "meter_allowance"
    t.string "DW1Percent", limit: 255
    t.boolean "SaleDiscLine", null: false
    t.string "Rate1Minimum", limit: 255
  end

  create_table "zmaintenance", id: false, force: :cascade do |t|
    t.float "id"
    t.float "form"
    t.string "code", limit: 255
    t.string "description", limit: 255
    t.float "calendar_freq_id"
    t.float "rental_interval"
    t.float "meter_interval"
    t.string "last_maint", limit: 255
    t.float "interval_base"
    t.datetime "next_calendar_date", precision: nil
    t.float "rental_days_left"
    t.float "next_meter"
    t.float "supersedes_id_1"
    t.string "supersedes_id_2", limit: 255
    t.string "supersedes_id_3", limit: 255
    t.float "generate_maint"
    t.float "maintenance_type"
    t.float "active"
    t.float "spec_id"
    t.boolean "out_of_service", null: false
    t.datetime "last_expiry_date", precision: nil
    t.string "last_certificate", limit: 255
    t.float "meteroffset"
  end

  create_table "zmisc_chg", id: false, force: :cascade do |t|
    t.string "item", limit: 255
    t.float "ctr"
    t.string "charge_item", limit: 255
    t.string "descr", limit: 255
    t.float "apply"
    t.money "min_chg", precision: 19, scale: 4
    t.float "days_min"
    t.money "weekchg", precision: 19, scale: 4
    t.money "monthchg", precision: 19, scale: 4
    t.string "itype", limit: 255
    t.string "um", limit: 255
    t.boolean "taxable", null: false
    t.boolean "discountable", null: false
    t.string "applies_to_itype", limit: 255
    t.float "quant"
    t.float "line_type"
    t.boolean "per_item", null: false
    t.boolean "grid_prices", null: false
    t.money "meter_rate", precision: 19, scale: 4
    t.boolean "eurohire", null: false
    t.float "id"
    t.float "default_selection"
    t.boolean "Locked", null: false
  end

  create_table "zsubcategories", id: false, force: :cascade do |t|
    t.string "subcategory", limit: 255
    t.string "description", limit: 255
    t.string "joincat", limit: 255
    t.string "comment", limit: 255
    t.string "gl_code", limit: 255
    t.string "gl_code2", limit: 255
    t.string "gl_code3", limit: 255
    t.string "inv_glcode", limit: 255
    t.string "cog_glcode", limit: 255
    t.string "gl_code4", limit: 255
    t.string "dept_credit", limit: 255
    t.boolean "dept_prefix", null: false
    t.boolean "dept_suffix", null: false
    t.string "gl_shrink", limit: 255
    t.string "inv_glcode2", limit: 255
    t.string "cog_glcode2", limit: 255
    t.string "gl_int_code", limit: 255
    t.string "gl_int_code2", limit: 255
    t.string "gl_int_code3", limit: 255
    t.string "gl_int_code4", limit: 255
    t.string "catalogue_notes", limit: 255
    t.string "image_pointer", limit: 255
    t.string "safety_pointer", limit: 255
    t.string "oper_pointer", limit: 255
    t.boolean "viewfromweb", null: false
    t.float "id"
    t.float "cat_id"
    t.string "depr_pl_glcode", limit: 255
    t.string "depr_bsheet_glcode", limit: 255
    t.string "method", limit: 255
    t.float "term_year"
    t.float "term_month"
    t.money "rate", precision: 19, scale: 4
    t.boolean "residual_type", null: false
    t.money "residual_value", precision: 19, scale: 4
    t.float "pre_extension"
    t.float "post_extension"
    t.money "ins_value", precision: 19, scale: 4
    t.float "def_worksordertype_id"
    t.boolean "force_worksorder", null: false
    t.float "min_qty"
    t.float "max_qty"
    t.boolean "allow_free_days", null: false
    t.string "ra_disposal_depr", limit: 255
    t.string "ra_disposal_wdv", limit: 255
    t.boolean "discountable", null: false
    t.string "acctref", limit: 255
    t.boolean "apply_local_tax", null: false
    t.string "gl_rehire_exp", limit: 255
    t.float "activity_id"
    t.boolean "vehicle_ind", null: false
    t.float "min_driver_age"
    t.float "max_driver_age"
    t.float "defleet_months"
    t.float "defleet_days"
    t.float "defleet_utilisation"
    t.string "wo_stock_glcode", limit: 255
    t.string "xfer_in_cost_glcode", limit: 255
    t.string "xfer_in_depr_glcode", limit: 255
    t.string "xfer_out_cost_glcode", limit: 255
    t.string "xfer_out_depr_glcode", limit: 255
    t.boolean "job_costing_charge", null: false
    t.boolean "service", null: false
    t.string "tax_method", limit: 255
    t.float "tax_term_year"
    t.float "tax_term_month"
    t.money "tax_rate", precision: 19, scale: 4
    t.boolean "tax_residual_type", null: false
    t.money "tax_residual_value", precision: 19, scale: 4
    t.money "CostPlusMargin", precision: 19, scale: 4
    t.string "DepreciationMonths", limit: 255
    t.boolean "TrackingUpdatesMeter", null: false
    t.boolean "Pickable", null: false
  end

  add_foreign_key "BI_DashboardTypeGroups", "BI_DashboardTypes", column: "DashboardTypeId", primary_key: "ID", name: "fk_DashTypeGroups_DashTypes"
  add_foreign_key "BI_DashboardTypeGroups", "BI_DataGroups", column: "DataGroupId", primary_key: "ID", name: "fk_DashTypeGroups_DataGroups"
  add_foreign_key "BI_DashboardUserPreferences", "BI_Dashboards", column: "DashboardId", primary_key: "ID", name: "fk_DashUserPreferences_Dashboards"
  add_foreign_key "BI_DashboardUserPreferences", "OperatorId", column: "OperatorNo", primary_key: "OPNO", name: "fk_DashUserPreferences_OperatorId"
  add_foreign_key "BI_Dashboards", "BI_DashboardTypes", column: "DashboardTypeId", primary_key: "ID", name: "fk_Dashboard_DashboardType"
  add_foreign_key "BI_Dashboards", "BI_UserProfile", column: "UserProfileId", primary_key: "ID", name: "fk_Dashboard_UserProfile"
  add_foreign_key "BI_FilterDefinitions", "BI_ControlTypes", column: "ControlTypeId", primary_key: "ID", name: "fk_FilterDefinitions_ControlTypeId"
  add_foreign_key "BI_FilterValues", "BI_FilterDefinitions", column: "FilterDefinitionId", primary_key: "ID", name: "fk_FilterValues_FilterDefinitionId"
  add_foreign_key "BI_SharedDashboardGroups", "BI_AccessTypes", column: "AccessTypeId", primary_key: "ID", name: "fk_SharedDashGroups_AccessTypes"
  add_foreign_key "BI_SharedDashboardGroups", "BI_Dashboards", column: "DashboardId", primary_key: "ID", name: "fk_SharedDashGroups_Dashboards"
  add_foreign_key "BI_SharedDashboardGroups", "GroupFile", column: "GroupNo", primary_key: "GroupNumber", name: "fk_SharedDashGroups_GroupFile"
  add_foreign_key "BI_SharedDashboardOperators", "BI_AccessTypes", column: "AccessTypeId", primary_key: "ID", name: "fk_SharedDashOps_AccessTypes"
  add_foreign_key "BI_SharedDashboardOperators", "BI_Dashboards", column: "DashboardId", primary_key: "ID", name: "fk_SharedDashOps_Dashboards"
  add_foreign_key "BI_SharedDashboardOperators", "OperatorId", column: "OperatorNo", primary_key: "OPNO", name: "fk_SharedDashOps_Operator"
  add_foreign_key "BI_WidgetSizes", "BI_WidgetTypes", column: "WidgetTypeId", primary_key: "ID", name: "fk_WidgetSizes_WidgetTypes"
  add_foreign_key "BI_WidgetTemplates", "BI_DataGroups", column: "DataGroupId", primary_key: "ID", name: "fk_WidgetTemplates_DataGroups"
  add_foreign_key "BI_WidgetTemplates", "BI_WidgetTypes", column: "WidgetTypeId", primary_key: "ID", name: "fk_WidgetTemplates_WidgetTypes"
  add_foreign_key "BI_WidgetTemplates", "BI_WidgetViews", column: "WidgetViewId", primary_key: "ID", name: "fk_WidgetTemplates_WidgetViews"
  add_foreign_key "BI_WidgetViews", "BI_DataGroups", column: "DataGroupId", primary_key: "ID", name: "fk_WidgetViews_DataGroups"
  add_foreign_key "BI_Widgets", "BI_Dashboards", column: "DashboardId", primary_key: "ID", name: "fk_Widgets_Dashboards"
  add_foreign_key "BI_Widgets", "BI_WidgetTemplates", column: "WidgetTemplateId", primary_key: "ID", name: "fk_Widgets_WidgetTemplates"
  add_foreign_key "BI_Widgets", "BI_WidgetTypes", column: "WidgetTypeId", primary_key: "ID", name: "fk_Widgets_WidgetTypes"
  add_foreign_key "District", "Region", column: "RegionId", primary_key: "Id", name: "FK_District_Region"
  add_foreign_key "DistrictStores", "District", column: "DistrictId", primary_key: "Id", name: "FK_DistrictStores_District"
  add_foreign_key "EliteServer", "EliteServerState", column: "EliteServerStateId", primary_key: "Id", name: "FK_EliteServer_EliteServerState"
  add_foreign_key "EliteServerLock", "EliteServer", column: "EliteServerId", primary_key: "Id", name: "FK_EliteServerLock_EliteServer"
  add_foreign_key "FeatureLicense", "FeatureLicenseType", column: "LicenseTypeId", primary_key: "Id", name: "FK_FeatureLicense_FeatureLicenseType"
  add_foreign_key "FeatureLicense", "FeatureLimitType", column: "LimitTypeId", primary_key: "Id", name: "FK_FeatureLicense_FeatureLimitType"
  add_foreign_key "FeaturePermission", "FeaturePermissionType", column: "PermissionTypeId", primary_key: "Id", name: "FK_FeaturePermission_FeaturePermissionType"
  add_foreign_key "FileImport", "FileImportStatus", column: "FileImportStatusId", primary_key: "Id", name: "FK_FileImportFileImportStatus"
  add_foreign_key "FileImport", "FileImportType", column: "FileImportTypeId", primary_key: "Id", name: "FK_FileImport_FileImportType"
  add_foreign_key "FileImportTypeColumns", "FileImportType", column: "FileImportTypeId", primary_key: "Id", name: "FK_FileImportTypeColumns_FileImportType"
  add_foreign_key "FileMapping", "FileImportType", column: "FileImportTypeId", primary_key: "Id", name: "FK_FileMapping_FileImportType"
  add_foreign_key "ItemLocationDefaults", "FulfillmentActions", column: "FulfillmentActionsId", primary_key: "Id", name: "FK_ItemLocationDefaults_FulfillmentActions"
  add_foreign_key "ItemLocationDefaults", "ItemDepartment", column: "DepartmentId", primary_key: "Department", name: "FK_ItemLocationDefaults_ItemDepartment"
  add_foreign_key "ItemLocationDefaults", "ItemLocations", column: "ItemLocationId", primary_key: "ItemLocationId", name: "FK_ItemLocationDefaults_ItemLocations"
  add_foreign_key "JobOrderDetail", "JobOrder", column: "JobOrderID", primary_key: "ID", name: "FK_dbo.JobOrderDetail_dbo.JobOrder_JobOrderID"
  add_foreign_key "JobOrderDetail", "OperatorId", column: "ID", primary_key: "OPNO", name: "FK_dbo.JobOrderDetail_dbo.OperatorId_AssignedToID"
  add_foreign_key "JobOrderLog", "JobOrder", column: "JobOrderID", primary_key: "ID", name: "FK_dbo.JobOrderLog_dbo.JobOrder_JobOrderID"
  add_foreign_key "JobOrderLog", "JobOrderTask", column: "JobOrderTaskID", primary_key: "ID", name: "FK_JobOrderLog_JobOrderTask_JobOrderTaskID"
  add_foreign_key "JobOrderTask", "JobOrder", column: "JobOrderID", primary_key: "ID", name: "FK_JobOrderTask_JobOrder_JobOrderID"
  add_foreign_key "JobTemplateAssociation", "JobTemplate", column: "ChildTemplateID", primary_key: "ID", name: "FK_dbo.JobTemplateAssociation_dbo.JobTemplate_ChildTemplateID"
  add_foreign_key "JobTemplateAssociation", "JobTemplate", column: "ParentTemplateID", primary_key: "ID", name: "FK_dbo.JobTemplateAssociation_dbo.JobTemplate_ParentTemplateID"
  add_foreign_key "JobTemplateQuestions", "JobQuestion", column: "JobQuestionID", primary_key: "ID", name: "FK_dbo.JobTemplateQuestions_dbo.JobQuestion_JobQuestionID"
  add_foreign_key "JobTemplateQuestions", "JobTemplate", column: "JobTemplateID", primary_key: "ID", name: "FK_dbo.JobTemplateQuestions_dbo.JobTemplate_JobTemplateID"
  add_foreign_key "Ledger", "LedgerCode", column: "LedgerCodeId", primary_key: "ID", name: "FK_LedgerCodeId"
