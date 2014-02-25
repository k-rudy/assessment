RubyNumerals::Application.routes.draw do
  resources :numerals, only: :index do
    collection do
      post :convert
    end
  end
end
