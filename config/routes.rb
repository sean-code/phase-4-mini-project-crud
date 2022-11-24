Rails.application.routes.draw do
 
  resources :spices

end


# only:[:index, :show, :create, :update, :destroy]
# except:[:created_at, :updated_at]