class Sign < ActiveRecord::Base
  validates_presence_of :name

  def self.random_sign
    self.all.sample(1)
  end
end
