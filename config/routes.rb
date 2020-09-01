Rails.application.routes.draw do
  scope :demos do
    resource :validation, only: [:show]
  end
end
