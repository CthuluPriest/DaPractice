ActiveAdmin.register Sovet do
  menu :parent => "Справочники", :label => "Сельские советы", :priority => 5
  permit_params :name
end
