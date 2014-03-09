ActiveAdmin.register Wan do
  menu :parent => "Справочники", :label => "WAN", :priority => 6
  permit_params :wan

  form do |f|
    f.inputs "Указать диапазон" do
      f.input :wan, label: "IP адрес"
    end
    f.actions
  end
end
