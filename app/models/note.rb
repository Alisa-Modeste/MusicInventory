class Note < ActiveRecord::Base
  attr_accessible :track_id, :note, :user_id

  belongs_to(
    :track,
    class_name: "Track",
    foreign_key: :track_id,
    primary_key: :id
  )

  #EDIT
  # belongs_to(
  #   :user,
  #   class_name: "User",
  #   foreign_key: :user_id,
  #   primary_key: :id
  # )
end
