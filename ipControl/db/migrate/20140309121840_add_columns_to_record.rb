class AddColumnsToRecord < ActiveRecord::Migration
  def change
    add_column :records, :ce_network, :string
    add_column :records, :pe_network, :string
  end
end
