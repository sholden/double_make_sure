require "double_make_sure/version"
require "double_make_sure/version"
require 'double_make_sure/double_execution'
require 'double_make_sure/double_execution'
require 'double_make_sure/double_testing'
require 'double_make_sure/double_testing'

require 'active_support'
require 'active_support'
require 'active_support/test_case'
require 'active_support/test_case'

module DoubleMakeSure
  Object.send(:include, DoubleExecution)
  ActiveSupport::TestCase.extend(DoubleTesting)
end

