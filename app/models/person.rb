class Person
  include ActiveModel::Model

  attr_accessor :address
  attr_accessor :name
  attr_accessor :ni_number
  attr_accessor :location
  attr_accessor :locked
  attr_accessor :waste_transport

  validates_presence_of :name

  def address_attributes=(attributes)
    @address = Address.new(attributes)
  end

  def waste_transport_attributes=(attributes)
    @address = WasteTransport.new(attributes)
  end

end

