class CreateWans < ActiveRecord::Migration
  def change
    create_table :wans do |t|
      t.string :wan

      t.timestamps
    end
  end
end
