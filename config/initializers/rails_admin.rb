RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true


<<<<<<< HEAD
  # METHODE QUI PERMET DE VERIFIER SI UN UTILISATEUR EST ADMIN OU PAS POUR LE DASHBOARD
  config.authorize_with do
    redirect_to main_app.root_path unless (!current_user.nil? && current_user.admin == true)
  end
=======
# METHODE QUI PERMET DE VERIFIER SI UN UTILISATEUR EST ADMIN OU PAS POUR LE DASHBOARD
config.authorize_with do
   redirect_to main_app.root_path unless (!current_user.nil? && current_user.admin == true)
 end
>>>>>>> c75ebc8a270cc1689337f681ed2c822541eb6ebd


  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
