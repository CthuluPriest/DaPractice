ActiveAdmin.register Subdivision do
  menu :parent => "Справочники", :label => "Подразделения", :priority => 1
  permit_params :name
end
