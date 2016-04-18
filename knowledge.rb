class Module
  def attribute(atr, by_default=nil, &blok)

    define_method("#{atr}=") {|x| instance_variable_set "@#{atr}", x }

    define_method(atr) { instance_variable_get "@#{atr}" }

    define_method("#{atr}?") { not send(atr).nil? }

  end
end
