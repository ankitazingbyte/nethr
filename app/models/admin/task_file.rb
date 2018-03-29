class Admin::TaskFile < ApplicationRecord
	mount_uploader :attachment, AttachmentUploader
end
