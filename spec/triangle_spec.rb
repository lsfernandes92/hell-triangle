require 'triangle'

RSpec.describe Triangle do
  describe ".<<" do
    context "add some elements" do
      let(:triangle) { Triangle.new() }

      it "return empty if no number added" do
        triangle<<[]
        expect(triangle.empty?).to be true
      end

      it "return empty if triangle is nil" do
        triangle<<nil
        expect(triangle.empty?).to be true
      end

      it "possible to put element on it" do
        triangle<<[2]
        expect(triangle.total_lines).to eq(1)
      end
    end
  end

  describe ".total_lines" do
    context "get sizes of triangle" do
      let(:triangle) { Triangle.new() }

      it "verify size after added nil" do
        triangle<<nil
        expect(triangle.total_lines).to eq(0)
      end

      it "validate size if no number added" do
        triangle<<[]
        expect(triangle.total_lines).to eq(0)
      end

      it "validate size if number added" do
        triangle<<[2]
        expect(triangle.total_lines).to eq(1)
      end
    end
  end

  describe ".is_triangle?" do
    context "garantee that the input is an triangle" do
      let(:triangle) { Triangle.new() }

      it "not triangle if nil added" do
        triangle<<nil
        expect(triangle.is_triangle?).to be false
      end

      it "not triangle if no number added" do
        triangle<<[]
        expect(triangle.is_triangle?).to be false
      end

      it "not triangle if just one element added" do
        triangle<<[2]
        expect(triangle.is_triangle?).to be false
      end

      it "the real triangle" do
        triangle<<[2]<<[2,2]
        expect(triangle.is_triangle?).to be true
      end
    end
  end

  describe ".empty?" do
    context "test possibilities of triangle been empty" do
      let(:triangle) { Triangle.new() }

      it "should be empty if nil added" do
        triangle<<nil
        expect(triangle.empty?).to be true
      end

      it "should be empty if no number added" do
        triangle<<[]
        expect(triangle.empty?).to be true
      end

      it "shouldn't be empty if just one element added" do
        triangle<<[2]
        expect(triangle.empty?).to be false
      end
    end
  end
end
