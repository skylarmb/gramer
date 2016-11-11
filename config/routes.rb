Rails.application.routes.draw do
  root 'result#index'
  get  'result/:uuid', to: 'result#show', as: 'result'
  post 'result', to: 'result#create'
end
