Rails.application.routes.draw do

  root 'workmenu#index'
  #追加されたファイル
  get 'workmenu/index', as: :workmenu

  #yourindexファイル
  get 'orders/yourindex', to: 'orders#yourindex', as: :yourindex

  #必要なファイルを全て自動生成したとき
  resources :orders
  resources :members
  resources :boxes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
