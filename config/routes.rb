Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :crop_images do
    resources :crop_images, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :crop_images, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :crop_images, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
