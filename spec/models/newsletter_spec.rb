require 'rails_helper'

describe Newsletter do
  it 'is valid with valid attributes' do
    newsletter_attributes = attributes_for(:newsletter)
    expect(Newsletter.new(newsletter_attributes)).to be_valid
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:date) }
    it { is_expected.to validate_presence_of(:address) }
  end

  it { is_expected.to have_many(:sections) }
end
