# typed: strong

module Onlyfans
  module Resources
    # APIs for managing OnlyFans followings (people you're subscribed to)
    class Following
      # Get a paginated list of followings for an Account. OnlyFans returns this list
      # newest-first, sorted by `subscribedByData.subscribeAt` descending. The expired
      # list does not share this order, so do not assume it applies there.
      sig do
        params(
          account: String,
          filter: Onlyfans::FollowingListActiveParams::Filter::OrHash,
          limit: Integer,
          offset: Integer,
          query: T.nilable(String),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::FollowingListActiveResponse)
      end
      def list_active(
        # The Account ID
        account,
        filter: nil,
        # Number of followings to return (1-50). Must be at least 1. Must not be greater
        # than 50.
        limit: nil,
        # Pagination offset. Must be at least 0.
        offset: nil,
        # Search within following name/username.
        query: nil,
        request_options: {}
      )
      end

      # Get a paginated list of followings for an Account. OnlyFans returns this list
      # newest-first, sorted by `subscribedByData.subscribeAt` descending. The expired
      # list does not share this order, so do not assume it applies there.
      sig do
        params(
          account: String,
          filter: Onlyfans::FollowingListAllParams::Filter::OrHash,
          limit: Integer,
          offset: Integer,
          query: T.nilable(String),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::FollowingListAllResponse)
      end
      def list_all(
        # The Account ID
        account,
        filter: nil,
        # Number of followings to return (1-50). Must be at least 1. Must not be greater
        # than 50.
        limit: nil,
        # Pagination offset. Must be at least 0.
        offset: nil,
        # Search within following name/username.
        query: nil,
        request_options: {}
      )
      end

      # Get a paginated list of expired followings for an Account. This list has no
      # order guarantee. Unlike the all and active lists, it is sorted by neither
      # `subscribedByData.subscribeAt` nor `subscribedByData.expiredAt`. To poll for new
      # expirations, page through the full list each cycle (`limit=50`, follow
      # `_pagination.next_page` until it is null) and diff it against your own store
      # using `subscribedByData.expiredAt`. Do NOT stop early at the first entry you
      # have already seen, as that can silently skip real expirations.
      sig do
        params(
          account: String,
          filter: Onlyfans::FollowingListExpiredParams::Filter::OrHash,
          limit: Integer,
          offset: Integer,
          query: T.nilable(String),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::FollowingListExpiredResponse)
      end
      def list_expired(
        # The Account ID
        account,
        filter: nil,
        # Number of followings to return (1-50). Must be at least 1. Must not be greater
        # than 50.
        limit: nil,
        # Pagination offset. Must be at least 0.
        offset: nil,
        # Search within following name/username.
        query: nil,
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
