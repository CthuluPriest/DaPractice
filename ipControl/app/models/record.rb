class Record < ActiveRecord::Base
	validates :name, :subdivision_type, :oblast, 
            :pynkt, :street, :house, :post_index, :purpose, :technology, :tarifff, :provider, :ce_network, :pe_network, presence: true
  
  validates :ce, :pe, presence: true, uniqueness: true
  validate :correct_subnetwork

  private

  def correct_subnetwork
    if ce.present? || ce_network.present?
      errors.add(:ce, 'выбранная сеть не содержит данный ip-адрес(подсеть)') unless check_inclusion(ce_network, :ce)
    end

    if pe.present? || pe_network.present?
      errors.add(:pe, 'выбранная сеть не содержит данный ip-адрес(подсеть)') unless check_inclusion(pe_network, :pe)
    end
  end

  def check_inclusion(wan, edge)
    ip = self.send(edge) # CE or PE value
    network = IPAddress::IPv4.new wan
    hosts = network.hosts.map { |i| i.to_s } # all hosts in network
    sub = IPAddress::IPv4.new ip
    # Количество хостов в подсети определяется как 2^(32-N)-2, где N — длина маски. 
    return false if sub.prefix < network.prefix
    if sub.prefix == 32
      (hosts.include? sub.address) && method_name(sub.address, edge)
    else
      subnet = sub.hosts.map { |e| e.to_s  }
      # return false unless (subnet - hosts).size == 0 # all subnet elements must be in the host array
      # end
      (subnet - hosts).size == 0 # all subnet elements must be in the host array
    end       
  rescue
   errors.add(edge, 'неверно задан ip-адрес')
  end
end


def method_name(new_ip, edge)
  Record.pluck(edge).each do |e|
    edge_ip_arr = IPAddress::IPv4.new(e).hosts.map {|m| m.to_s}
    if edge_ip_arr.include? (new_ip)
      errors.add(edge, 'данный ip-адрес уже используется')
      false
    end
  end
end
