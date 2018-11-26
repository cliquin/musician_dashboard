Rails.application.routes.draw do
  # Routes for the Status resource:

  # CREATE
  get("/statuses/new", { :controller => "statuses", :action => "new_form" })
  post("/create_status", { :controller => "statuses", :action => "create_row" })

  # READ
  get("/statuses", { :controller => "statuses", :action => "index" })
  get("/statuses/:id_to_display", { :controller => "statuses", :action => "show" })

  # UPDATE
  get("/statuses/:prefill_with_id/edit", { :controller => "statuses", :action => "edit_form" })
  post("/update_status/:id_to_modify", { :controller => "statuses", :action => "update_row" })

  # DELETE
  get("/delete_status/:id_to_remove", { :controller => "statuses", :action => "destroy_row" })

  #------------------------------

  # Routes for the Set list song resource:

  # CREATE
  get("/set_list_songs/new", { :controller => "set_list_songs", :action => "new_form" })
  post("/create_set_list_song", { :controller => "set_list_songs", :action => "create_row" })

  # READ
  get("/set_list_songs", { :controller => "set_list_songs", :action => "index" })
  get("/set_list_songs/:id_to_display", { :controller => "set_list_songs", :action => "show" })

  # UPDATE
  get("/set_list_songs/:prefill_with_id/edit", { :controller => "set_list_songs", :action => "edit_form" })
  post("/update_set_list_song/:id_to_modify", { :controller => "set_list_songs", :action => "update_row" })

  # DELETE
  get("/delete_set_list_song/:id_to_remove", { :controller => "set_list_songs", :action => "destroy_row" })

  #------------------------------

  # Routes for the Set list resource:

  # CREATE
  get("/set_lists/new", { :controller => "set_lists", :action => "new_form" })
  post("/create_set_list", { :controller => "set_lists", :action => "create_row" })

  # READ
  get("/set_lists", { :controller => "set_lists", :action => "index" })
  get("/set_lists/:id_to_display", { :controller => "set_lists", :action => "show" })

  # UPDATE
  get("/set_lists/:prefill_with_id/edit", { :controller => "set_lists", :action => "edit_form" })
  post("/update_set_list/:id_to_modify", { :controller => "set_lists", :action => "update_row" })

  # DELETE
  get("/delete_set_list/:id_to_remove", { :controller => "set_lists", :action => "destroy_row" })

  #------------------------------

  # Routes for the Song resource:

  # CREATE
  get("/songs/new", { :controller => "songs", :action => "new_form" })
  post("/create_song", { :controller => "songs", :action => "create_row" })

  # READ
  get("/songs", { :controller => "songs", :action => "index" })
  get("/songs/:id_to_display", { :controller => "songs", :action => "show" })

  # UPDATE
  get("/songs/:prefill_with_id/edit", { :controller => "songs", :action => "edit_form" })
  post("/update_song/:id_to_modify", { :controller => "songs", :action => "update_row" })

  # DELETE
  get("/delete_song/:id_to_remove", { :controller => "songs", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
