ActiveAdmin.register AdminUser do
  menu :label => "Пользователи", :priority => 2

  permit_params :email, :password, :password_confirmation

  index :title => "Пользователи" do
    selectable_column
    id_column
    column :email
    column "Зарегестрирован", :created_at
    actions
  end

  filter :email
  filter :created_at, :label => "зарегестрирован"

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password, :label => "Пароль"
      f.input :password_confirmation, :label => "Подтверждение пароля"
    end
    f.actions
  end

  show :title => "Информация о пользователе" do |r|
    panel "" do
        attributes_table_for r do 
            row "email" do
                r.email
            end

            row "зарегестрирован" do 
              r.created_at
            end

            row "последний раз был в системе" do
              r.last_sign_in_at
            end

            row "последний использовавшийся IP-адрес" do
              r.last_sign_in_ip
            end
        end
      end
    end 

end
