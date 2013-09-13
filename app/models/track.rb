class Track < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to(
    :album,
    class_name: "Album",
    foreign_key: :album_id,
    primary_key: :id
  )
end
