ActiveAdmin.register Client do

index do
    column :name
   column :email
   column :mobile_No
    column :created_at
    
  end
filter :email
filter :name


form :html => { :enctype => "multipart/form-data" } do |f|
      f.inputs "client", :multipart => true do
        f.input :name
        f.input :email
        f.input :password
 f.input :password_confirmation
 f.input :mobile_No
 f.input :address
 f.input :post_code
        f.input :avatar
    
      end
      f.buttons
end
  
end
