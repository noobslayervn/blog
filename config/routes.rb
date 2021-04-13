Rails.application.routes.draw do
  root "articles#index"
  namespace :admin do
    patch "/admin/articles/:id" => "articles#show", as: "article_path"
    resources :articles, only: [:new, :create, :index, :show]
  end
end
