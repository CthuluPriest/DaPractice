class CreateSubdivisionTypes < ActiveRecord::Migration
  def change
    create_table :subdivision_types do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
