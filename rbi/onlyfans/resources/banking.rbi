# typed: strong

module Onlyfans
  module Resources
    # Operations related to user banking details, payout methods, legal and tax
    # information, and account country settings.
    class Banking
      # Operations related to user banking details, payout methods, legal and tax
      # information, and account country settings.
      sig { returns(Onlyfans::Resources::Banking::Details) }
      attr_reader :details

      # Returns a list of available payout systems for the account, including details
      # such as payout method codes, titles, descriptions, minimum payout amounts,
      # processing times, and the currently selected payout method.
      sig do
        params(
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::BankingListAvailablePayoutSystemsResponse)
      end
      def list_available_payout_systems(
        # The Account ID
        account,
        request_options: {}
      )
      end

      # List countries, their internal OnlyFans IDs, and their payment & tax
      # information.
      sig do
        params(
          account: String,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::BankingListCountriesResponse)
      end
      def list_countries(
        # The Account ID
        account,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Onlyfans::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
