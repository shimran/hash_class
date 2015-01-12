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
binding.pry
      end
    end
  end

  end
