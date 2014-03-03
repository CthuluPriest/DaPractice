ActiveAdmin.register Record do
  permit_params :name, :subdivision_type, :oblast, :rayon, :sovet, :pynkt, :street, :house, :korpus, :post_index, :latitude, :longtitude, 
      :description, :purpose, :firewall, :proxy, :vpn, :antivirus, :technology, :speed, :connection_phone, 
      :ce, :pe, :ipadress, :visibility, :contact_phone, :tarifff, :provider, :details

  #index do
    #selectable_column
    #id_column
    #column :email
    #column :current_sign_in_at
    #column :sign_in_count
    #column :created_at
   # actions
  #end

#  filter :email
#  filter :current_sign_in_at
#  filter :sign_in_count
#  filter :created_at

  form do |f|
    f.inputs "Запись" do
      f.input :name, :label => "Наименование подразделения"
      f.input :subdivision_type, :label => "Тип подразделения"

      f.inputs "Адрес" do
        f.input :oblast, :label => "Область"
        f.input :rayon, :label => "Район"
        f.input :sovet, :label => "Сельский совет"
        f.input :pynkt, :label => "Населенный пункт"
        f.input :street, :label => "Улица"
        f.input :house, :label => "Номер дома"
        f.input :korpus, :label => "Номер корпуса"
        f.input :post_index, :label => "Индекс"
      end

      f.inputs "Географические координаты" do
        f.input :latitude, :label => "Широта"
        f.input :longtitude, :label => "Долгота"
      end

      f.inputs "Внешний канал связи" do
        f.input :description, :label => "Описание"
        f.input :purpose, :label => "Цель использования"
        f.input :firewall, :label => "Межсетевой экран"
        f.input :proxy, :label => "Прокси-сервер"
        f.input :vpn, :label => "VPN-сервер"
        f.input :antivirus, :label => "Антивирус"
      end

      f.input :technology, :label => "Технология подключений"
      f.input :speed, :label => "Скорость подключения"
      f.input :connection_phone, :label => "Телефон привязки"

      f.inputs "WAN/маска" do
        f.input :ce, :label => "CE"
        f.input :pe, :label => "PE"
      end

      f.input :ipadress, :label => "IP адрес/сеть"
      f.input :visibility, :label => "Видимость точек"
      f.input :contact_phone, :label => "Контактный телефон"
      f.input :tarifff, :label => "Тариф"
      f.input :provider, :label => "Поставщик услуг"
      f.input :details, :label => "Реквизиты договора"
      end

    f.actions
  end
  
end
