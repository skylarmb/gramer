Rails.application.routes.draw do
  root 'result#index'
  get  'result/:uuid', to: 'result#show', as: 'results'
  post 'result', to: 'result#create'
end
