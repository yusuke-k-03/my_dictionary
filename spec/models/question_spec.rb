require 'rails_helper'

RSpec.describe Question, type: :model do
  before do
    @question = FactoryBot.build(:question)
  end
end
