ActiveAdmin.register Oblast do
  menu :parent => "Справочники", :label => "Области", :priority => 3
  permit_params :name

  	  index :title => "Области" do
	    selectable_column
	    id_column
	    column "Название", :name
	    actions
	  end

	  filter :name, :label => "Название"
	  filter :id

	  form do |f|
	    f.inputs "Область" do
	      f.input :name, :label => "Название"
	    end
	    f.actions
	  end

	  show :title => "Область" do |r|
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
