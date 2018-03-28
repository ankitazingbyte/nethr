class Admin::Document < ApplicationRecord
	mount_uploader :attachment, AttachmentUploader
end
