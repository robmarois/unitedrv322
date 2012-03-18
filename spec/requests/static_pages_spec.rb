require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "United RV" }

  describe "Home page" do

    it "should have the h1 'United RV'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'United RV')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "United RV")
    end
    
    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Contact page" do

    it "should have the h1 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact Us')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
                        :text => "#{base_title} | Contact Us")
    end
  end

  describe "About page" do

    it "should have the h1 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                    :text => "#{base_title} | About Us")
    end
  end
  
  describe "Parts page" do

    it "should have the h1 'Parts'" do
      visit '/static_pages/parts'
      page.should have_selector('h1', :text => 'Parts')
    end

    it "should have the title 'Parts'" do
      visit '/static_pages/parts'
      page.should have_selector('title',
                    :text => "#{base_title} | Parts")
    end
  end
  
  describe "Service page" do

    it "should have the h1 'Services'" do
      visit '/static_pages/service'
      page.should have_selector('h1', :text => 'Services')
    end

    it "should have the title 'Services'" do
      visit '/static_pages/service'
      page.should have_selector('title',
                    :text => "#{base_title} | Services")
    end
  end
  
  describe "News page" do

    it "should have the h1 'News'" do
      visit '/static_pages/news'
      page.should have_selector('h1', :text => 'News')
    end

    it "should have the title 'News'" do
      visit '/static_pages/news'
      page.should have_selector('title',
                    :text => "#{base_title} | News")
    end
  end
end