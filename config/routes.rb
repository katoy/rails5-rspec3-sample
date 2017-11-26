Rails.application.routes.draw do
  namespace :api, { format: 'json' } do
    namespace :v1 do
      resources :expenses, only: [:index, :create]
      get 'expenses/:date', to: 'expenses#show',
                            constraints: { date: /\d{4}-\d{2}-\d{2}/ }
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/404' => 'errors#not_found'
  get '/500' => 'errors#exception'
  post '/500' => 'errors#exception'
  get '/400' => 'errors#exception'
  post '/400' => 'errors#exception'
end
