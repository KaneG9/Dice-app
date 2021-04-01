require 'dice'

describe Dice do
  it "Allows user to create an instance of dice" do
    expect(subject).to be_an_instance_of(Dice)
  end
  it "Allows user to roll the dice" do
    expect(subject).to respond_to(:roll)
  end
  it "Dice roll returns a number between 1 and 6" do
    expect(subject.roll).to be_between(1, 6)
  end
  it "Roll can roll any number of dice" do
    expect(subject).to respond_to(:roll).with(1).arguments
  end
  it "Program records each dice roll" do
    expect{subject.roll}.to change(subject.values, :size).by(1)
  end
  it "Score calculate score of rolls" do
    rand(10).times {subject.roll}
    expect(subject.score).to eq(subject.values.sum)
  end
end