require 'spec_helper'

describe ActiveSupport::TestCase do
  class TestCase < ActiveSupport::TestCase
    double_make_sure_that "truth"
  end

  it "allows twice as advanced testing" do
    ActiveSupport::TestCase.singleton_methods.should include(:double_make_sure_that)
  end

  it "is twice as confident" do
    TestCase.instance_methods(false).should include(:test_truth)
    TestCase.instance_methods(false).should include(:test_double_make_sure_truth)
  end
end