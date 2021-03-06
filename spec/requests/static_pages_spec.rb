require 'spec_helper'

describe "StaticPages" do
  describe "GET /home" do
    it "should have the content 'Home'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).not_to have_title(" | Home")
    end
  end
  describe "help page" do
  	it "should have the content 'Help'" do
  	  visit '/static_pages/help'
  	  expect(page).to have_content('Help')
  	end
  	it "should have the right title" do
  	  visit '/static_pages/help'
  	  expect(page).to have_title("Ruby on Rails Tutorial Sample App")
  	end
  	it "should have not a custom page title" do
  	  visit '/static_pages/help'
  	  expect(page).not_to have_title("|help")
  	end
  end
  describe "About page" do
  	it "should have the content 'About'" do
  	  visit '/static_pages/about'
  	  expect(page).to have_content('About')
  	end
  	it "should have the right title"  do
  	  visit '/static_pages/about'
  	  expect(page).to have_title("Ruby on Rails Tutorial Sample App")
  	end
  	it "should not have a coustom title" do
  	  visit '/static_pages/about'
  	  expect(page).not_to have_title("|About")
  	end 
  end
end
