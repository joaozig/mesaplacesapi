class Bookmark < ActiveRecord::Base
  belongs_to :place
  belongs_to :user
end
