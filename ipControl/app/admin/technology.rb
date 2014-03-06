ActiveAdmin.register Technology do
  menu :parent => "Справочники", :label => "Тезнологии подключения", :priority => 8
  permit_params :name
end
