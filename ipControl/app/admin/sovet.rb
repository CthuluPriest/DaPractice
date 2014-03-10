ActiveAdmin.register Sovet do
  menu :parent => "Справочники", :label => "Сельские советы", :priority => 5
  permit_params :name

  	  index :title => "Сельские советы" do
	    selectable_column
	    id_column
	    column "Название", :name
	    actions
	  end

	  filter :name, :label => "Название"
	  filter :id

	  form do |f|
	    f.inputs "Сельский совет" do
	      f.input :name, :label => "Название"
	    end
	    f.actions
	  end

	  show :title => "Сельский совет" do |r|
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
