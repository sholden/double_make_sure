module DoubleMakeSure
  module DoubleExecution
    def double_make_sure
      if block_given?
        2.times { yield }
      end
    end
  end
end