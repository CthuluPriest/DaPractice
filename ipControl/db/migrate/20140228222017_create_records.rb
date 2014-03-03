class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :name
      t.string :subdivision_type
      t.string :oblast
      t.string :rayon
      t.string :sovet
      t.string :pynkt
      t.string :street
      t.string :house
      t.string :korpus
      t.float :post_index
      t.float :latitude
      t.float :longtitude
      t.string :description
      t.string :purpose
      t.string :firewall
      t.string :proxy
      t.string :vpn
      t.string :antivirus
      t.string :technology
      t.float :speed
      t.string :connection_phone
      t.string :ce
      t.string :pe
      t.string :ipadress
      t.string :visibility
      t.string :contact_phone
      t.string :tarifff
      t.string :provider
      t.string :details

      t.timestamps
    end
  end
end
