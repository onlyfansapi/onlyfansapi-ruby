# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Settings
      # @see Onlyfansapi::Resources::Settings::BlockedCountries#update
      class BlockedCountryUpdateParams < Onlyfansapi::Internal::Type::BaseModel
        extend Onlyfansapi::Internal::Type::RequestParameters::Converter
        include Onlyfansapi::Internal::Type::RequestParameters

        # @!attribute account
        #
        #   @return [String]
        required :account, String

        # @!attribute blocked_countries
        #   List of all ISO 3166-1 alpha-2 country codes to block including existing ones.
        #   If you want to unblock all countries, set this to an empty array or `null`.
        #
        #   @return [Array<String>]
        required :blocked_countries, Onlyfansapi::Internal::Type::ArrayOf[String], api_name: :blockedCountries

        # @!attribute blocked_states
        #   Blocked states payload forwarded to OnlyFans. Defaults to an empty array.
        #
        #   @return [Array<String>, nil]
        optional :blocked_states, Onlyfansapi::Internal::Type::ArrayOf[String], api_name: :blockedStates

        # @!method initialize(account:, blocked_countries:, blocked_states: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Onlyfansapi::Models::Settings::BlockedCountryUpdateParams} for more details.
        #
        #   @param account [String]
        #
        #   @param blocked_countries [Array<String>] List of all ISO 3166-1 alpha-2 country codes to block including existing ones. I
        #
        #   @param blocked_states [Array<String>] Blocked states payload forwarded to OnlyFans. Defaults to an empty array.
        #
        #   @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
