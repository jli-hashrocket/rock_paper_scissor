require 'spec_helper'

describe Sign do
  it { should validate_presence_of(:name) }

  it "returns random sign" do
    rock = FactoryGirl.create(:sign, name: "rock")
    paper = FactoryGirl.create(:sign, name: "paper")
    scissor = FactoryGirl.create(:sign, name: "scissor")

    random = Sign.random_sign
    expect([rock.name, paper.name, scissor.name]).to include(random[0][:name])
  end
end
