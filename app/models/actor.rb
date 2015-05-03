class Actor < ActiveRecord::Base

  def is? (role)
    self.type == role.to_s
  end
end
