Rails.application.routes.draw do

  #home
  get("/", :controller => "listings", :action => "homepage")


# Routes for the User resource:

  # CREATE
  post("/insert_user", { :controller => "users", :action => "create" })
          
  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:path_id", { :controller => "users", :action => "show" })
  
  # UPDATE
  post("/modify_user/:path_id", { :controller => "users", :action => "update" })
  
  # DELETE
  get("/delete_user/:path_id", { :controller => "users", :action => "destroy" })

  #------------------------------

  #USER SIGN IN-UP-OUT FORMS

    # SIGN IN-OUT-UP FORM
    get("/user_sign_up", { :controller => "users", :action => "sign_up_form" }) 
    get("/user_sign_in", { :controller => "users", :action => "sign_in_form" })
    get("/user_sign_out", { :controller => "users", :action => "destroy_cookies" })
  
    post("/user_verify_credentials", { :controller => "users", :action => "create_cookie" })
  
    # CREATE RECORD
    post("/insert_user", { :controller => "users", :action => "create"  })
    
    # READ
    get("/users", {:controller => "users", :action => "index"})
    get("/users/:the_username", {:controller => "users", :action => "show"})
  
  
    # EDIT PROFILE FORM        
    get("/edit_user_profile", { :controller => "users", :action => "edit_profile_form" })       
    # UPDATE RECORD
    post("/modify_user", { :controller => "users", :action => "update" })
    
    # DELETE RECORD
    get("/cancel_user_account", { :controller => "users", :action => "destroy" })




  # Routes for the Listing resource:

  # CREATE
  post("/insert_listing", { :controller => "listings", :action => "create" })
          
  # READ
  get("/listings", { :controller => "listings", :action => "index" })
  get("/listings/:path_id", { :controller => "listings", :action => "show" })
  
  # UPDATE
  post("/modify_listing/:path_id", { :controller => "listings", :action => "update" })
  
  # DELETE
  get("/delete_listing/:path_id", { :controller => "listings", :action => "destroy" })

  #------------------------------

  

end
