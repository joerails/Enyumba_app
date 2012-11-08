ActiveAdmin.register House do
 
form :html => { :enctype => "multipart/form-data" } do |f|
      f.inputs "house", :multipart => true do
        f.input :location
        f.input :category
       
 f.input :price
 f.input :description
 f.input :avatar
    
      end
      f.buttons
end
  

end
