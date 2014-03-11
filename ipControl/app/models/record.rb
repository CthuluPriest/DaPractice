class Record < ActiveRecord::Base
	validates :name, :subdivision_type, :oblast, 
            :pynkt, :street, :house, :post_index, :purpose, :technology, :tarifff, :provider, :ce_network, :pe_network, presence: true
  
  validates :ce, :pe, presence: true, uniqueness: true
  validate :correct_subnetwork

  private

  def correct_subnetwork
    if ce.present? || ce_network.present?
      errors.add(:ce, 'выбранная сеть не содержит данный ip-адрес(подсеть)') unless contained(ce_network, :ce)
    end

    if pe.present? || pe_network.present?
      errors.add(:pe, 'выбранная сеть не содержит данный ip-адрес(подсеть)') unless contained(pe_network, :pe)
    end
  end

  # Количество хостов в подсети определяется как 2^(32-N)-2, где N — длина маски. 
  def contained(wan, edge)
    ip = self.send(edge) # CE or PE value
    network = IPAddress::IPv4.new wan
    subnet = IPAddress::IPv4.new ip
    # all subnet elements must be in the host array && subnets hosts not used
    (network.include? subnet) && used?(wan, edge, subnet)
  rescue
   errors.add(edge, 'неверно задан ip-адрес') 
  end

  # def include?(oth)
  #   @prefix <= oth.prefix and network_u32 == (oth.to_u32 & @prefix.to_u32)
  # end
  #
  # def include_all?(*others)
  #   others.all? {|oth| include?(oth)}
  # end

  def used?(wan, edge, new_ip)
  Record.where("#{edge.to_s}_network" => wan).pluck(edge).each do |e|
      edge_ip = IPAddress::IPv4.new(e) # used edge ip or host
      if (edge_ip.include? new_ip) || (new_ip.include? edge_ip)
        errors.add(edge, 'данный ip-адрес уже используется')
        false
      end
    end
  end
end
