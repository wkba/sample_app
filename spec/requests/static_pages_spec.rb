require 'spec_helper'

describe "StaticPages" do
  describe "GET /home" do
    it "should have the content 'Home'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit home_path
      expect(page).to have_content('Sample App')
    end
    it "should have the right title" do
      visit home_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
    it "should have the right title" do
      visit home_path
      expect(page).not_to have_title(" | Home")
    end
  end
  describe "help page" do
  	it "should have the content 'Help'" do
  	  visit help_path
  	  expect(page).to have_content('Help')
  	end
  	it "should have the right title" do
  	  visit help_path
  	  expect(page).to have_title("Ruby on Rails Tutorial Sample App")
  	end
  	it "should have not a custom page title" do
  	  visit help_path
  	  expect(page).not_to have_title("|help")
  	end
  end
  describe "About page" do
  	it "should have the content 'About'" do
  	  visit about_path
  	  expect(page).to have_content('About')
  	end
  	it "should have the right title"  do
  	  visit about_path
  	  expect(page).to have_title("Ruby on Rails Tutorial Sample App")
  	end
  	it "should not have a coustom title" do
  	  visit about_path
  	  expect(page).not_to have_title("|About")
  	end 
  end
  describe "contact page" do
    it "should have the content 'contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end
    it "should have the right title"  do
      visit contact_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
    it "should not have a coustom title" do
      visit contact_path
      expect(page).not_to have_title("|Contact")
    end 
  end
end
