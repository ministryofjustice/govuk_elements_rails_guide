class Address
  include ActiveModel::Model

  attr_accessor :address
  attr_accessor :postcode
  validates_presence_of :postcode

end
