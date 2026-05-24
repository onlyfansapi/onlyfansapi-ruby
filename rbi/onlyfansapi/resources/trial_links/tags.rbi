# typed: strong

module Onlyfansapi
  module Resources
    class TrialLinks
      # APIs for managing Free Trial Links
      class Tags
        # Get tags for a specific free trial link. This is a free endpoint.
        sig do
          params(
            trial_link_id: Integer,
            account: String,
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::TrialLinks::TagListResponse)
        end
        def list(
          # The ID of the trial link
          trial_link_id,
          # The Account ID
          account:,
          request_options: {}
        )
        end

        # Add tags to a specific free trial link. Existing tags are preserved. This is a
        # free endpoint.
        sig do
          params(
            trial_link_id: Integer,
            account: String,
            tags: T::Array[String],
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::TrialLinks::TagAddResponse)
        end
        def add(
          # Path param: The ID of the trial link
          trial_link_id,
          # Path param: The Account ID
          account:,
          # Body param: Array of tag names to add to the trial link.
          tags:,
          request_options: {}
        )
        end

        # Remove tags from a specific free trial link. This is a free endpoint.
        sig do
          params(
            trial_link_id: Integer,
            account: String,
            tags: T::Array[String],
            request_options: Onlyfansapi::RequestOptions::OrHash
          ).returns(Onlyfansapi::Models::TrialLinks::TagRemoveResponse)
        end
        def remove(
          # Path param: The ID of the trial link
          trial_link_id,
          # Path param: The Account ID
          account:,
          # Body param: Array of tag names to remove from the trial link.
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
