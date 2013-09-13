class User < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many(
    :notes,
    class_note: "Note",
    foreign_key: :note_id,
    primary_key: :id
  )

end
