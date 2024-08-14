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

ActiveRecord::Schema[7.1].define(version: 0) do
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
