Flashcards::Application.routes.draw do
  resources :users, only: [:new, :create]
  resources :decks do
    resources :cards, except: :index
  end
end
