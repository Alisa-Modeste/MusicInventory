class Band < ActiveRecord::Base
  attr_accessible :name

  has_many(
    :albums,
    class_name: "Album",
    :dependent => :destroy,
    foreign_key: :band_id,
    primary_key: :id
  )

  has_many(
    :tracks,
    through: :albums
  )


end
