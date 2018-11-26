class Song < ApplicationRecord
  # Direct associations

  belongs_to :status,
             :counter_cache => true

  has_many   :set_list_songs,
             :dependent => :destroy

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

end
