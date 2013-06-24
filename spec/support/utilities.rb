def full_title(page_title)
  base_title = "Gogia Sales"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end
def sign_in(user)
	visit signin_path
	fill_in "session_email",    with: user.email.upcase
	fill_in "session_password", with: user.password
	click_button "Sign in"
	cookies[:remember_token] = user.remember_token
end