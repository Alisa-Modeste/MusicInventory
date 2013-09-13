class Track < ActiveRecord::Base
  attr_accessible :album_id, :number

  belongs_to(
    :album,
    class_name: "Album",
    foreign_key: :album_id,
    primary_key: :id
  )
end