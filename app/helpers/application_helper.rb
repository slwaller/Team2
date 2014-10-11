module ApplicationHelper
  def user_login_links
    if user_signed_in?
        (link_to "SETTINGS", edit_user_registration_path, class: "userlinks") +
        (link_to "LOG OUT", destroy_user_session_path, method: :delete, class: "userlinks")
    else
      link_to "Log In", new_user_session_path, class: "userlinks"
  end
end
end
