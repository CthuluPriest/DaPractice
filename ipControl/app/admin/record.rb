ActiveAdmin.register Record do
    menu :label => "Записи", :priority => 1
    permit_params :name, :subdivision_type, :subdivision_same_building, :oblast, :rayon,
                :sovet, :pynkt, :street, :house, :korpus, :post_index, :latitude, :longtitude, :description,
                :purpose, :firewall, :proxy, :vpn, :antivirus, :technology, :speed, :connection_phone, 
                :ce, :pe, :ipadress, :visibility, :contact_phone, :tarifff, :provider, :details, :ce_network, :pe_network

    index :title => "Записи" do
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
        # column "Реквизиты", :details

        actions
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
            values = Subdivision.pluck(:name)
            if values.size == 0 
                f.input :name, :label => "Наименование подразделения", as: :select, 
                                                                collection: values, :prompt => "Справочник пуст"
            else
                f.input :name, :label => "Наименование подразделения", as: :select, 
                                                                collection: values, :include_blank => false
            end

            values = SubdivisionType.pluck(:name)
            if values.size == 0 
                f.input :subdivision_type, :label => "Тип подразделения", as: :select, 
                                                            collection: values, :prompt => "Справочник пуст"
            else
                f.input :subdivision_type, :label => "Тип подразделения", as: :select, 
                                                            collection: values, :include_blank => false
            end

            f.input :subdivision_same_building, :label => "Подразделение в одном здании"

            f.inputs "Адрес" do
                values = Oblast.pluck(:name)
                if values.size == 0 
                    f.input :oblast, :label => "Область", as: :select, 
                                                            collection: values, :prompt => "Справочник пуст"
                else
                    f.input :oblast, :label => "Область", as: :select, 
                                                            collection: values, :include_blank => false
                end

                values = Rayon.pluck(:name)
                if values.size == 0 
                    f.input :rayon, :label => "Район", as: :select, 
                                                                collection: values, :prompt => "Справочник пуст"
                else
                    f.input :rayon, :label => "Район", as: :select, 
                                                                collection: values, :prompt => "Выберите значение"
                end


                values = Sovet.pluck(:name)
                if values.size == 0 
                    f.input :sovet, :label => "Сельский совет", as: :select, 
                                                                collection: values, :prompt => "Справочник пуст"
                else
                    f.input :sovet, :label => "Сельский совет", as: :select, 
                                                                collection: values, :prompt => "Выберите значение"
                end


                values = Pynkt.pluck(:name)
                if values.size == 0 
                    f.input :pynkt, :label => "Населенный пункт", as: :select, 
                                                                collection: values, :prompt => "Справочник пуст"
                else
                    f.input :pynkt, :label => "Населенный пункт", as: :select, 
                                                                collection: values, :include_blank => false
                end

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

                values = Purpose.pluck(:name)
                if values.size == 0 
                    f.input :purpose, :label => "Цель использования", as: :select, 
                                                                    collection: values, :prompt => "Справочник пуст"
                else
                    f.input :purpose, :label => "Цель использования", as: :select, 
                                                                    collection: values, :include_blank => false
                end

                f.input :firewall, :label => "Межсетевой экран"
                f.input :proxy, :label => "Прокси-сервер"
                f.input :vpn, :label => "VPN-сервер"
                f.input :antivirus, :label => "Антивирус"
            end


            values = Technology.pluck(:name)
            if values.size == 0 
                f.input :technology, :label => "Технология подключения", as: :select, 
                                                                collection: values, :prompt => "Справочник пуст"
            else
                f.input :technology, :label => "Технология подключения", as: :select, 
                                                                collection: values, :include_blank => false
            end
        
            f.input :speed, :label => "Скорость подключения"
            f.input :connection_phone, :label => "Телефон привязки"

            values = Wan.pluck(:wan)
            f.inputs "WAN/маска" do
                if values.size == 0 
                    f.input :ce_network, label: "CE сеть", as: :select, 
                                       collection: values, prompt: "Справочник пуст"
                    f.input :pe_network, :label => "PE сеть", as: :select, 
                                       collection: values, prompt: 'Справочник пуст'
                else
                    f.input :ce_network, label: "CE сеть", as: :select, 
                                        collection: values, prompt: 'Выберите значение'
                    f.input :ce, label: "Подсеть/Адрес CE", hint: "Подсеть или адрес должен входить в CE сеть"
                  
                    f.input :pe_network, :label => "PE сеть", as: :select, 
                                        collection: values, prompt: 'Выберите значение'
                    f.input :pe, label: "Подсеть/Адрес PE", hint: "Подсеть или адрес должен входить в PE сеть"
                end
            end

            f.input :ipadress, :label => "IP адрес/сеть"
            f.input :visibility, :label => "Видимость точек"
            f.input :contact_phone, :label => "Контактный телефон"

            values = Tariff.pluck(:name)
            if values.size == 0 
                f.input :tarifff, :label => "Тариф", as: :select, 
                                                        collection: values, :prompt => "Справочник пуст"
            else
                f.input :tarifff, :label => "Тариф", as: :select, 
                                                        collection: values, :include_blank => false
            end

            values = Provider.pluck(:name)
            if values.size == 0 
                f.input :provider, :label => "Поставщик услуг", as: :select, 
                                                        collection: values, :prompt => "Справочник пуст"
            else
                f.input :provider, :label => "Поставщик услуг", as: :select, 
                                                        collection: values, :include_blank => false
            end

            f.input :details, :label => "Реквизиты договора"
        end

        f.actions
    end

    show :title => :name do |r|
        attributes_table do 
            row "Наименование" do
                r.name
            end

            row "Тип подразделения" do 
                r.subdivision_type
            end

            row "Подразделение в одном здании" do 
                r.subdivision_same_building
            end

            row "Область" do 
                r.oblast
            end

            row "Район" do 
            r.rayon
            end

            row "Сельский совет" do 
                r.sovet
            end

            row "Населенный пункт" do 
                r.pynkt
            end

            row "Улица" do 
                r.street
            end

            row "Номер дома" do 
                r.house
            end

            row "Корпус" do 
                r.korpus
            end

            row "Индекс" do 
                r.post_index
            end

            row "Широта" do 
                r.latitude
            end

            row "Долгота" do 
                r.longtitude
            end

            row "Описание" do 
                r.description
            end

            row "Цель использования" do 
                r.purpose
            end

            row "Межсетевой экран" do 
                r.firewall
            end

            row "Прокси" do 
                r.proxy
            end

            row "VPN" do 
                r.vpn
            end

            row "Антивирус" do 
                r.antivirus
            end

            row "Технология подключения" do 
                r.technology
            end

            row "Скорость подключения" do 
                r.speed
            end

            row "Телефон привязки" do 
                r.connection_phone
            end

            row "CE" do 
                r.ce
            end

            row "PE" do 
                r.pe
            end

            row "IP адрес/сеть" do 
                r.ipadress
            end

            row "Видимость точек" do 
                r.visibility
            end

            row "Контактный телефон" do 
                r.contact_phone
            end

            row "Тариф" do 
                r.tarifff
            end

            row "Поставщик услуг" do 
                r.provider
            end

            row "Реквизиты" do 
                r.details
            end
        end
    end 

    member_action :edit do
        @record = Record.find(params[:id])
        @page_title =  @record.name
    end
end
