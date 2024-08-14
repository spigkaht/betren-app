class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users, id: :uuid do |t|
      t.string :email
      t.string :encrypted_password

      t.timestamps
    end
  end

  def self.connection
    ActiveRecord::Base.establish_connection(:secondary).connection
  end
end
