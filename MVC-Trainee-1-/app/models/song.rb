class Song < ApplicationRecord
  belongs_to :explicity
  belongs_to :gender
  belongs_to :album
end
