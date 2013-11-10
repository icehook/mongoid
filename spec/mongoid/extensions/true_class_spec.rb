require "spec_helper"

describe Mongoid::Extensions::TrueClass do

  describe "#__sortable__" do

    it "returns 1" do
      expect(true.__sortable__).to eq(1)
    end
  end

  describe "#is_a?" do

    context "when provided a Boolean" do

      it "returns true" do
        expect(true.is_a?(Boolean)).to be_truthy
      end
    end

    context "when provided a FalseClass" do

      it "returns false" do
        expect(true.is_a?(FalseClass)).to be_falsey
      end
    end

    context "when provided a TrueClass" do

      it "returns true" do
        expect(true.is_a?(TrueClass)).to be_truthy
      end
    end

    context "when provided an invalid class" do

      it "returns false" do
        expect(false.is_a?(String)).to be_falsey
      end
    end
  end
end
