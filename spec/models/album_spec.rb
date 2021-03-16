require 'rails_helper'

describe Album do
  it { should have_many(:songs) }

  # this is also good for passwords
  # it cants have more than 100chars
  it { should validate_length_of(:name).is_at_most(100) }

  # Checks if name is set to valid or not
  it { should validate_presence_of :name }

  # this will check if our albums is "titleized".
  describe Album do
    it("titleizes the name of an album") do
      album = Album.create({name: "giant steps", genre: "jazz"})
      expect(album.name()).to(eq("Giant Steps"))
    end
  end
  
end