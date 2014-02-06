class Card < ActiveRecord::Base
  has_many :options, dependent: :destroy
end
