ActiveAdmin.register User do

  index do
    selectable_column
    column :id
    column :medical_id
    column :category
    column :first_name
    column :last_name
    column :email
    column :phone_number
    column :created_at
    actions
  end

  form do |f|
    f.inputs "Identity" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :phone_number
    end
    f.inputs "Medical information" do
      f.input :medical_id
      f.input :category
    end
    f.inputs "Admin" do
      f.input :admin
    end
    f.actions
  end

  permit_params :first_name, :last_name, :email, :phone_number, :medical_id, :category, :admin

end
