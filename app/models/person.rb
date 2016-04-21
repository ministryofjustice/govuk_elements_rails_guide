class Person
  include ActiveModel::Model

  attr_accessor :name
  validates_presence_of :name

  attr_accessor :ni_number
  attr_accessor :address

  def address_attributes=(attributes)
    @address = Address.new(attributes)
  end
end