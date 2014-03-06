class CreatePynkts < ActiveRecord::Migration
  def change
    create_table :pynkts do |t|
      t.string :name

      t.timestamps
    end
  end
end
