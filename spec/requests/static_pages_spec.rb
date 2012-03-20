require 'spec_helper'

describe "Static pages" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1',    text: heading) }
    it { should have_selector('title', text: full_title(page_title)) }
  end
  
  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: full_title('About Us')
    click_link "Parts"
    page.should have_selector 'title', text: full_title('Parts')
    click_link "Services"
    page.should have_selector 'title', text: full_title('Services')
    click_link "Contact"
    page.should have_selector 'title', text: full_title('Contact Us')
    click_link "Home"
    page.should have_selector 'title', text: full_title('')
  end
  
  describe "Home page" do
  
    before { visit root_path }
    let(:heading)    { 'United RV' }
    let(:page_title) { '' } 

    it_should_behave_like "all static pages"
    it { should_not have_selector 'title', text: '| Home' }
  end

  describe "Contact page" do
  
    before { visit contact_path } 
    let(:heading)    { 'Contact Us' }
    let(:page_title) { 'Contact' } 

    it_should_behave_like "all static pages"
    
  end

  describe "About page" do
    
    before { visit about_path }
    let(:heading)    { 'About Us' }
    let(:page_title) { 'About Us' } 

    it_should_behave_like "all static pages"
  end
  
  describe "Parts page" do
    before { visit parts_path }
    let(:heading)    { 'Parts' }
    let(:page_title) { 'Parts' } 

    it_should_behave_like "all static pages"
  end
  
  describe "Service page" do
    before { visit service_path }
    let(:heading)    { 'Services' }
    let(:page_title) { 'Services' } 

    it_should_behave_like "all static pages"
  end
  
  describe "News page" do

    before { visit news_path }
    let(:heading)    { 'News' }
    let(:page_title) { 'News' } 

    it_should_behave_like "all static pages"
  end
end