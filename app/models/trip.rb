class Trip < ApplicationRecord
  belongs_to :user
  default_scope-> {order(created_at: :desc)}
  validates :user_id, presence: true
  validates :company_name, presence: true, length: {maximum:50}
  validates :starting_station, presence: true, length: {maximum:50}
  validates :destination, presence: true, length: {maximum:50}
  validates :departure, presence: true
  validates :arrival, presence: true
  validates :remaining_tickets, presence: true
  
end
