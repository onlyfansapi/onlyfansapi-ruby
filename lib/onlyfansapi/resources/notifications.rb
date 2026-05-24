# frozen_string_literal: true

module Onlyfansapi
  module Resources
    # Endpoints for managingr account notifications
    class Notifications
      # Endpoints for managingr account notifications
      # @return [Onlyfansapi::Resources::Notifications::TabsOrder]
      attr_reader :tabs_order

      # Some parameter documentations has been truncated, see
      # {Onlyfansapi::Models::NotificationListParams} for more details.
      #
      # List all notifications for the account
      #
      # @overload list(account, from_id: nil, limit: nil, skip_users: nil, type: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param from_id [Integer] Used for pagination. This value should be the ID of the previous response's last
      #
      # @param limit [Integer] The number of notifications. Default `10`
      #
      # @param skip_users [Symbol, Onlyfansapi::Models::NotificationListParams::SkipUsers] Whether to skip user details. Default `all`
      #
      # @param type [Symbol, Onlyfansapi::Models::NotificationListParams::Type] Filter notifications by a specific type
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::NotificationListResponse]
      #
      # @see Onlyfansapi::Models::NotificationListParams
      def list(account, params = {})
        parsed, options = Onlyfansapi::NotificationListParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/notifications", account],
          query: query,
          model: Onlyfansapi::Models::NotificationListResponse,
          options: options
        )
      end

      # Get a quick overview of all unread notification types
      #
      # @overload get_counts(account, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::NotificationGetCountsResponse]
      #
      # @see Onlyfansapi::Models::NotificationGetCountsParams
      def get_counts(account, params = {})
        @client.request(
          method: :get,
          path: ["api/%1$s/notifications/counts", account],
          model: Onlyfansapi::Models::NotificationGetCountsResponse,
          options: params[:request_options]
        )
      end

      # Mark all notifications of this account as read
      #
      # @overload mark_all_as_read(account, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::NotificationMarkAllAsReadResponse]
      #
      # @see Onlyfansapi::Models::NotificationMarkAllAsReadParams
      def mark_all_as_read(account, params = {})
        @client.request(
          method: :post,
          path: ["api/%1$s/notifications/mark-all-as-read", account],
          model: Onlyfansapi::Models::NotificationMarkAllAsReadResponse,
          options: params[:request_options]
        )
      end

      # Search users that have appeared in your notifications
      #
      # @overload search_users(account, query:, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param query [String] The query to search for. Can be either a name or username.
      #
      # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfansapi::Models::NotificationSearchUsersResponse]
      #
      # @see Onlyfansapi::Models::NotificationSearchUsersParams
      def search_users(account, params)
        parsed, options = Onlyfansapi::NotificationSearchUsersParams.dump_request(params)
        query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/notifications/search-users", account],
          query: query,
          model: Onlyfansapi::Models::NotificationSearchUsersResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Onlyfansapi::Client]
      def initialize(client:)
        @client = client
        @tabs_order = Onlyfansapi::Resources::Notifications::TabsOrder.new(client: client)
      end
    end
  end
end
