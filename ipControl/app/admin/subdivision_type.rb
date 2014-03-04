ActiveAdmin.register SubdivisionType do
    menu :parent => "Справочники", :label => "Типы подразделений", :priority => 2
    permit_params :name
end
