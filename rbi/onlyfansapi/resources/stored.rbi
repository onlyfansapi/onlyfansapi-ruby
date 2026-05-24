# typed: strong

module Onlyfansapi
  module Resources
    class Stored
      # List all shared Tracking Links from the OnlyFansAPI Cache. This is a free
      # endpoint that does not call the OnlyFans API.
      sig do
        params(
          account: String,
          filter_search: String,
          filter_tags: String,
          limit: Integer,
          offset: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::StoredListSharedTrackingLinksResponse)
      end
      def list_shared_tracking_links(
        # The Account ID
        account,
        # Search campaign name, owner username, or a pasted OnlyFans tracking link URL.
        filter_search: nil,
        # Filter by one or more tag names or slugs. Accepts CSV or repeated array values
        # (`filter[tags][]=...`) and matches any tag. Tag namespace is shared with owned
        # Tracking Links.
        filter_tags: nil,
        # The number of shared tracking links to return. Default `10`
        limit: nil,
        # The offset used for pagination. Default `0`
        offset: nil,
        request_options: {}
      )
      end

      # List all shared Free Trial Links from the OnlyFansAPI Cache. This is a free
      # endpoint that does not call the OnlyFans API.
      sig do
        params(
          account: String,
          filter_search: String,
          filter_tags: String,
          limit: Integer,
          offset: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::StoredListSharedTrialLinksResponse)
      end
      def list_shared_trial_links(
        # The Account ID
        account,
        # Search shared trial link name, URL, or owner username.
        filter_search: nil,
        # Filter by one or more tag names or slugs. Accepts CSV or repeated array values
        # (`filter[tags][]=...`) and matches any tag. Tag namespace is shared with owned
        # Free Trial Links.
        filter_tags: nil,
        # The number of shared trial links to return. Default `10`
        limit: nil,
        # The offset used for pagination. Default `0`
        offset: nil,
        request_options: {}
      )
      end

      # List all stored tracking links from the OnlyFansAPI Cache. This is a free
      # endpoint that does not call the OnlyFans API.
      sig do
        params(
          account: String,
          filter_include_smart_links: T::Boolean,
          filter_search: String,
          filter_tags: String,
          limit: Integer,
          offset: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::StoredListTrackingLinksResponse)
      end
      def list_tracking_links(
        # The Account ID
        account,
        # Include tracking links created by Smart Links. Default `false`
        filter_include_smart_links: nil,
        # Search campaign name, creator username, or a pasted OnlyFans tracking link URL.
        filter_search: nil,
        # Filter by one or more tag names or slugs. Accepts CSV or repeated array values
        # (`filter[tags][]=...`) and matches any tag.
        filter_tags: nil,
        # The number of tracking links to return. Default `10`
        limit: nil,
        # The offset used for pagination. Default `0`
        offset: nil,
        request_options: {}
      )
      end

      # List all stored free trial links from the OnlyFansAPI Cache. This is a free
      # endpoint that does not call the OnlyFans API.
      sig do
        params(
          account: String,
          filter_include_smart_links: T::Boolean,
          filter_search: String,
          filter_tags: String,
          limit: Integer,
          offset: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::StoredListTrialLinksResponse)
      end
      def list_trial_links(
        # The Account ID
        account,
        # Include trial links created by Smart Links. Default `false`
        filter_include_smart_links: nil,
        # Search trial link name or URL.
        filter_search: nil,
        # Filter by one or more tag names or slugs. Accepts CSV or repeated array values
        # (`filter[tags][]=...`) and matches any tag.
        filter_tags: nil,
        # The number of trial links to return. Default `10`
        limit: nil,
        # The offset used for pagination. Default `0`
        offset: nil,
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
