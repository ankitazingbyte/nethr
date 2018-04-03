class Admin::Increment < ApplicationRecord
	
	def self.search(search)
	  if search
	    where('search LIKE ?', "%#{search}%")
	  else
	    all
	  end
	end

	def date_from
	  ["admin_increments.date >= ?", date_from] unless date_from.blank?
	end

	def date_to
	  ["admin_increments.date <= ?", date_to] unless date_to.blank?
	end
end
