class DeleteColumnToTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :registers, :email
  end
end
