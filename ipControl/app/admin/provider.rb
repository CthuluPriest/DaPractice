ActiveAdmin.register Provider do
  menu :parent => "Справочники", :label => "Поставщики услуг", :priority => 10
  permit_params :name

	  index :title => "Поставщики услуг" do
	    selectable_column
	    id_column
	    column "Название", :name
	    actions
	  end

	  filter :name, :label => "Название"
	  filter :id

	  form do |f|
	    f.inputs "Поставщик услуг" do
	      f.input :name, :label => "Название"
	    end
	    f.actions
	  end

	  show :title => "Поставщик услуг" do |r|
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
