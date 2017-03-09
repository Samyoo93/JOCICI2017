class CreateMainPages < ActiveRecord::Migration[5.0]
  def change
    create_table :main_pages do |t|

      t.timestamps
    end
  end
end
