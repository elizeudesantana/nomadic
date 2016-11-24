Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  get 'news/index'

	#habilitar as rotas padrões para nomadic:
	root 'primeiro_index#index'

	resources :primeiro_index
	resources :lembretes
end
