ActiveAdmin.register Tariff do
  menu :parent => "Справочники", :label => "Тарифы", :priority => 9
  permit_params :name
end
