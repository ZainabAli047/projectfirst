class Photo < ApplicationRecord
  belongs_to :profile
  mount_uploader :pics, AvatarUploader
end
