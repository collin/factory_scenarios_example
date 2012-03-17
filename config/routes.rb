FactoryScenariosDemo::Application.routes.draw do
  devise_for :users
  mount FactoryScenarios::Engine => "/"
end
