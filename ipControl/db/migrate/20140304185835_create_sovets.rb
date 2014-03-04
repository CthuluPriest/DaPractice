class CreateSovets < ActiveRecord::Migration
  def change
    create_table :sovets do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
