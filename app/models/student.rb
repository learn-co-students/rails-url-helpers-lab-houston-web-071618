class Student < ActiveRecord::Base
 # attr_accessor :active

  def to_s
    self.first_name + " " + self.last_name
  end

  def isactive
  	if self.active == false
  		return "inactive"
  	else
  		return "active"
  	end

  end

end