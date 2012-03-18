require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
  
    before { visit root_path } 

    it {should have_selector('h1', text: 'United RV') }
    it { should have_selector('title', text: full_title('')) }
  end

  describe "Contact page" do
  
    before { visit contact_path } 

    it {should have_selector('h1', text: 'Contact Us')}
    it {should have_selector('title',
                              text: full_title('Contact Us'))}
  end

  describe "About page" do
    
    before { visit about_path }

    it {should have_selector('h1', text: 'About Us')}
    it {should have_selector('title',
                              text: full_title('About Us'))}
  end
  
  describe "Parts page" do
    before { visit parts_path }
    
    it {should have_selector('h1', text: 'Parts')}
    it {should have_selector('title',
                              text: full_title('Parts'))}
  end
  
  describe "Service page" do
    before { visit service_path }
    
    it {should have_selector('h1', text: 'Services')}
    it {should have_selector('title',
                              text: full_title('Services'))}
  end
  
  describe "News page" do

    before { visit news_path }
    
    it {should have_selector('h1', text: 'News')}
    it {should have_selector('title',
                    text: full_title('News'))}
  end
end