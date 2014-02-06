class OptionSerializer < ActiveModel::Serializer
  attributes :id, :correct, :word
  belongs_to :card
end
