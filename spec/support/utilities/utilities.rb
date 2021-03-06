def full_title(page_title)
  base_title = "United RV"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end

def sign_in(user)
  visit signin_path
  fill_in "Email",    with: user.email
  fill_in "Password", with: user.password
  click_button "Sign in"
  # Sign in when not using Capybara as well.
  cookies[:remember_token] = user.remember_token
end

def support_email(question)
  visit contact_path
  fill_in "Name",     with: question.name
  fill_in "Email",    with: question.email
  fill_in "Phone",    with: question.phone
  fill_in "Phone",    with: question.question
end


RSpec::Matchers.define :have_error_message do |message|
  match do |page|
    page.should have_selector('div.alert.alert-error', text: message)
  end
end