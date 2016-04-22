class Person
  include ActiveModel::Model

  attr_accessor :address
  attr_accessor :has_user_account
  attr_accessor :location
  attr_accessor :name
  attr_accessor :ni_number

  validates_presence_of :name

  def address_attributes=(attributes)
    @address = Address.new(attributes)
  end
end