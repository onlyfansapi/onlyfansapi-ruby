# typed: strong

module Onlyfansapi
  module Resources
    class Stored
      # List all shared Tracking Links from the OnlyFansAPI Cache. This is a free
      # endpoint that does not call the OnlyFans API.
      sig do
        params(
          account: String,
          filter:
            Onlyfansapi::StoredListSharedTrackingLinksParams::Filter::OrHash,
          limit: Integer,
          offset: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::StoredListSharedTrackingLinksResponse)
      end
      def list_shared_tracking_links(
        # The Account ID
        account,
        filter: nil,
        # The number of shared tracking links to return. Default `10`. Must be at least 1.
        # Must not be greater than 1000.
        limit: nil,
        # The offset used for pagination. Default `0`. Must be at least 0.
        offset: nil,
        request_options: {}
      )
      end

      # List all shared Free Trial Links from the OnlyFansAPI Cache. This is a free
      # endpoint that does not call the OnlyFans API.
      sig do
        params(
          account: String,
          filter: Onlyfansapi::StoredListSharedTrialLinksParams::Filter::OrHash,
          limit: Integer,
          offset: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::StoredListSharedTrialLinksResponse)
      end
      def list_shared_trial_links(
        # The Account ID
        account,
        filter: nil,
        # The number of shared trial links to return. Default `10`. Must be at least 1.
        # Must not be greater than 1000.
        limit: nil,
        # The offset used for pagination. Default `0`. Must be at least 0.
        offset: nil,
        request_options: {}
      )
      end

      # List all stored tracking links from the OnlyFansAPI Cache. This is a free
      # endpoint that does not call the OnlyFans API.
      sig do
        params(
          account: String,
          filter: Onlyfansapi::StoredListTrackingLinksParams::Filter::OrHash,
          limit: Integer,
          offset: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::StoredListTrackingLinksResponse)
      end
      def list_tracking_links(
        # The Account ID
        account,
        filter: nil,
        # The number of tracking links to return. Default `10`. Must be at least 1. Must
        # not be greater than 1000.
        limit: nil,
        # The offset used for pagination. Default `0`. Must be at least 0.
        offset: nil,
        request_options: {}
      )
      end

      # List all stored free trial links from the OnlyFansAPI Cache. This is a free
      # endpoint that does not call the OnlyFans API.
      sig do
        params(
          account: String,
          filter: Onlyfansapi::StoredListTrialLinksParams::Filter::OrHash,
          limit: Integer,
          offset: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::StoredListTrialLinksResponse)
      end
      def list_trial_links(
        # The Account ID
        account,
        filter: nil,
        # The number of trial links to return. Default `10`. Must be at least 1. Must not
        # be greater than 1000.
        limit: nil,
        # The offset used for pagination. Default `0`. Must be at least 0.
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
