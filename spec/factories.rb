FactoryGirl.define do
	factory :user do
		name     "Hans Gogia"
		email    "contact@hansgogia.com"
		password "foobar"
		password_confirmation "foobar"
	end
end