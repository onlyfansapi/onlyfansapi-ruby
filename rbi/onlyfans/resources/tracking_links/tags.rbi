# typed: strong

module Onlyfans
  module Resources
    class TrackingLinks
      # APIs for managing tracking links
      class Tags
        # Get tags for a specific tracking link. This is a free endpoint.
        sig do
          params(
            tracking_link_id: Integer,
            account: String,
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::TrackingLinks::TagListResponse)
        end
        def list(
          # The ID of the tracking link
          tracking_link_id,
          # The Account ID
          account:,
          request_options: {}
        )
        end

        # Add tags to a specific tracking link. Existing tags are preserved. This is a
        # free endpoint.
        sig do
          params(
            tracking_link_id: Integer,
            account: String,
            tags: T::Array[String],
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::TrackingLinks::TagAddResponse)
        end
        def add(
          # Path param: The ID of the tracking link
          tracking_link_id,
          # Path param: The Account ID
          account:,
          # Body param: Array of tag names to add to the tracking link.
          tags:,
          request_options: {}
        )
        end

        # Remove tags from a specific tracking link. This is a free endpoint.
        sig do
          params(
            tracking_link_id: Integer,
            account: String,
            tags: T::Array[String],
            request_options: Onlyfans::RequestOptions::OrHash
          ).returns(Onlyfans::Models::TrackingLinks::TagRemoveResponse)
        end
        def remove(
          # Path param: The ID of the tracking link
          tracking_link_id,
          # Path param: The Account ID
          account:,
          # Body param: Array of tag names to remove from the tracking link.
          tags:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Onlyfans::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
