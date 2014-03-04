ActiveAdmin.register Oblast do
  menu :parent => "Справочники", :label => "Области", :priority => 3
  permit_params :name
end
