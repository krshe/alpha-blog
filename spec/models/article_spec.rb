require 'rails_helper'

RSpec.describe Article, type: :model do
  subject { Article.new(title: "Title123", description: "Description12") }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    subject.title=nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a description" do
    subject.description=nil
    expect(subject).to_not be_valid
  end

  it "is not valid if the title is not at least 8 characters long" do
    expect(subject.title.length).to be >= 8
  end

  it "is not valid if the description is not at least 13 characters long" do
    expect(subject.description.length).to be >= 13
  end

end
