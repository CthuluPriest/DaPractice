ActiveAdmin.register Purpose do
  menu :parent => "Справочники", :label => "Цели использования", :priority => 7
  permit_params :name
end
