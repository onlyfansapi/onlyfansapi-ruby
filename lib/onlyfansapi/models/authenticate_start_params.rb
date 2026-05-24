# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Authenticate#start
    class AuthenticateStartParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute email
      #   The email address of the OnlyFans account
      #
      #   @return [String]
      required :email, String

      # @!attribute password
      #   The password of the OnlyFans account
      #
      #   @return [String]
      required :password, String

      # @!attribute proxy_country
      #   The country of the proxy server you want to use. Eg. "us" for United States
      #
      #   @return [Symbol, Onlyfansapi::Models::AuthenticateStartParams::ProxyCountry]
      required :proxy_country,
               enum: -> { Onlyfansapi::AuthenticateStartParams::ProxyCountry },
               api_name: :proxyCountry

      # @!method initialize(email:, password:, proxy_country:, request_options: {})
      #   @param email [String] The email address of the OnlyFans account
      #
      #   @param password [String] The password of the OnlyFans account
      #
      #   @param proxy_country [Symbol, Onlyfansapi::Models::AuthenticateStartParams::ProxyCountry] The country of the proxy server you want to use. Eg. "us" for United States
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      # The country of the proxy server you want to use. Eg. "us" for United States
      module ProxyCountry
        extend Onlyfansapi::Internal::Type::Enum

        US = :us
        UK = :uk
        DE = :de
        ES = :es
        FR = :fr
        IT = :it
        UA = :ua
        PL = :pl
        RO = :ro
        CZ = :cz
        HU = :hu
        SK = :sk

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
