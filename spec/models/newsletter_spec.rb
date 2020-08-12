require 'rails_helper'

describe Newsletter do
  context 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:date) }
    it { is_expected.to validate_presence_of(:address) }
  end

  it { is_expected.to have_many(:sections) }
end