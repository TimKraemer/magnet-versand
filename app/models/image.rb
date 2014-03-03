class Image < ActiveRecord::Base
	validates_uniqueness_of :url
end
