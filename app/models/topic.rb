class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :date,presence: true
  validates :brand,presence: true
  validates :item,presence: true
  validates :size,presence: true
  validates :price,presence: true
  validates :description,presence: true, length: { maximum: 30 }
  validates :image,presence: true
  
  belongs_to :user
  
  mount_uploader :image, ImageUploader
  
  REGISTRABLE_ATTRIBUTES = %i(
    name
      date(1i) date(2i) date(3i)
    )
end
