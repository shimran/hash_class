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
end
