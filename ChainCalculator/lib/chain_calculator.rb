class ChainCalculator
    def calculate chain
        result = 0
        splitted_chain_by_white_spaces = chain.split " "
        index = 0
        while index < splitted_chain_by_white_spaces.length
            if is_symbol splitted_chain_by_white_spaces[index]
                symbol =  splitted_chain_by_white_spaces[index]
                arithmethic_operator = cast_to_symbol(symbol.to_s)
                result = arithmethic_operator.call(result.to_i, splitted_chain_by_white_spaces[index + 1].to_i)
                index += 1
            else
                result = splitted_chain_by_white_spaces[index].to_i
            end
            index += 1
        end
        result
    end

    def cast_to_symbol character
        case character
        when "+"
            return lambda { |x, y| x + y}
        when "-"
            return lambda { |x, y| x - y}
        when "*"
            return lambda { |x, y| x * y}
        when "/"
            return lambda { |x, y| x / y}
        end
    end

    def is_symbol character
        case character
        when "+"
            true
        when "-"
            true
        when "*"
            true
        when "/"
            true
        else
            false
        end
    end
end