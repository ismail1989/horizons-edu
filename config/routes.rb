Rails.application.routes.draw do
  
  scope "(:locale)", locale: /en|ar/ do
    devise_for :users
    root "pages#index"
    get '/pages/about', to: 'pages#about'
    get '/pages/blog', to: 'pages#blog'
    get '/pages/faqs', to: 'pages#faqs'
    get '/pages/members', to: 'pages#members'
    get '/pages/contactus', to: 'pages#contactus'
    get '/pages/paths', to: 'pages#paths'    
    
    get '/pages/marketing', to: 'pages#marketing' 
    get '/pages/design', to: 'pages#design' 
    get '/pages/it', to: 'pages#it'     
    get '/pages/lang', to: 'pages#lang'    
    
    
    get '/courses/inbound', to: 'courses#inbound' 
    get '/courses/facebook', to: 'courses#facebook'     
    get '/courses/adword', to: 'courses#adword'  
    
    get '/cta/distancelearning', to: 'cta#distancelearning' 
    get '/cta/pathway', to: 'cta#pathway'     
    get '/cta/certificate', to: 'cta#certificate' 
    
    resources :blogs
  end
  # match '*path', to: redirect("/#{I18n.default_locale}/%{path}")
  # match '', to: redirect("/#{I18n.default_locale}")
  # resources :blogs
  # devise_for :users
  # root "pages#index"

end
