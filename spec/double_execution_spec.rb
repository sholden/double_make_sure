require 'spec_helper'

describe DoubleMakeSure::DoubleExecution do
  it "allows the developer to make doubly sure that a block of code gets executed" do
    receiver = double(:object)
    receiver.stub(:execute)
    receiver.should_receive(:execute).twice
    double_make_sure { receiver.execute }
  end
end