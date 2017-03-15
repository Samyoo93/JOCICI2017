class AddColumnToTable < ActiveRecord::Migration[5.0]
  def change
    add_column :registers, :email, :string, :unique => true
  end
end
