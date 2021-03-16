class Album < ApplicationRecord
  before_save(:titleize_album)
  # validates the :name attr
  validates :name, presence: true
  # destroy songs when album is deleted
  has_many :songs, dependent: :destroy

  private
    def titleize_album
      self.name = self.name.titleize
    end
end