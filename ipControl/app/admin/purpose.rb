ActiveAdmin.register Purpose do
  menu :parent => "Справочники", :label => "Цели использования", :priority => 7
  permit_params :name

  	  index :title => "Цели использования" do
	    selectable_column
	    id_column
	    column "Название", :name
	    actions
	  end

	  filter :name, :label => "Название"
	  filter :id

	  form do |f|
	    f.inputs "Цель использования" do
	      f.input :name, :label => "Название"
	    end
	    f.actions
	  end

	  show :title => "Цель использования" do |r|
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
