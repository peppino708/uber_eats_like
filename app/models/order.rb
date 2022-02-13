class Order < ApplicationRecord
  has_many :line_foods

  validates :total_price, numericality: { greater_than: 0 }


  # line_food.update_attributes!とself.save!の２つの処理に対してトランザクションを張っていることがわかります。どちらか片方でも失敗した場合にこsave_with_update_line_foods!は失敗となり、ロールバックしてくれます。
  def save_with_update_line_foods!(line_foods)
    ActiveRecord::Base.transaction do
      line_foods.each do |line_food|
        line_food.update!(active: false, order: self)
      end
      self.save!
    end
  end
end