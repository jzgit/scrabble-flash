class CardSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :letter
  has_many :choices
end
