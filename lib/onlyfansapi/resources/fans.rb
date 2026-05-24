# frozen_string_literal: true

module Onlyfansapi
  module Resources
    # APIs for managing OnlyFans fans (subscribers)
    class Fans
      # APIs for managing OnlyFans fans (subscribers)
      # @return [Onlyfansapi::Resources::Fans::Notes]
      attr_reader :notes

      # APIs for generating and retrieving AI-powered fan profile summaries
      # @return [Onlyfansapi::Resources::Fans::Summary]
      attr_reader :summary

      # Get Subscription History for a given OnlyFans User ID. This can be useful, for
      # example, when the user's subscribed to your account for the first time.
      #
      # @overload get_subscription_history(user_id, account:, request_options: {})
      #
      # @param user_id [String] The OnlyFans ID of the User.
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::FanGetSubscriptionHistoryResponse]
      #
      # @see Onlyfansapi::Models::FanGetSubscriptionHistoryParams
      def get_subscription_history(user_id, params)
        parsed, options = Onlyfansapi::FanGetSubscriptionHistoryParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/fans/%2$s/subscriptions-history", account, user_id],
          model: Onlyfansapi::Models::FanGetSubscriptionHistoryResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::FanListActiveParams} for more details.
      #
      # Get a paginated list of fans for an Account. Newest fans are first.
      #
      # @overload list_active(account, filter: nil, limit: nil, offset: nil, query: nil, type: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param filter [Onlyfansapi::Models::FanListActiveParams::Filter]
      #
      # @param limit [Integer] Number of fans to return (1-50). Must be at least 1. Must not be greater than 20
      #
      # @param offset [Integer] Number of fans to skip. Must be at least 0.
      #
      # @param query [String, nil] Search within fan name/username.
      #
      # @param type [Symbol, Onlyfansapi::Models::FanListActiveParams::Type] Filter by fan type.
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

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::FanListAllParams} for more details.
      #
      # Get a paginated list of fans for an Account. Newest fans are first.
      #
      # @overload list_all(account, filter: nil, limit: nil, offset: nil, query: nil, type: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param filter [Onlyfansapi::Models::FanListAllParams::Filter]
      #
      # @param limit [Integer] Number of fans to return (1-50). Must be at least 1. Must not be greater than 20
      #
      # @param offset [Integer] Number of fans to skip. Must be at least 0.
      #
      # @param query [String, nil] Search within fan name/username.
      #
      # @param type [Symbol, Onlyfansapi::Models::FanListAllParams::Type] Filter by fan type.
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

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::FanListExpiredParams} for more details.
      #
      # Get a paginated list of expired fans for an Account. Newest fans are first.
      #
      # @overload list_expired(account, filter: nil, limit: nil, offset: nil, query: nil, type: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param filter [Onlyfansapi::Models::FanListExpiredParams::Filter]
      #
      # @param limit [Integer] Number of fans to return (1-50). Must be at least 1. Must not be greater than 20
      #
      # @param offset [Integer] Number of fans to skip. Must be at least 0.
      #
      # @param query [String, nil] Search within fan name/username.
      #
      # @param type [Symbol, Onlyfansapi::Models::FanListExpiredParams::Type] Filter by fan type.
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

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::FanListLatestParams} for more details.
      #
      # Get a paginated list fans, filterable by total, only new subscribers, or only
      # renewals. Newest fans are first.
      #
      # @overload list_latest(account, end_date: nil, limit: nil, offset: nil, start_date: nil, type: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param end_date [String, nil] End date for filtering (required with start_date). This field is required when <
      #
      # @param limit [Integer] Number of fans to return (1-50). Must be at least 1. Must not be greater than 10
      #
      # @param offset [Integer] Number of fans to skip. Must be at least 0.
      #
      # @param start_date [String, nil] Start date for filtering (required with end_date). This field is required when <
      #
      # @param type [Symbol, Onlyfansapi::Models::FanListLatestParams::Type, nil] Filter by type: total, renew, or new.
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

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::FanListTopParams} for more details.
      #
      # Get a list of top fans sorted by spending. Filterable by total, subscriptions,
      # tips, messages, posts, or streams.
      #
      # @overload list_top(account, by: nil, end_date: nil, start_date: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param by [Symbol, Onlyfansapi::Models::FanListTopParams::By, nil] Sort by: total (default), subscribes, tips, messages, post, streams.
      #
      # @param end_date [String, nil] End date for filtering (required with start_date). This field is required when <
      #
      # @param start_date [String, nil] Start date for filtering (required with end_date). This field is required when <
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::FanListTopResponse]
      #
      # @see Onlyfansapi::Models::FanListTopParams
      def list_top(account, params = {})
        parsed, options = Onlyfansapi::FanListTopParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/fans/top", account],
          query: query,
          model: Onlyfansapi::Models::FanListTopResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::FanSetCustomNameParams} for more details.
      #
      # Change the Fan's Custom Name shown in OnlyFans
      #
      # @overload set_custom_name(fan_id, account:, custom_name:, request_options: {})
      #
      # @param fan_id [String] Path param: Fan's OnlyFans ID
      #
      # @param account [String] Path param: The Account ID
      #
      # @param custom_name [String] Body param: New Custom Name for a Fan. Send empty string (`""`) or `null` to cle
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::FanSetCustomNameResponse]
      #
      # @see Onlyfansapi::Models::FanSetCustomNameParams
      def set_custom_name(fan_id, params)
        parsed, options = Onlyfansapi::FanSetCustomNameParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :put,
          path: ["api/%1$s/fans/%2$s/custom-name", account, fan_id],
          body: parsed,
          model: Onlyfansapi::Models::FanSetCustomNameResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfansapi::Client]
      def initialize(client:)
        @client = client
        @notes = Onlyfansapi::Resources::Fans::Notes.new(client: client)
        @summary = Onlyfansapi::Resources::Fans::Summary.new(client: client)
      end
    end
  end
end
