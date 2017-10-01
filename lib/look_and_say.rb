class Integer
	def look_and_say 
		raise 'Negative input not allowed!' if self < 0
		look_and_say_sequence = Enumerator.new do |yielder| 
            number = self
            loop do 
                yielder.yield number 
                result = number.to_s.split('').inject([]) do |result, i|
                    if i == result.last
                        result[-2] += 1    
                    else
                        result += [1, i] 
                    end
                    result
                end
                number = result.join.to_i
            end 
        end
	end
end
