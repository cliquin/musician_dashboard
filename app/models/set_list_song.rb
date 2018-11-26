class SetListSong < ApplicationRecord
  # Direct associations

  belongs_to :set_list,
             :counter_cache => true

  belongs_to :song,
             :counter_cache => true

  # Indirect associations

  # Validations

end
