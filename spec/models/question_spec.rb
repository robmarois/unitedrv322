require 'spec_helper'

describe Question do

  before do
    @question = Question.new(name: "Example User", email: "user@example.com",
                     phone: "555-555-1212", question: "I need to ask you...")
  end

  subject { @question }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:phone) }
  it { should respond_to(:question) }
  
  describe "when name is not present" do
    before { @question.name = " " }
    it { should_not be_valid }
  end
  
  describe "when email is not present" do
    before { @question.email = " " }
    it { should_not be_valid }
  end
  
  describe "when name is too long" do
    before { @question.name = "a" * 51 }
    it { should_not be_valid }
  end
  
  describe "when phone is too long" do
    before { @question.phone = "a" * 21 }
    it { should_not be_valid }
  end
  
  describe "when question is too long" do
    before { @question.question = "a" * 1001 }
    it { should_not be_valid }
  end
  
  describe "when email format is invalid" do
    invalid_addresses =  %w[user@foo,com user_at_foo.org example.user@foo.]
    invalid_addresses.each do |invalid_address|
      before { @question.email = invalid_address }
      it { should_not be_valid }
    end
  end

  describe "when email format is valid" do
    valid_addresses = %w[user@foo.com A_USER@f.b.org frst.lst@foo.jp a+b@baz.cn]
    valid_addresses.each do |valid_address|
      before { @question.email = valid_address }
      it { should be_valid }
    end
  end
end