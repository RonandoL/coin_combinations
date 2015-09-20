class Fixnum
  define_method(:coin_combinations) do
    total_cents = self
    change = [0, 0, 0, 0]

    until total_cents == 0
      if (total_cents > 10)
        change[1] = (total_cents / 10)
      elsif (total_cents > 5)
        change[2] = (total_cents / 5)
        total_cents = (total_cents % 5)
      else
        change[3] = total_cents
        total_cents = 0
      end
    end
    return change
  end
end
