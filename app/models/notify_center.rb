class NotifyCenter < ActiveRecord::Base
  attr_accessible :checked, :conditions, :content, :time, :title
end
