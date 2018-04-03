class Admin::Language < ApplicationRecord
	mount_uploader :image, ImageUploader
end
