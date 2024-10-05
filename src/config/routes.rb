Rails.application.routes.draw do
  
  namespace :public do
    resources :survey_answers
  end
  namespace :public do
    get 'analytics_results/index'
    get 'analytics_results/show'
  end
  namespace :public do
    get 'emotion_logs/index'
    get 'emotion_logs/show'
  end
  namespace :public do
    get 'improvement_suggestions/index'
    get 'improvement_suggestions/show'
  end
  namespace :public do
    # 他のルート定義があるかもしれませんが、これを追加/確認します
    resources :negative_reports
  end
  namespace :public do
    get 'users/show'
    get 'users/edit'
  end
  # 顧客用
  # URL /users/sign_in ...
  devise_for :users,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }

  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
  }

  root to: 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
