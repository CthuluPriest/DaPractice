class CreateRayons < ActiveRecord::Migration
  def change
    create_table :rayons do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
