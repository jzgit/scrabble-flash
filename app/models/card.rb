class Card < ActiveRecord::Base
  #has_many :options, dependent: :destroy
  has_many :choices, dependent: :destroy
end
