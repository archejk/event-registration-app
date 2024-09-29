class AddAddressFieldsToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :region, :string
    add_column :events, :province, :string
    add_column :events, :city, :string
    add_column :events, :barangay, :string
  end
end
