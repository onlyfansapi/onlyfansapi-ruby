# typed: strong

module Onlyfansapi
  module Resources
    class Payouts
      # List all payout requests for the account.
      sig do
        params(
          account: String,
          limit: String,
          offset: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::PayoutListPayoutRequestsResponse)
      end
      def list_payout_requests(
        # The Account ID
        account,
        # Number of payout requests to return
        limit: nil,
        # Number of payout requests to skip for pagination
        offset: nil,
        request_options: {}
      )
      end

      # List all transactions for the account.
      sig do
        params(
          account: String,
          limit: String,
          marker: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::PayoutListTransactionsResponse)
      end
      def list_transactions(
        # The Account ID
        account,
        # Number of transactions to return
        limit: nil,
        # The marker used for pagination. Default: `null`
        marker: nil,
        request_options: {}
      )
      end

      # Request a payout withdrawal, if the frequency is set to manual. Refer to our
      # `/payouts/balances` endpoint to retrieve the minimum and maximum withdrawal
      # amounts.
      sig do
        params(
          account: String,
          amount: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(
          Onlyfansapi::Models::PayoutRequestManualWithdrawalResponse::Variants
        )
      end
      def request_manual_withdrawal(
        # The Account ID
        account,
        # The amount to withdraw. Amount may not be higher than the current balance.
        amount:,
        request_options: {}
      )
      end

      # Get the current available and pending balances for the account.
      sig do
        params(
          account: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::PayoutRetrieveBalancesResponse)
      end
      def retrieve_balances(
        # The Account ID
        account,
        request_options: {}
      )
      end

      # Get total and monthly time-series earning statistics for the account.
      sig do
        params(
          account: String,
          end_date: T.nilable(String),
          start_date: T.nilable(String),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse)
      end
      def retrieve_earning_statistics(
        # The Account ID
        account,
        # The end date for earning statistics. Keep empty to get all earnings.
        end_date: nil,
        # The start date for earning statistics. Keep empty to get all earnings.
        start_date: nil,
        request_options: {}
      )
      end

      # Get the eligibility details for receiving payouts.
      sig do
        params(
          account: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::PayoutRetrieveEligibilityResponse)
      end
      def retrieve_eligibility(
        # The Account ID
        account,
        request_options: {}
      )
      end

      # Update the payout frequency for the account (Manual, Weekly or Monthly).
      sig do
        params(
          account: String,
          frequency:
            Onlyfansapi::PayoutUpdatePayoutFrequencyParams::Frequency::OrSymbol,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::PayoutUpdatePayoutFrequencyResponse)
      end
      def update_payout_frequency(
        # The Account ID
        account,
        # The new payout frequency
        frequency:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Onlyfansapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
