# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Payouts
      # List all payout requests for the account.
      #
      # @overload list_payout_requests(account, limit: nil, offset: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param limit [String] Number of payout requests to return
      #
      # @param offset [String] Number of payout requests to skip for pagination
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::PayoutListPayoutRequestsResponse]
      #
      # @see Onlyfansapi::Models::PayoutListPayoutRequestsParams
      def list_payout_requests(account, params = {})
        parsed, options = Onlyfansapi::PayoutListPayoutRequestsParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/payouts/payout-requests", account],
          query: query,
          model: Onlyfansapi::Models::PayoutListPayoutRequestsResponse,
          options: options
        )
      end

      # Request a payout withdrawal, if the frequency is set to manual. Refer to our
      # `/payouts/balances` endpoint to retrieve the minimum and maximum withdrawal
      # amounts.
      #
      # @overload request_manual_withdrawal(account, amount:, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param amount [Integer] The amount to withdraw. Amount may not be higher than the current balance.
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::PayoutRequestManualWithdrawalResponse::UnionMember0, Onlyfansapi::Models::PayoutRequestManualWithdrawalResponse::UnionMember1]
      #
      # @see Onlyfansapi::Models::PayoutRequestManualWithdrawalParams
      def request_manual_withdrawal(account, params)
        parsed, options = Onlyfansapi::PayoutRequestManualWithdrawalParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/%1$s/payouts/request-manual-withdrawal", account],
          body: parsed,
          model: Onlyfansapi::Models::PayoutRequestManualWithdrawalResponse,
          options: options
        )
      end

      # Get the current available and pending balances for the account.
      #
      # @overload retrieve_balances(account, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::PayoutRetrieveBalancesResponse]
      #
      # @see Onlyfansapi::Models::PayoutRetrieveBalancesParams
      def retrieve_balances(account, params = {})
        @client.request(
          method: :get,
          path: ["api/%1$s/payouts/balances", account],
          model: Onlyfansapi::Models::PayoutRetrieveBalancesResponse,
          options: params[:request_options]
        )
      end

      # Get total and monthly time-series earning statistics for the account.
      #
      # @overload retrieve_earning_statistics(account, end_date: nil, start_date: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param end_date [String, nil] The end date for earning statistics. Keep empty to get all earnings.
      #
      # @param start_date [String, nil] The start date for earning statistics. Keep empty to get all earnings.
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse]
      #
      # @see Onlyfansapi::Models::PayoutRetrieveEarningStatisticsParams
      def retrieve_earning_statistics(account, params = {})
        parsed, options = Onlyfansapi::PayoutRetrieveEarningStatisticsParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/payouts/earning-statistics", account],
          query: query.transform_keys(end_date: "endDate", start_date: "startDate"),
          model: Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse,
          options: options
        )
      end

      # Get the eligibility details for receiving payouts.
      #
      # @overload retrieve_eligibility(account, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::PayoutRetrieveEligibilityResponse]
      #
      # @see Onlyfansapi::Models::PayoutRetrieveEligibilityParams
      def retrieve_eligibility(account, params = {})
        @client.request(
          method: :get,
          path: ["api/%1$s/payouts/eligibility", account],
          model: Onlyfansapi::Models::PayoutRetrieveEligibilityResponse,
          options: params[:request_options]
        )
      end

      # Update the payout frequency for the account (Manual, Weekly or Monthly).
      #
      # @overload update_payout_frequency(account, frequency:, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param frequency [Symbol, Onlyfansapi::Models::PayoutUpdatePayoutFrequencyParams::Frequency] The new payout frequency
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::PayoutUpdatePayoutFrequencyResponse]
      #
      # @see Onlyfansapi::Models::PayoutUpdatePayoutFrequencyParams
      def update_payout_frequency(account, params)
        parsed, options = Onlyfansapi::PayoutUpdatePayoutFrequencyParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/%1$s/payouts/payout-frequency", account],
          body: parsed,
          model: Onlyfansapi::Models::PayoutUpdatePayoutFrequencyResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfansapi::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
