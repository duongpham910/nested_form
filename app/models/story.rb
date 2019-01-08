class Story < ApplicationRecord
  has_many :comments

  accepts_nested_attributes_for :comments,
    allow_destroy: true,
    reject_if: proc {|attributes| attributes[:content].blank?}
end
