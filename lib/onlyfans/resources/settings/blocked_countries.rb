# frozen_string_literal: true

module Onlyfans
  module Resources
    class Settings
      class BlockedCountries
        # Returns the countries blocked from viewing the account.
        #
        # @overload retrieve(account, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Settings::BlockedCountryRetrieveResponse]
        #
        # @see Onlyfans::Models::Settings::BlockedCountryRetrieveParams
        def retrieve(account, params = {})
          @client.request(
            method: :get,
            path: ["api/%1$s/settings/blocked-countries", account],
            model: Onlyfans::Models::Settings::BlockedCountryRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Onlyfans::Models::Settings::BlockedCountryUpdateParams} for more details.
        #
        # Updates the countries blocked from viewing the account.
        #
        # @overload update(account, blocked_countries:, blocked_states: nil, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param blocked_countries [Array<String>] List of all ISO 3166-1 alpha-2 country codes to block including existing ones. I
        #
        # @param blocked_states [Array<String>] Blocked states payload forwarded to OnlyFans. Defaults to an empty array.
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Settings::BlockedCountryUpdateResponse]
        #
        # @see Onlyfans::Models::Settings::BlockedCountryUpdateParams
        def update(account, params)
          parsed, options = Onlyfans::Settings::BlockedCountryUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["api/%1$s/settings/blocked-countries", account],
            body: parsed,
            model: Onlyfans::Models::Settings::BlockedCountryUpdateResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Onlyfans::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
