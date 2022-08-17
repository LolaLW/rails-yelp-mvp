Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #  get '/restaurants/top', to: 'restaurants#top'
  resources :restaurants do
    collection do
      get :top # restaurants/top
    end

    resources :reviews, only: [:new, :create]  # get restaurants/restaurant_id/reviews/new
  end

  #resources :reviews, only: :destroy  # delete /reviews/id
    # Defines the root path route ("/")
    # root "articles#index"
end
