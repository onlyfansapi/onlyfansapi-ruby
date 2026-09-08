# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::ClientSessions#create
    class ClientSessionCreateParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

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
      #   @return [Symbol, Onlyfans::Models::ClientSessionCreateParams::ProxyCountry, nil]
      optional :proxy_country, enum: -> { Onlyfans::ClientSessionCreateParams::ProxyCountry }, nil?: true

      # @!method initialize(display_name:, client_reference_id: nil, proxy_country: nil, request_options: {})
      #   @param display_name [String] Display Name of the account visible in your OnlyFansAPI Console Dashboard.
      #
      #   @param client_reference_id [String] Your Internal Reference ID for the connected account.
      #
      #   @param proxy_country [Symbol, Onlyfans::Models::ClientSessionCreateParams::ProxyCountry, nil]
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      module ProxyCountry
        extend Onlyfans::Internal::Type::Enum

        US = :us
        UK = :uk
        GB = :gb

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
