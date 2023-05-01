require 'rails_helper'

RSpec.describe AppConfig, type: :model do
  describe "Test Factory" do
    it "should success" do
      app_config = FactoryBot.create(:app_config)
      expect(app_config.key).not_to be_nil
      expect(app_config.value).not_to be_nil
    end
  end

  describe "Validations" do
    subject { FactoryBot.build(:app_config) }
    it { should validate_presence_of(:key)}
    it { should validate_presence_of(:value)}
  end
end
