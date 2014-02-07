class ChoiceSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :word, :correct
  has_one :card
end
