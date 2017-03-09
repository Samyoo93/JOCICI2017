class CreateRegisters < ActiveRecord::Migration[5.0]
  def change
    create_table :registers do |t|
      t.string :name
      t.string :lastName
      t.string :email

      t.timestamps
    end
  end
end
