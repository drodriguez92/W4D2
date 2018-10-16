class CatRentalRequest
  validates :start_date,:end_date,presence:true
  validates :status, inclusion: { in: %w(APPROVED DENIED),
    message: "Is not a valid gender!" }


  belongs_to :cat,
  foreign_key: :cat_id,
  class_name: :Cat,
  dependent: :destroy
end
