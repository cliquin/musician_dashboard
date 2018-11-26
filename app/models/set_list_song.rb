class SetListSong < ApplicationRecord
  # Direct associations

  belongs_to :song,
             :counter_cache => true

  # Indirect associations

  # Validations

end
