ActiveAdmin.register Record do
  menu :label => "Записи"
  permit_params :name, :subdivision_type, :subdivision_same_building, :oblast, :rayon, :sovet, :pynkt, :street, :house, :korpus, :post_index, :latitude, :longtitude, 
      :description, :purpose, :firewall, :proxy, :vpn, :antivirus, :technology, :speed, :connection_phone, 
      :ce, :pe, :ipadress, :visibility, :contact_phone, :tarifff, :provider, :details

  index do
    selectable_column
    id_column

    column "Наименование", :name
    column "Тип подразделения", :subdivision_type
    column "Подразделение в одном здании", :subdivision_same_building
    column "Область", :oblast
    column "Район",:rayon
    column "Сельский совет", :sovet
    column "Населенный пункт", :pynkt
    column "Улица", :street
    column "Номер дома", :house
    column "Корпус", :korpus
    column "Индекс", :post_index
    column "Широта", :latitude
    column "Долгота", :longtitude
    # column "Описание", :description
    # column "Цель использования", :purpose
    # column "Межсетевой экран", :firewall
    # column "Прокси", :proxy
    # column "VPN", :vpn
    # column "Антивирус", :antivirus
    # column "Технология подключения", :technology
    # column "Скорость подключения", :speed
    # column "Телефон привязки", :connection_phone
    # column "CE", :ce
    # column "PE", :pe
    # column "IP адрес/сеть", :ipadress
    # column "Видимость точек", :visibility
    # column "Контактный телефон", :contact_phone
    # column "Тариф", :tarifff
    # column "Поставщик услуг", :provider
    # column "Реквизиты":, details
  end

  filter :name, :label => "Наименование"
  filter :subdivision_type, :label => "Тип подразделения"
 # filter :subdivision_type, :label => "Подразделение в одном здании"
  filter :oblast, :label => "Область"
  filter :rayon, :label => "Район"
  filter :sovet, :label => "Сельский совет"
  filter :pynkt, :label => "Населенный пункет"
  filter :street, :label => "Улица"
  filter :latitude, :label => "Широта"
  filter :longtitude, :label => "Долгота"

  # filter :description, :label => "Описание"
  # filter :purpose, :label => "Цель использования"
  # filter :firewall, :label => "Межсетевой экран"
  # filter :proxy, :label => "Прокси-сервер"
  # filter :vpn, :label => "VPN"
  # filter :antivirus, :label => "Антивирус"
  # filter :technology, :label => "Технология подключения"
  # filter :speed, :label => "Скорость"
  # filter :connection_phone, :label => "Телефон подключения"
  # filter :ce, :label => "СЕ"
  # filter :pe, :label => "РЕ"
  # filter :ipadress, :label => "IP адрес/сеть"
  # filter :visibility, :label => "Видимость точек"
  # filter :contact_phone, :label => "Контактный телефон"
  # filter :tarifff, :label => "Тариф"
  # filter :provider, :label => "Поставщик услуг"
  # filter :details, :label => "Реквизиты"



  form do |f|
    f.inputs "Запись" do
      f.input :name, :label => "Наименование подразделения", as: :select, 
                                                            collection: Subdivision.pluck(:name), :include_blank => false
      f.input :subdivision_type, :label => "Тип подразделения"
      f.input :subdivision_same_building, :label => "Подразделение в одном здании"

      f.inputs "Адрес" do
        f.input :oblast, :label => "Область", as: :select, collection: Oblast.pluck(:name), :include_blank => false
        f.input :rayon, :label => "Район", as: :select, collection: Rayon.pluck(:name), :include_blank => false
        f.input :sovet, :label => "Сельский совет", as: :select, collection: Subdivision.pluck(:name), :include_blank => true
        f.input :pynkt, :label => "Населенный пункт"
        f.input :street, :label => "Улица"
        f.input :house, :label => "Номер дома"
        f.input :korpus, :label => "Корпус"
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

      f.input :technology, :label => "Технология подключения"
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
