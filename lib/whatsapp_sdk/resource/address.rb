# frozen_string_literal: true

module WhatsappSdk
  module Resource
    class Address
      attr_accessor :street, :city, :state, :zip, :country, :country_code, :typ

      module ADDRESS_TYPE
        HOME = "HOME",
        WORK = "WORK"
      end

      def initialize(street:, city:, state:, zip:, country:, country_code:, type: ADDRESS_TYPE::HOME)
        @street = street
        @city = city
        @state = state
        @zip = zip
        @country = country
        @country_code = country_code
        @type = type
      end

      def to_h
        {
          street: @street,
          city: @city,
          state: @state,
          zip: @zip,
          country: @country,
          country_code: @country_code,
          type: @type
        }
      end
    end
  end
end
