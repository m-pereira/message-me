require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:username) }
    it { create(:user); is_expected.to validate_uniqueness_of(:username) }
    it { is_expected.to validate_presence_of(:password) }
  end

  describe 'associations' do
    it { is_expected.to have_many(:messages) }
  end
end
