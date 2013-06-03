require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have h1 'Gogia Sales'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Gogia Sales')
    end
	it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Gogia Sales | Home")
    end
  end
describe "Help page" do

    it "should have h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
	it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "Gogia Sales | Help")
    end
  end
describe "About Page" do
	it "should have h1 'About'" do
		visit '/static_pages/about'
		page.should have_selector('h1', :text => 'About')
	end
	it "should have the title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                        :text => "Gogia Sales | About")
    end
	end
end