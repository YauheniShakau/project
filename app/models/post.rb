class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates_presence_of :title, :description, :body
  ratyrate_rateable "Rating"
  scope :with_ratings, ->{includes(:rate_average_without_dimension).order("rating_caches.avg desc")}
  has_one :rate_average_without_dimension, -> { where dimension: nil}, :as => :cacheable, :class_name => "RatingCache", :dependent => :destroy
end