# frozen_string_literal: true

module Onlyfans
  module Resources
    # APIs for managing OnlyFans fans (subscribers)
    class Fans
      # APIs for managing OnlyFans fans (subscribers)
      # @return [Onlyfans::Resources::Fans::Notes]
      attr_reader :notes

      # APIs for generating and retrieving AI-powered fan profile summaries
      # @return [Onlyfans::Resources::Fans::Summary]
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
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::FanGetSubscriptionHistoryResponse]
      #
      # @see Onlyfans::Models::FanGetSubscriptionHistoryParams
      def get_subscription_history(user_id, params)
        parsed, options = Onlyfans::FanGetSubscriptionHistoryParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/fans/%2$s/subscriptions-history", account, user_id],
          model: Onlyfans::Models::FanGetSubscriptionHistoryResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::FanListActiveParams} for more details.
      #
      # Get a paginated list of fans for an Account. Newest fans are first.
      #
      # @overload list_active(account, filter: nil, limit: nil, offset: nil, query: nil, type: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param filter [Onlyfans::Models::FanListActiveParams::Filter]
      #
      # @param limit [Integer] Number of fans to return (1-50). Must be at least 1. Must not be greater than 20
      #
      # @param offset [Integer] Number of fans to skip. Must be at least 0.
      #
      # @param query [String, nil] Search within fan name/username.
      #
      # @param type [Symbol, Onlyfans::Models::FanListActiveParams::Type] Filter by fan type.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::FanListActiveResponse]
      #
      # @see Onlyfans::Models::FanListActiveParams
      def list_active(account, params = {})
        parsed, options = Onlyfans::FanListActiveParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/fans/active", account],
          query: query,
          model: Onlyfans::Models::FanListActiveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::FanListAllParams} for more details.
      #
      # Get a paginated list of fans for an Account. Newest fans are first.
      #
      # @overload list_all(account, filter: nil, limit: nil, offset: nil, query: nil, type: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param filter [Onlyfans::Models::FanListAllParams::Filter]
      #
      # @param limit [Integer] Number of fans to return (1-50). Must be at least 1. Must not be greater than 20
      #
      # @param offset [Integer] Number of fans to skip. Must be at least 0.
      #
      # @param query [String, nil] Search within fan name/username.
      #
      # @param type [Symbol, Onlyfans::Models::FanListAllParams::Type] Filter by fan type.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::FanListAllResponse]
      #
      # @see Onlyfans::Models::FanListAllParams
      def list_all(account, params = {})
        parsed, options = Onlyfans::FanListAllParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/fans/all", account],
          query: query,
          model: Onlyfans::Models::FanListAllResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::FanListExpiredParams} for more details.
      #
      # Get a paginated list of expired fans for an Account. Newest fans are first.
      #
      # @overload list_expired(account, filter: nil, limit: nil, offset: nil, query: nil, type: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param filter [Onlyfans::Models::FanListExpiredParams::Filter]
      #
      # @param limit [Integer] Number of fans to return (1-50). Must be at least 1. Must not be greater than 20
      #
      # @param offset [Integer] Number of fans to skip. Must be at least 0.
      #
      # @param query [String, nil] Search within fan name/username.
      #
      # @param type [Symbol, Onlyfans::Models::FanListExpiredParams::Type] Filter by fan type.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::FanListExpiredResponse]
      #
      # @see Onlyfans::Models::FanListExpiredParams
      def list_expired(account, params = {})
        parsed, options = Onlyfans::FanListExpiredParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/fans/expired", account],
          query: query,
          model: Onlyfans::Models::FanListExpiredResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::FanListLatestParams} for more details.
      #
      # Get a paginated list fans, filterable by total, only new subscribers, or only
      # renewals. Newest fans are first.
      #
      # @overload list_latest(account, end_date: nil, limit: nil, offset: nil, start_date: nil, type: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param end_date [String, nil] End date for filtering (required with start_date). Must be a valid date. Must no
      #
      # @param limit [Integer] Number of fans to return (1-50). Must be at least 1. Must not be greater than 10
      #
      # @param offset [Integer] Number of fans to skip. Must be at least 0.
      #
      # @param start_date [String, nil] Start date for filtering (required with end_date). Must be a valid date. Must no
      #
      # @param type [Symbol, Onlyfans::Models::FanListLatestParams::Type, nil] Filter by type: total, renew, or new.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::FanListLatestResponse]
      #
      # @see Onlyfans::Models::FanListLatestParams
      def list_latest(account, params = {})
        parsed, options = Onlyfans::FanListLatestParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/fans/latest", account],
          query: query,
          model: Onlyfans::Models::FanListLatestResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::FanListTopParams} for more details.
      #
      # Get a list of top fans sorted by spending. Filterable by total, subscriptions,
      # tips, messages, posts, or streams.
      #
      # @overload list_top(account, by: nil, end_date: nil, start_date: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param by [Symbol, Onlyfans::Models::FanListTopParams::By, nil] Sort by: total (default), subscribes, tips, messages, post, streams.
      #
      # @param end_date [String, nil] End date for filtering (required with start_date). Must be a valid date. Must no
      #
      # @param start_date [String, nil] Start date for filtering (required with end_date). Must be a valid date. Must no
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::FanListTopResponse]
      #
      # @see Onlyfans::Models::FanListTopParams
      def list_top(account, params = {})
        parsed, options = Onlyfans::FanListTopParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/fans/top", account],
          query: query,
          model: Onlyfans::Models::FanListTopResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::FanSetCustomNameParams} for more details.
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
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::FanSetCustomNameResponse]
      #
      # @see Onlyfans::Models::FanSetCustomNameParams
      def set_custom_name(fan_id, params)
        parsed, options = Onlyfans::FanSetCustomNameParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :put,
          path: ["api/%1$s/fans/%2$s/custom-name", account, fan_id],
          body: parsed,
          model: Onlyfans::Models::FanSetCustomNameResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfans::Client]
      def initialize(client:)
        @client = client
        @notes = Onlyfans::Resources::Fans::Notes.new(client: client)
        @summary = Onlyfans::Resources::Fans::Summary.new(client: client)
      end
    end
  end
end
