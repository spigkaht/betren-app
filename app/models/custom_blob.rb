class CustomBlob < ActiveStorage::Blob
  self.table_name = "active_storage_blobs"
  establish_connection :secondary
end
