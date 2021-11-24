require 'rails_helper'

RSpec.describe Student, type: :model do
  context "Create a student" do
    it "creates a student " do
    student = FactoryBot.create(:student)
    expect(student.valid?).to eq(true)
    end
  end
end
