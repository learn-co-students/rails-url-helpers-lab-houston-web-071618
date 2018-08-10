class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active_status
    if self.active == false
      return "inactive"
    else
      return "active"
    end
  end

end
