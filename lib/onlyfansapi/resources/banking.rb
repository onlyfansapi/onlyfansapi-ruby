# frozen_string_literal: true

module Onlyfansapi
  module Resources
    # Operations related to user banking details, payout methods, legal and tax
    # information, and account country settings.
    class Banking
      # Operations related to user banking details, payout methods, legal and tax
      # information, and account country settings.
      # @return [Onlyfansapi::Resources::Banking::Details]
      attr_reader :details

      # Returns a list of available payout systems for the account, including details
      # such as payout method codes, titles, descriptions, minimum payout amounts,
      # processing times, and the currently selected payout method.
      #
      # @overload list_available_payout_systems(account, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse]
      #
      # @see Onlyfansapi::Models::BankingListAvailablePayoutSystemsParams
      def list_available_payout_systems(account, params = {})
        @client.request(
          method: :get,
          path: ["api/%1$s/banking/available-payout-systems", account],
          model: Onlyfansapi::Models::BankingListAvailablePayoutSystemsResponse,
          options: params[:request_options]
        )
      end

      # List countries, their internal OnlyFans IDs, and their payment & tax
      # information.
      #
      # @overload list_countries(account, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::BankingListCountriesResponse]
      #
      # @see Onlyfansapi::Models::BankingListCountriesParams
      def list_countries(account, params = {})
        @client.request(
          method: :get,
          path: ["api/%1$s/banking/countries", account],
          model: Onlyfansapi::Models::BankingListCountriesResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Onlyfansapi::Client]
      def initialize(client:)
        @client = client
        @details = Onlyfansapi::Resources::Banking::Details.new(client: client)
      end
    end
  end
end
