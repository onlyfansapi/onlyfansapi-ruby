# typed: strong

module Onlyfans
  module Resources
    # APIs for managing OnlyFans followings (people you're subscribed to)
    class Following
      # Get a paginated list of followings for an Account. By default OnlyFans returns
      # this list newest-first, sorted by `subscribedByData.subscribeAt` descending. The
      # expired list does not share this order, so do not assume it applies there. Pass
      # `sort` (optionally with `sortDirection`) to reorder the list — see the parameter
      # description for the caveat that OnlyFans persists the chosen order account-wide.
      # An empty page is not the end of the list: OnlyFans applies `offset` to the whole
      # following collection before filtering it down to the requested list, so a page
      # can come back empty while more results follow. Keep following
      # `_pagination.next_page` until it is `null` instead of stopping at the first
      # empty page.
      sig do
        params(
          account: String,
          filter: Onlyfans::FollowingListActiveParams::Filter::OrHash,
          limit: Integer,
          offset: Integer,
          query: T.nilable(String),
          sort: T.nilable(Onlyfans::FollowingListActiveParams::Sort::OrSymbol),
          sort_direction:
            T.nilable(
              Onlyfans::FollowingListActiveParams::SortDirection::OrSymbol
            ),
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
        # Order the list by `last_activity` (the followed creator's last activity),
        # `expire_date` (subscription expiry), `subscribe_date` (subscription start) or
        # `is_expired` (expired first — OnlyFans only offers this one on the expired
        # list). Omit it to keep whichever order is currently stored for the account.
        # **Note:** OnlyFans persists this order account-wide, so it also applies to later
        # requests that omit `sort` and to the creator's own onlyfans.com UI, until it is
        # changed again. **Expired list:** OnlyFans applies `offset` to the whole
        # following collection and only then filters it down to expired subscriptions, so
        # ordering by expiry descending puts the still-active subscriptions first and
        # moves the expired rows to the tail of the collection — the first several hundred
        # offsets then come back empty. Use `sortDirection=asc` or `sort=is_expired` to
        # get expired-first results. For that reason `sort=expire_date` on the expired
        # list defaults to `asc` instead of `desc` when you do not pass `sortDirection`.
        # Whatever order you pick, an empty page is **not** the end of the list: keep
        # following `_pagination.next_page` until it is `null` rather than stopping at the
        # first empty page. This field is required when <code>sortDirection</code> is
        # present.
        sort: nil,
        # Direction for `sort`: `desc` (default) or `asc`. Requires `sort` to be set.
        # Exception: `sort=expire_date` on the expired list defaults to `asc`, because
        # `desc` moves the expired rows to the tail of the underlying collection and
        # leaves the early pages empty. Passing `sortDirection` explicitly always wins.
        sort_direction: nil,
        request_options: {}
      )
      end

      # Get a paginated list of followings for an Account. By default OnlyFans returns
      # this list newest-first, sorted by `subscribedByData.subscribeAt` descending. The
      # expired list does not share this order, so do not assume it applies there. Pass
      # `sort` (optionally with `sortDirection`) to reorder the list — see the parameter
      # description for the caveat that OnlyFans persists the chosen order account-wide.
      # An empty page is not the end of the list: OnlyFans applies `offset` to the whole
      # following collection before filtering it down to the requested list, so a page
      # can come back empty while more results follow. Keep following
      # `_pagination.next_page` until it is `null` instead of stopping at the first
      # empty page.
      sig do
        params(
          account: String,
          filter: Onlyfans::FollowingListAllParams::Filter::OrHash,
          limit: Integer,
          offset: Integer,
          query: T.nilable(String),
          sort: T.nilable(Onlyfans::FollowingListAllParams::Sort::OrSymbol),
          sort_direction:
            T.nilable(
              Onlyfans::FollowingListAllParams::SortDirection::OrSymbol
            ),
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
        # Order the list by `last_activity` (the followed creator's last activity),
        # `expire_date` (subscription expiry), `subscribe_date` (subscription start) or
        # `is_expired` (expired first — OnlyFans only offers this one on the expired
        # list). Omit it to keep whichever order is currently stored for the account.
        # **Note:** OnlyFans persists this order account-wide, so it also applies to later
        # requests that omit `sort` and to the creator's own onlyfans.com UI, until it is
        # changed again. **Expired list:** OnlyFans applies `offset` to the whole
        # following collection and only then filters it down to expired subscriptions, so
        # ordering by expiry descending puts the still-active subscriptions first and
        # moves the expired rows to the tail of the collection — the first several hundred
        # offsets then come back empty. Use `sortDirection=asc` or `sort=is_expired` to
        # get expired-first results. For that reason `sort=expire_date` on the expired
        # list defaults to `asc` instead of `desc` when you do not pass `sortDirection`.
        # Whatever order you pick, an empty page is **not** the end of the list: keep
        # following `_pagination.next_page` until it is `null` rather than stopping at the
        # first empty page. This field is required when <code>sortDirection</code> is
        # present.
        sort: nil,
        # Direction for `sort`: `desc` (default) or `asc`. Requires `sort` to be set.
        # Exception: `sort=expire_date` on the expired list defaults to `asc`, because
        # `desc` moves the expired rows to the tail of the underlying collection and
        # leaves the early pages empty. Passing `sortDirection` explicitly always wins.
        sort_direction: nil,
        request_options: {}
      )
      end

      # Get a paginated list of expired followings for an Account. This list has no
      # order guarantee. Unlike the all and active lists, it is sorted by neither
      # `subscribedByData.subscribeAt` nor `subscribedByData.expiredAt`. To poll for new
      # expirations, page through the full list each cycle (`limit=50`, follow
      # `_pagination.next_page` until it is null) and diff it against your own store
      # using `subscribedByData.expiredAt`. Do NOT stop early at the first entry you
      # have already seen, as that can silently skip real expirations. An empty page is
      # not the end of the list either: OnlyFans applies `offset` to the whole following
      # collection and only then filters that window down to expired subscriptions, so
      # early pages can come back empty while hundreds of expired rows still follow.
      # Keep following `_pagination.next_page` until it is `null` instead of stopping at
      # the first empty page. Pass `sort=expire_date` (optionally with `sortDirection`)
      # to get a deterministic order instead — see the parameter description for the
      # caveat that OnlyFans persists the chosen order account-wide. Ordering by expiry
      # descending puts the still-active subscriptions first and moves the expired rows
      # to the tail of the collection, so prefer `sortDirection=asc` or
      # `sort=is_expired` for expired-first results; for that reason `sort=expire_date`
      # defaults to `asc` on this list when no `sortDirection` is given.
      sig do
        params(
          account: String,
          filter: Onlyfans::FollowingListExpiredParams::Filter::OrHash,
          limit: Integer,
          offset: Integer,
          query: T.nilable(String),
          sort: T.nilable(Onlyfans::FollowingListExpiredParams::Sort::OrSymbol),
          sort_direction:
            T.nilable(
              Onlyfans::FollowingListExpiredParams::SortDirection::OrSymbol
            ),
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
        # Order the list by `last_activity` (the followed creator's last activity),
        # `expire_date` (subscription expiry), `subscribe_date` (subscription start) or
        # `is_expired` (expired first — OnlyFans only offers this one on the expired
        # list). Omit it to keep whichever order is currently stored for the account.
        # **Note:** OnlyFans persists this order account-wide, so it also applies to later
        # requests that omit `sort` and to the creator's own onlyfans.com UI, until it is
        # changed again. **Expired list:** OnlyFans applies `offset` to the whole
        # following collection and only then filters it down to expired subscriptions, so
        # ordering by expiry descending puts the still-active subscriptions first and
        # moves the expired rows to the tail of the collection — the first several hundred
        # offsets then come back empty. Use `sortDirection=asc` or `sort=is_expired` to
        # get expired-first results. For that reason `sort=expire_date` on the expired
        # list defaults to `asc` instead of `desc` when you do not pass `sortDirection`.
        # Whatever order you pick, an empty page is **not** the end of the list: keep
        # following `_pagination.next_page` until it is `null` rather than stopping at the
        # first empty page. This field is required when <code>sortDirection</code> is
        # present.
        sort: nil,
        # Direction for `sort`: `desc` (default) or `asc`. Requires `sort` to be set.
        # Exception: `sort=expire_date` on the expired list defaults to `asc`, because
        # `desc` moves the expired rows to the tail of the underlying collection and
        # leaves the early pages empty. Passing `sortDirection` explicitly always wins.
        sort_direction: nil,
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
