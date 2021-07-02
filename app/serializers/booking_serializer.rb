class BookingSerializer < ActiveModel::Serializer
  attributes :id, :date, :clown, :user
end
