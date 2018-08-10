class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active_status
    self.active == true ? "active" : "inactive"
  end

  def change_status
    # byebug
    self.active == true ? self.active = false : self.active = true
    self.save
    self
  end
end
