require File.join(File.dirname(__FILE__), "..", "spec_helper")

describe Stargate::Model::Record do

  describe "Init" do

    it "should be successfuly when has the such instance variable" do
      class Stargate::Model::Record ; attr_accessor :a ; end
      record = Stargate::Model::Record.new({:a => 1})
      record.a.should == 1
    end

    it "should be not set the attribute when no such instance variable" do
      record = Stargate::Model::Record.new({:a => 1})
      lambda{record.sent(:a)}.should raise_error NoMethodError
    end

  end

end
