require 'rails_helper'

RSpec.describe Person, type: :model do
  it "is valid with valid attributes" do
    subject.name = "Tom Smith"
    subject.ni_number= 'ZZ1923314C'
    subject.locked= 'No'
    expect(subject).to be_valid
  end

  it "is invalid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
