class Payment < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :group_payments
  has_many :groups, through: :group_payments
  validates :name, :amount, presence: true
  validates :amount, numericality: { greater_than: 0 }
end
