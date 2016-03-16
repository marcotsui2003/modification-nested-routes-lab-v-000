Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: [:new,:index, :show, :edit]
  end
  resources :songs

   scope '/admin', module: 'admin' do
    resources :stats, only: [:index]
  end
  
end
