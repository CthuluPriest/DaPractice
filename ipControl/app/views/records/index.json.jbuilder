json.array!(@records) do |record|
  json.extract! record, :id, :name, :type, :oblast, :rayon, :sovet, :pynkt, :street, :house, :korpus, :post_index, :longtitude, :description, :purpose, :firewall, :proxy, :vpn, :antivirus, :technology, :speed, :connection_phone, :ce, :pe, :ipadress, :visibility, :contact_phone, :tarifff, :provider, :details
  json.url record_url(record, format: :json)
end
