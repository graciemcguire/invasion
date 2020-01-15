class Alien < ApplicationRecord
  has_many :abductions
  has_many :chickens, through: :abductions
end
