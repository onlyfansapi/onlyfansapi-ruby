# frozen_string_literal: true

module Onlyfans
  module Resources
    class MassMessaging
      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::MassMessagingRetrieveParams} for more details.
      #
      # Get the content of a mass message.
      #
      # @overload retrieve(id, account:, request_options: {})
      #
      # @param id [String] The ID of the message queue item. Can be retrieved from the above store and list
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::MassMessagingRetrieveResponse]
      #
      # @see Onlyfans::Models::MassMessagingRetrieveParams
      def retrieve(id, params)
        parsed, options = Onlyfans::MassMessagingRetrieveParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/%1$s/mass-messaging/%2$s", account, id],
          model: Onlyfans::Models::MassMessagingRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::MassMessagingUpdateParams} for more details.
      #
      # Update a mass message.
      #
      # @overload update(id, account:, text:, giphy_id: nil, locked_text: nil, media_files: nil, previews: nil, price: nil, scheduled_date: nil, user_ids: nil, user_lists: nil, request_options: {})
      #
      # @param id [String] Path param: The ID of the message queue item. Can be retrieved from the above st
      #
      # @param account [String] Path param: The Account ID
      #
      # @param text [String] Body param: The message text content
      #
      # @param giphy_id [String] Body param: The ID of the Giphy GIF to attach to the message. Get IDs from the G
      #
      # @param locked_text [Boolean] Body param: Whether the text should be shown or hidden
      #
      # @param media_files [Array<String>] Body param: Array of media file upload prefixed_ids, or OF media IDs (required i
      #
      # @param previews [Array<String>] Body param: Array of media file upload prefixed_ids, or OF media IDs (required i
      #
      # @param price [Integer] Body param: Price for paid content (0 or between 3-200). In case this is not zer
      #
      # @param scheduled_date [String] Body param: Schedule the chat message in the future (UTC timezone).
      #
      # @param user_ids [Array<String>] Body param: Array of user IDs that the mass message will be sent to.
      #
      # @param user_lists [Array<String>] Body param: Array of user list IDs that the mass message will be sent to.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::MassMessagingUpdateResponse]
      #
      # @see Onlyfans::Models::MassMessagingUpdateParams
      def update(id, params)
        parsed, options = Onlyfans::MassMessagingUpdateParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :put,
          path: ["api/%1$s/mass-messaging/%2$s", account, id],
          body: parsed,
          model: Onlyfans::Models::MassMessagingUpdateResponse,
          options: options
        )
      end

      # List the pending or recently sent mass messages in the message queue.
      #
      # @overload list(account, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::MassMessagingListResponse]
      #
      # @see Onlyfans::Models::MassMessagingListParams
      def list(account, params = {})
        @client.request(
          method: :get,
          path: ["api/%1$s/mass-messaging", account],
          model: Onlyfans::Models::MassMessagingListResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::MassMessagingDeleteParams} for more details.
      #
      # Unsend a recently sent mass message, or delete a scheduled/saved message. When
      # unsending, purchased content will continue to be able to viewable.
      #
      # @overload delete(id, account:, request_options: {})
      #
      # @param id [String] The ID of the message queue item. Can be retrieved from the above store and list
      #
      # @param account [String] The Account ID
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::MassMessagingDeleteResponse]
      #
      # @see Onlyfans::Models::MassMessagingDeleteParams
      def delete(id, params)
        parsed, options = Onlyfans::MassMessagingDeleteParams.dump_request(params)
        account =
          parsed.delete(:account) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/%1$s/mass-messaging/%2$s", account, id],
          model: Onlyfans::Models::MassMessagingDeleteResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::MassMessagingRetrieveOverviewParams} for more details.
      #
      # Get an overview of mass messages, showing the send count and view count.
      #
      # @overload retrieve_overview(account, end_date: nil, limit: nil, query: nil, start_date: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param end_date [String] The latest mass message to retrieve. Keep empty to get all. MUST BE DATE AFTER `
      #
      # @param limit [Integer] Number of mass messages to return (default = 10)
      #
      # @param query [String] Optionally, find a mass message by the message text.
      #
      # @param start_date [String] The earliest mass message to retrieve. Keep empty to get all.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::MassMessagingRetrieveOverviewResponse]
      #
      # @see Onlyfans::Models::MassMessagingRetrieveOverviewParams
      def retrieve_overview(account, params = {})
        parsed, options = Onlyfans::MassMessagingRetrieveOverviewParams.dump_request(params)
        query = Onlyfans::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["api/%1$s/mass-messaging/overview", account],
          query: query.transform_keys(end_date: "endDate", start_date: "startDate"),
          model: Onlyfans::Models::MassMessagingRetrieveOverviewResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Onlyfans::Models::MassMessagingSendParams} for more details.
      #
      # Send a mass message to lists and/or users. You may use both the `userLists` and
      # `userIds` parameters to send the same message to both lists and individual
      # users.
      #
      # @overload send_(account, text:, excluded_lists: nil, giphy_id: nil, locked_text: nil, media_files: nil, previews: nil, price: nil, rf_guest: nil, rf_partner: nil, rf_tag: nil, save_for_later: nil, scheduled_date: nil, user_ids: nil, user_lists: nil, request_options: {})
      #
      # @param account [String] The Account ID
      #
      # @param text [String] The message text content
      #
      # @param excluded_lists [Array<String>] Array of user list IDs that the mass message will NOT be sent to.
      #
      # @param giphy_id [String] The ID of the Giphy GIF to attach to the message. Get IDs from the Giphy listing
      #
      # @param locked_text [Boolean] Whether the text should be shown or hidden
      #
      # @param media_files [Array<Object>] Direct file uploads, OFAPI `ofapi_media_` IDs, or OF vault IDs. Will be hidden i
      #
      # @param previews [Array<Object>] Direct file uploads, OFAPI `ofapi_media_` IDs, OF vault IDs, or integer indices
      #
      # @param price [Integer] Price for paid content (0 or between 3-200). In case this is not zero,
      # \*\*mediaFi
      #
      # @param rf_guest [String] Array of OnlyFans Release Form Guest IDs to tag in your mass message
      #
      # @param rf_partner [String] Array of OnlyFans Release Form Partners IDs to tag in your mass message
      #
      # @param rf_tag [String] Array of OnlyFans Creator User IDs to tag in your mass message
      #
      # @param save_for_later [Boolean] Add your message to the "Saved for later" queue.
      #
      # @param scheduled_date [String] Schedule the chat message in the future (UTC timezone).
      #
      # @param user_ids [Array<String>] Array of user IDs that the mass message will be sent to.
      #
      # @param user_lists [Array<String>] Array of user list IDs that the mass message will be sent to.
      #
      # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Onlyfans::Models::MassMessagingSendResponse]
      #
      # @see Onlyfans::Models::MassMessagingSendParams
      def send_(account, params)
        parsed, options = Onlyfans::MassMessagingSendParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/%1$s/mass-messaging", account],
          body: parsed,
          model: Onlyfans::Models::MassMessagingSendResponse,
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
