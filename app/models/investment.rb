class Investment < ApplicationRecord
  belongs_to :wallet
  has_many :tickets
  has_many :stocks
end
