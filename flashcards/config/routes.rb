Flashcards::Application.routes.draw do
  get "/decks" => "decks#index"
  get "/decks/new" => "decks#new"
  get "/decks/:id" => "decks#show"
  post "/decks" => "decks#create"
end
