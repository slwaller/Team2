module ApplicationHelper
  def user_login_links
    if user_signed_in?
      content_tag(:span, current_user.first_name, style: "color:red;") +
        (link_to "Edit", edit_user_registration_path, class: "userlinks") +
        (link_to "Log Out", destroy_user_session_path, method: :delete, class: "userlinks")
    else
      link_to "Log In", new_user_session_path, class: "userlinks"
  end
end
end
