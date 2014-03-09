class Wan < ActiveRecord::Base
  validates :wan, presence: true, uniqueness: true
  validate :ip_validation

  private
  
  def ip_validation
    IPAddress::IPv4.new wan
  rescue
    errors.add(:wan, 'Неверный формат IP') 
  end
end
