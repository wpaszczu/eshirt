class Shirt < ActiveRecord::Base
  extend FriendlyId
    friendly_id :inscription, use: :slugged

  belongs_to :user
  has_attached_file :image
  has_attached_file :resource

validates_attachment_content_type :image,
content_type:  /^image\/(png|gif|jpeg)/,
message: "tylko obrazki pacanku"

validates_attachment_content_type :resource,
content_type: ['application/pdf'],
message: "tylko pdfki dupeczko"

validates :image, attachment_presence: true
validates :resource, attachment_presence: true

end
