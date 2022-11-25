Rails.application.routes.draw do
 
  resources :spices, only:[:index, :create, :update, :destroy]

end



# except:[:created_at, :updated_at]