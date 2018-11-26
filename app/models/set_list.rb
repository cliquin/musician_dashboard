class SetList < ApplicationRecord
  # Direct associations

  has_many   :set_list_songs,
             :dependent => :destroy

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

end
