# typed: strong

module Onlyfansapi
  module Resources
    class SharedTrackingLinks
      # APIs for Tracking Links (campaigns) that other OF creators have shared with this
      # account. Revenue, cost, and spender data are not available for shared campaigns.
      class Tags
        # Get tags for a specific shared Tracking Link. Tag namespace is shared with owned
        # Tracking Links. This is a free endpoint.
        sig do
          params(
            shared_tracking_link_id: Integer,
            account: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::SharedTrackingLinks::TagListResponse)
        end
        def list(
          # The OnlyFans-side ID of the shared tracking link
          shared_tracking_link_id,
          # The Account ID
          account:,
          request_options: {}
        )
        end

        # Add tags to a shared Tracking Link. Existing tags are preserved. Tag namespace
        # is shared with owned Tracking Links. This is a free endpoint.
        sig do
          params(
            shared_tracking_link_id: Integer,
            account: String,
            tags: T::Array[String],
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::SharedTrackingLinks::TagAddResponse)
        end
        def add(
          # Path param: The OnlyFans-side ID of the shared tracking link
          shared_tracking_link_id,
          # Path param: The Account ID
          account:,
          # Body param: Array of tag names to add to the shared tracking link.
          tags:,
          request_options: {}
        )
        end

        # Remove tags from a shared Tracking Link. Tag namespace is shared with owned
        # Tracking Links. This is a free endpoint.
        sig do
          params(
            shared_tracking_link_id: Integer,
            account: String,
            tags: T::Array[String],
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::SharedTrackingLinks::TagRemoveResponse)
        end
        def remove(
          # Path param: The OnlyFans-side ID of the shared tracking link
          shared_tracking_link_id,
          # Path param: The Account ID
          account:,
          # Body param: Array of tag names to remove from the shared tracking link.
          tags:,
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
end
