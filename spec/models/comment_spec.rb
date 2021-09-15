require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject {
    described_class.new(message: "Hello",
                        user_id: 1,
                        post_id: 1)
  }
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  
  it "is not valid without a message" do
    subject.message = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a user_id" do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a post_id" do
    subject.post_id = nil
    expect(subject).to_not be_valid
  end

  it "has default likes of 0" do
    expect(subject.likes).to eq(0)
  end
end
