class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :one_apparel_at_least

  def one_apparel_at_least
    unless(womens_apparel || mens_apparel)      
      errors.add("Stores must carry at least one of the men's or women's apparel")
    end
  end
end
