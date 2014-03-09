class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :name, null: false
      t.string :subdivision_type, null: false
      t.string :subdivision_same_building
      t.string :oblast, null: false
      t.string :rayon
      t.string :sovet
      t.string :pynkt, null: false
      t.string :street, null: false
      t.string :house, null: false
      t.string :korpus
      t.integer :post_index, null: false
      t.float :latitude
      t.float :longtitude
      t.string :description
      t.string :purpose, null: false
      t.string :firewall
      t.string :proxy
      t.string :vpn
      t.string :antivirus
      t.string :technology, null: false
      t.integer :speed
      t.string :connection_phone
      t.string :ce
      t.string :pe
      t.string :ipadress
      t.string :visibility
      t.string :contact_phone
      t.string :tarifff,null: false
      t.string :provider, null: false
      t.string :details

      t.timestamps
    end
  end
end
