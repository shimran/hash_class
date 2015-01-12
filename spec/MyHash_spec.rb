require('rspec')
require('MyHash')
require('pry')

describe(MyHash) do
  describe("#fetch") do

    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      expect(test_hash.fetch("kitten")).to(eq("cute"))
    end

    it("retrieves any stored value by its key") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      test_hash.store("cat", "nasty")
      expect(test_hash.fetch("cat")).to(eq("nasty"))
    end
  end
  describe("#has_key?") do
    it("returns false a key that is not stored") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cat")
      expect(test_hash.has_key?("dog")).to(eq(false))
    end
  end

    describe("#has_value?") do
      it("returns false a value that is not stored") do
        test_hash = MyHash.new()
        test_hash.store("kitten", "cat")
        expect(test_hash.has_value?("friendly")).to(eq(false))
      end
    end
end
