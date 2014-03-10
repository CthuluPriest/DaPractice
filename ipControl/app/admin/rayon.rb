ActiveAdmin.register Rayon do
  menu :parent => "Справочники", :label => "Районы", :priority => 4
  permit_params :name

	  index :title => "Районы" do
	    selectable_column
	    id_column
	    column "Название", :name
	    actions
	  end

	  filter :name, :label => "Название"
	  filter :id

	  form do |f|
	    f.inputs "Район" do
	      f.input :name, :label => "Название"
	    end
	    f.actions
	  end

	  show :title => "Район" do |r|
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
