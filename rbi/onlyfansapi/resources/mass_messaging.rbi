# typed: strong

module Onlyfansapi
  module Resources
    class MassMessaging
      # Get the content of a mass message.
      sig do
        params(
          id: String,
          account: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::MassMessagingRetrieveResponse)
      end
      def retrieve(
        # The ID of the message queue item. Can be retrieved from the above store and list
        # endpoints.
        id,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # Update a mass message.
      sig do
        params(
          id: String,
          account: String,
          text: String,
          giphy_id: String,
          locked_text: T::Boolean,
          media_files: T::Array[String],
          previews: T::Array[String],
          price: Integer,
          scheduled_date: String,
          user_ids: T::Array[String],
          user_lists: T::Array[String],
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::MassMessagingUpdateResponse)
      end
      def update(
        # Path param: The ID of the message queue item. Can be retrieved from the above
        # store and list endpoints.
        id,
        # Path param: The Account ID
        account:,
        # Body param: The message text content
        text:,
        # Body param: The ID of the Giphy GIF to attach to the message. Get IDs from the
        # Giphy listing endpoints (`/giphy/trending`, `/giphy/search`).
        giphy_id: nil,
        # Body param: Whether the text should be shown or hidden
        locked_text: nil,
        # Body param: Array of media file upload prefixed_ids, or OF media IDs (required
        # if price is not 0). Will be hidden if `price` is provided.
        media_files: nil,
        # Body param: Array of media file upload prefixed_ids, or OF media IDs (required
        # if price is not 0). Will be shown if `price` is provided. All `previews` values
        # must also exist in the `mediaFiles` array.
        previews: nil,
        # Body param: Price for paid content (0 or between 3-200). In case this is not
        # zero, **mediaFiles** is required
        price: nil,
        # Body param: Schedule the chat message in the future (UTC timezone).
        scheduled_date: nil,
        # Body param: Array of user IDs that the mass message will be sent to.
        user_ids: nil,
        # Body param: Array of user list IDs that the mass message will be sent to.
        user_lists: nil,
        request_options: {}
      )
      end

      # List the pending or recently sent mass messages in the message queue.
      sig do
        params(
          account: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::MassMessagingListResponse)
      end
      def list(
        # The Account ID
        account,
        request_options: {}
      )
      end

      # Unsend a recently sent mass message, or delete a scheduled/saved message. When
      # unsending, purchased content will continue to be able to viewable.
      sig do
        params(
          id: String,
          account: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::MassMessagingDeleteResponse)
      end
      def delete(
        # The ID of the message queue item. Can be retrieved from the above store and list
        # endpoints.
        id,
        # The Account ID
        account:,
        request_options: {}
      )
      end

      # Get an overview of mass messages, showing the send count and view count.
      sig do
        params(
          account: String,
          end_date: String,
          limit: Integer,
          query: String,
          start_date: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::MassMessagingRetrieveOverviewResponse)
      end
      def retrieve_overview(
        # The Account ID
        account,
        # The latest mass message to retrieve. Keep empty to get all. MUST BE DATE AFTER
        # `startDate`. This is also used for pagination.
        end_date: nil,
        # Number of mass messages to return (default = 10)
        limit: nil,
        # Optionally, find a mass message by the message text.
        query: nil,
        # The earliest mass message to retrieve. Keep empty to get all.
        start_date: nil,
        request_options: {}
      )
      end

      # Send a mass message to lists and/or users. You may use both the `userLists` and
      # `userIds` parameters to send the same message to both lists and individual
      # users.
      sig do
        params(
          account: String,
          text: String,
          excluded_lists: T::Array[String],
          giphy_id: String,
          locked_text: T::Boolean,
          media_files: T::Array[T.anything],
          previews: T::Array[T.anything],
          price: Integer,
          rf_guest: String,
          rf_partner: String,
          rf_tag: String,
          save_for_later: T::Boolean,
          scheduled_date: String,
          user_ids: T::Array[String],
          user_lists: T::Array[String],
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::MassMessagingSendResponse)
      end
      def send_(
        # The Account ID
        account,
        # The message text content
        text:,
        # Array of user list IDs that the mass message will NOT be sent to.
        excluded_lists: nil,
        # The ID of the Giphy GIF to attach to the message. Get IDs from the Giphy listing
        # endpoints (`/giphy/trending`, `/giphy/search`).
        giphy_id: nil,
        # Whether the text should be shown or hidden
        locked_text: nil,
        # Direct file uploads, OFAPI `ofapi_media_` IDs, or OF vault IDs. Will be hidden
        # if `price` is provided.
        media_files: nil,
        # Direct file uploads, OFAPI `ofapi_media_` IDs, OF vault IDs, or integer indices
        # referencing uploaded files in `mediaFiles`. Will be shown if `price` is
        # provided.
        previews: nil,
        # Price for paid content (0 or between 3-200). In case this is not zero,
        # **mediaFiles** is required
        price: nil,
        # Array of OnlyFans Release Form Guest IDs to tag in your mass message
        rf_guest: nil,
        # Array of OnlyFans Release Form Partners IDs to tag in your mass message
        rf_partner: nil,
        # Array of OnlyFans Creator User IDs to tag in your mass message
        rf_tag: nil,
        # Add your message to the "Saved for later" queue.
        save_for_later: nil,
        # Schedule the chat message in the future (UTC timezone).
        scheduled_date: nil,
        # Array of user IDs that the mass message will be sent to.
        user_ids: nil,
        # Array of user list IDs that the mass message will be sent to.
        user_lists: nil,
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
