Rails.application.routes.draw do

  get "rooms",     to: "rooms#index", as: "rooms"
  get "rooms/:id", to: "rooms#show",  as: "room"
  get "guests",     to: "guests#index", as: "guests"
  get "guests/:id", to: "guests#show",  as: "guest"
  get "reservations",     to: "reservations#index", as: "reservations"
  get "reservations/:id", to: "reservations#show",  as: "reservation"
  get "services",     to: "services#index", as: "services"
  get "services/:id", to: "services#show",  as: "service"
  root to: "rooms#index"
end
