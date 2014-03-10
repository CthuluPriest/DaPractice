ActiveAdmin.register SubdivisionType do
    menu :parent => "Справочники", :label => "Типы подразделений", :priority => 2
    permit_params :name

	  index :title => "Типы подразделений" do
	    selectable_column
	    id_column
	    column "Название", :name
	    actions
	  end

	  filter :name, :label => "Название"
	  filter :id

	  form do |f|
	    f.inputs "Тип подразделения" do
	      f.input :name, :label => "Название"
	    end
	    f.actions
	  end

	  show :title => "Тип подразделения" do |r|
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
