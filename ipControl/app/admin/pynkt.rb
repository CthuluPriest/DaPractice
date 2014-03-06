ActiveAdmin.register Pynkt do
  menu :parent => "Справочники", :label => "Населённые пункты", :priority => 6
  permit_params :name
end
