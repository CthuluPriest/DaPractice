ActiveAdmin.register Technology do
  menu :parent => "Справочники", :label => "Тезнологии подключения", :priority => 8
  permit_params :name

  	  index :title => "Технологии подключения" do
	    selectable_column
	    id_column
	    column "Название", :name
	    actions
	  end

	  filter :name, :label => "Название"
	  filter :id

	  form do |f|
	    f.inputs "Технология подключения" do
	      f.input :name, :label => "Название"
	    end
	    f.actions
	  end

	  show :title => "Технология подключения" do |r|
	    panel "" do
	        attributes_table_for r do 
	        	row :id
	            row "Название" do
	                r.name
	            end
	        end
	    end
	  end 
end
