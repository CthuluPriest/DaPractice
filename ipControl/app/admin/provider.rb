ActiveAdmin.register Provider do
  menu :parent => "Справочники", :label => "Поставщики услуг", :priority => 10
  permit_params :name
end
