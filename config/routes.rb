ScrabbleFlash::Application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :quizzes, except: [:new, :edit]
      resources :cards, except: [:new, :edit]
      resources :choices, except: [:new, :edit]
    end
  end
end
