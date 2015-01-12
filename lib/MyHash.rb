class MyHash
  define_method(:initialize) do
    @keys = []
    @values = []
  end

  define_method(:store) do |key, value|
    @keys.push(key)
    @values.push(value)
  end

  define_method(:fetch) do |key|
    @keys.each_with_index() do |noun, num|
      if noun == key
      return @values[num]
      end
    end
  end

  define_method(:has_key?) do |key|
    @keys.each() do |noun|
      if key == noun
        return true
      else
        return false
      end
    end
  end

  define_method(:has_value?) do |value|
    @values.each() do |adjective|
      if value == adjective
        return true
      else
        return false
      end
    end
  end

end
