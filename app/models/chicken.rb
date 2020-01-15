class Chicken < ApplicationRecord
  has_many :abductions 
  has_many :aliens, through: :abductions
end
