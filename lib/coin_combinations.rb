class Fixnum
  define_method(:coin_combinations) do
    cents = self
    change = [0, 0, 0, 0]

    change[3] = cents
    change
  end
end
