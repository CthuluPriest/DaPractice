ActiveAdmin.register Tariff do
  menu :parent => "Справочники", :label => "Тарифы", :priority => 9
  permit_params :name

  	  index :title => "Тарифы" do
	    selectable_column
	    id_column
	    column "Название", :name
	    actions
	  end

	  filter :name, :label => "Название"
	  filter :id

	  form do |f|
	    f.inputs "Тариф" do
	      f.input :name, :label => "Название"
	    end
	    f.actions
	  end

	  show :title => "Тариф" do |r|
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
