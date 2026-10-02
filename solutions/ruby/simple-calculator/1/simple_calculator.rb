class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    if !first_operand.is_a?(Integer) || !second_operand.is_a?(Integer)
      raise ArgumentError.new("error")
    elsif second_operand.zero?
      begin
        raise ZeroDivisionError.new("Division by zero is not allowed.")
      rescue ZeroDivisionError => e
        e.message
      end
    else 
      case operation
      when "+"
        first_operand + second_operand
        "#{first_operand} #{operation} #{second_operand} = #{first_operand + second_operand}"
      when "*"
        "#{first_operand} #{operation} #{second_operand} = #{first_operand * second_operand}"
      when "/"
        "#{first_operand} #{operation} #{second_operand} = #{first_operand / second_operand}"
      else
        raise UnsupportedOperation.new("unknown operation symbols")
      end
    end
  end
end
