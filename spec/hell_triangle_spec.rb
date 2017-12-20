require 'hell_triangle'

RSpec.describe HellTriangle do
  describe ".verify_triangle" do
    context "verify a given triangle if its a valid one" do
      let(:hell_triangle) { HellTriangle.new() }

      it "return false if triangle equal nil" do
        result = hell_triangle.verify_triangle nil
        expect(result).to be false
      end

      it "return false if no number added" do
        result = hell_triangle.verify_triangle []
        expect(result).to be false
      end

      it "return false if just one number added" do
        result = hell_triangle.verify_triangle [2]
        expect(result).to be false
      end

      it "the real triangle" do
        result = hell_triangle.verify_triangle [[2], [2,2]]
        expect(result).to be_an_instance_of(Triangle)
      end
    end
  end
end
