# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::ClientSessions#create
    class ClientSessionCreateParams < Onlyfansapi::Internal::Type::BaseModel
      extend Onlyfansapi::Internal::Type::RequestParameters::Converter
      include Onlyfansapi::Internal::Type::RequestParameters

      # @!attribute display_name
      #   Display Name of the account visible in your OnlyFansAPI Console Dashboard.
      #
      #   @return [String]
      required :display_name, String

      # @!attribute client_reference_id
      #   Your Internal Reference ID for the connected account.
      #
      #   @return [String, nil]
      optional :client_reference_id, String

      # @!attribute proxy_country
      #
      #   @return [Symbol, Onlyfansapi::Models::ClientSessionCreateParams::ProxyCountry, nil]
      optional :proxy_country, enum: -> { Onlyfansapi::ClientSessionCreateParams::ProxyCountry }, nil?: true

      # @!method initialize(display_name:, client_reference_id: nil, proxy_country: nil, request_options: {})
      #   @param display_name [String] Display Name of the account visible in your OnlyFansAPI Console Dashboard.
      #
      #   @param client_reference_id [String] Your Internal Reference ID for the connected account.
      #
      #   @param proxy_country [Symbol, Onlyfansapi::Models::ClientSessionCreateParams::ProxyCountry, nil]
      #
      #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]

      module ProxyCountry
        extend Onlyfansapi::Internal::Type::Enum

        US = :us
        UK = :uk

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
