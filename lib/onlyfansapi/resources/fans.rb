# frozen_string_literal: true

module Onlyfansapi
  module Resources
    # APIs for managing OnlyFans fans (subscribers)
    class Fans
      # Get a paginated list of fans for an Account. Newest fans are first.
      #
      # @overload list_active(account, filter: nil, limit: nil, offset: nil, type: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param filter [Onlyfansapi::Models::FanListActiveParams::Filter]
      #
      # @param limit [String, nil] Number of fans to return (1-50)
      #
      # @param offset [String, nil] Number of fans to skip
      #
      # @param type [String, nil] Filter by fan type
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::FanListActiveResponse]
      #
      # @see Onlyfansapi::Models::FanListActiveParams
      def list_active(account, params = {})
        parsed, options = Onlyfansapi::FanListActiveParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/fans/active", account],
          query: query,
          model: Onlyfansapi::Models::FanListActiveResponse,
          options: options
        )
      end

      # Get a paginated list of fans for an Account. Newest fans are first.
      #
      # @overload list_all(account, filter: nil, limit: nil, offset: nil, type: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param filter [Onlyfansapi::Models::FanListAllParams::Filter]
      #
      # @param limit [String, nil] Number of fans to return (1-50)
      #
      # @param offset [String, nil] Number of fans to skip
      #
      # @param type [String, nil] Filter by fan type
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::FanListAllResponse]
      #
      # @see Onlyfansapi::Models::FanListAllParams
      def list_all(account, params = {})
        parsed, options = Onlyfansapi::FanListAllParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/fans/all", account],
          query: query,
          model: Onlyfansapi::Models::FanListAllResponse,
          options: options
        )
      end

      # Get a paginated list of expired fans for an Account. Newest fans are first.
      #
      # @overload list_expired(account, filter: nil, limit: nil, offset: nil, type: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param filter [Onlyfansapi::Models::FanListExpiredParams::Filter]
      #
      # @param limit [String, nil] Number of fans to return (1-50)
      #
      # @param offset [String, nil] Number of fans to skip
      #
      # @param type [String, nil] Filter by fan type
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::FanListExpiredResponse]
      #
      # @see Onlyfansapi::Models::FanListExpiredParams
      def list_expired(account, params = {})
        parsed, options = Onlyfansapi::FanListExpiredParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/fans/expired", account],
          query: query,
          model: Onlyfansapi::Models::FanListExpiredResponse,
          options: options
        )
      end

      # Get a paginated list fans, filterable by total, only new subscribers, or only
      # renewals. Newest fans are first.
      #
      # @overload list_latest(account, end_date: nil, limit: nil, offset: nil, start_date: nil, type: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param end_date [String, nil] End date for filtering (required with start_date)
      #
      # @param limit [String, nil] Number of fans to return (1-100)
      #
      # @param offset [String, nil] Number of fans to skip
      #
      # @param start_date [String, nil] Start date for filtering (required with end_date)
      #
      # @param type [String, nil] Filter by type: total, renew, or new
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::FanListLatestResponse]
      #
      # @see Onlyfansapi::Models::FanListLatestParams
      def list_latest(account, params = {})
        parsed, options = Onlyfansapi::FanListLatestParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/fans/latest", account],
          query: query,
          model: Onlyfansapi::Models::FanListLatestResponse,
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
