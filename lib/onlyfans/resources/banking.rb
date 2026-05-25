# frozen_string_literal: true

module Onlyfans
  module Resources
    # Operations related to user banking details, payout methods, legal and tax
    # information, and account country settings.
    class Banking
      # Operations related to user banking details, payout methods, legal and tax
      # information, and account country settings.
      # @return [Onlyfans::Resources::Banking::Details]
      attr_reader :details

      # Returns a list of available payout systems for the account, including details
      # such as payout method codes, titles, descriptions, minimum payout amounts,
      # processing times, and the currently selected payout method.
      #
      # @overload list_available_payout_systems(account, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::BankingListAvailablePayoutSystemsResponse]
      #
      # @see Onlyfans::Models::BankingListAvailablePayoutSystemsParams
      def list_available_payout_systems(account, params = {})
        @client.request(
          method: :get,
          path: ["api/%1$s/banking/available-payout-systems", account],
          model: Onlyfans::Models::BankingListAvailablePayoutSystemsResponse,
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
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::BankingListCountriesResponse]
      #
      # @see Onlyfans::Models::BankingListCountriesParams
      def list_countries(account, params = {})
        @client.request(
          method: :get,
          path: ["api/%1$s/banking/countries", account],
          model: Onlyfans::Models::BankingListCountriesResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Onlyfans::Client]
      def initialize(client:)
        @client = client
        @details = Onlyfans::Resources::Banking::Details.new(client: client)
      end
    end
  end
end
