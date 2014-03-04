ActiveAdmin.register Rayon do
  menu :parent => "Справочники", :label => "Районы", :priority => 4
  permit_params :name
end
