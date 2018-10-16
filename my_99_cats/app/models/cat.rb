require 'byebug'
class Cat < ApplicationRecord
  CAT_COLORS = [:black, :green, :white, :orange, :brown]
  include ActionView::Helpers::DateHelper
  validates :sex, inclusion: { in: %w(M F),
    message: "Is not a valid gender!" }

  validates :color, inclusion: { in: %w(Black Green White Orange Brown),
    message: "Is not a valid Color!" }
  validates :birth_date,:name,:text,:color,presence:true

  has_many :cat_requests,
  foreign_key: :cat_id,
  class_name: :CatRentalRequest
  



  def age
    # debugger
    @birth_date = birth_date
    # DateTime.new(@birth_date)
    return ((DateTime.now - @birth_date) / 365 ).to_i
    # b = DateTime.now
    # return (a - b) / 365
  end




end
