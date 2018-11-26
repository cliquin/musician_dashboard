class SetList < ApplicationRecord
  # Direct associations

  has_many   :set_list_songs,
             :dependent => :destroy

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  has_many   :songs,
             :through => :set_list_songs,
             :source => :song

  # Validations

end
