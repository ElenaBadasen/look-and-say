require "look_and_say"

describe Integer do
	describe ".look_and_say" do
		context "given 1 and 5" do
		  it "returns [1, 11, 21, 1211, 111221]" do
			expect(1.look_and_say.each.take(5)).to eql([1, 11, 21, 1211, 111221])
		  end
		end
		
		context "given 10 and 3" do
		  it "returns [10, 1110, 3110]" do
			expect(10.look_and_say.each.take(3)).to eql([10, 1110, 3110])
		  end
		end
		
		context "given -5 and 8" do
		  it "raises StandardError" do
			expect { -5.look_and_say.each.take(8) }.
				to raise_error(StandardError, 'Negative input not allowed!')
		  end
		end
	end
end
