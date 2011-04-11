class Project < ActiveRecord::Base
  def next
      self.class.first :conditions => ["id > ?", self.id], :limit => 1,  :order => "id asc"
  end
end
