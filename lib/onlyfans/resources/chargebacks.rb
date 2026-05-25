# frozen_string_literal: true

module Onlyfans
  module Resources
    class Chargebacks
      # Retrieve a list of chargebacks within a specified date range. Possible statuses
      # are `loading`, `done`, `undo`.
      #
      # @overload list(account, end_date: nil, limit: nil, offset: nil, start_date: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param end_date [String] The end date for the chargebacks. Keep empty to get all.
      #
      # @param limit [String, nil] Number of chargebacks to return (1-100). Default = 10
      #
      # @param offset [String, nil] Number of chargebacks to skip, used for pagination.
      #
      # @param start_date [String] The start date for the chargebacks. Keep empty to get all.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::ChargebackListResponse]
      #
      # @see Onlyfans::Models::ChargebackListParams
      def list(account, params = {})
        parsed, options = Onlyfans::ChargebackListParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/chargebacks", account],
          query: query,
          model: Onlyfans::Models::ChargebackListResponse,
          options: options
        )
      end

      # The Chargeback Ratio reflects the number of chargebacks compared to the total
      # number of payments as a percentage. Ideally, your Chargeback Ratio should be
      # under 1%.
      #
      # @overload calculate_ratio(account, end_date: nil, start_date: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param end_date [String] The end date for the chargeback ratio. Keep empty to get all.
      #
      # @param start_date [String] The start date for the chargeback ratio. Keep empty to get all.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::ChargebackCalculateRatioResponse]
      #
      # @see Onlyfans::Models::ChargebackCalculateRatioParams
      def calculate_ratio(account, params = {})
        parsed, options = Onlyfans::ChargebackCalculateRatioParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/chargebacks/ratio", account],
          query: query,
          model: Onlyfans::Models::ChargebackCalculateRatioResponse,
          options: options
        )
      end

      # List chargeback counts & amounts per hour, day or month.
      #
      # @overload list_statistics(account, end_date: nil, start_date: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param end_date [String] The end date for the chargebacks. Keep empty to get all.
      #
      # @param start_date [String] The start date for the chargebacks. Keep empty to get all.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::ChargebackListStatisticsResponse]
      #
      # @see Onlyfans::Models::ChargebackListStatisticsParams
      def list_statistics(account, params = {})
        parsed, options = Onlyfans::ChargebackListStatisticsParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/chargebacks/statistics", account],
          query: query,
          model: Onlyfans::Models::ChargebackListStatisticsResponse,
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
