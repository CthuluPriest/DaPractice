ActiveAdmin.register Pynkt do
  menu :parent => "Справочники", :label => "Населённые пункты", :priority => 6
  permit_params :name

	  index :title => "Населённые пункты" do
	    selectable_column
	    id_column
	    column "Название", :name
	    actions
	  end

	  filter :name, :label => "Название"
	  filter :id

	  form do |f|
	    f.inputs "Населенный пункт" do
	      f.input :name, :label => "Название"
	    end
	    f.actions
	  end

	  show :title => "Населенный пункт" do |r|
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
