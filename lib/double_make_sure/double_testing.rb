module DoubleMakeSure
  module DoubleTesting
    def double_make_sure_that(name, &block)
      test(name, &block)
      test("double make sure #{name}", &block)
    end
  end
end