ActiveAdmin.register Subdivision do
  menu :parent => "Справочники", :label => "Подразделения", :priority => 1
  permit_params :name

  index :title => "Подразделения" do
    selectable_column
    id_column
    column "Наименование", :name
    actions
  end

  filter :name, :label => "Наименование"
  filter :id

  form do |f|
    f.inputs "Подразделение" do
      f.input :name, :label => "Наименование"
    end
    f.actions
  end

  show :title => "Подразделение" do |r|
    panel "" do
        attributes_table_for r do 
        	row :id
            row "Наименование" do
                r.name
            end
        end
    end
  end 
end
