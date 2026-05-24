# typed: strong

module Onlyfansapi
  module Resources
    # APIs for managing OnlyFans fans (subscribers)
    class Fans
      # Get a paginated list of fans for an Account. Newest fans are first.
      sig do
        params(
          account: String,
          filter: Onlyfansapi::FanListActiveParams::Filter::OrHash,
          limit: T.nilable(String),
          offset: T.nilable(String),
          type: T.nilable(String),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::FanListActiveResponse)
      end
      def list_active(
        # The Account ID
        account,
        filter: nil,
        # Number of fans to return (1-50)
        limit: nil,
        # Number of fans to skip
        offset: nil,
        # Filter by fan type
        type: nil,
        request_options: {}
      )
      end

      # Get a paginated list of fans for an Account. Newest fans are first.
      sig do
        params(
          account: String,
          filter: Onlyfansapi::FanListAllParams::Filter::OrHash,
          limit: T.nilable(String),
          offset: T.nilable(String),
          type: T.nilable(String),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::FanListAllResponse)
      end
      def list_all(
        # The Account ID
        account,
        filter: nil,
        # Number of fans to return (1-50)
        limit: nil,
        # Number of fans to skip
        offset: nil,
        # Filter by fan type
        type: nil,
        request_options: {}
      )
      end

      # Get a paginated list of expired fans for an Account. Newest fans are first.
      sig do
        params(
          account: String,
          filter: Onlyfansapi::FanListExpiredParams::Filter::OrHash,
          limit: T.nilable(String),
          offset: T.nilable(String),
          type: T.nilable(String),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::FanListExpiredResponse)
      end
      def list_expired(
        # The Account ID
        account,
        filter: nil,
        # Number of fans to return (1-50)
        limit: nil,
        # Number of fans to skip
        offset: nil,
        # Filter by fan type
        type: nil,
        request_options: {}
      )
      end

      # Get a paginated list fans, filterable by total, only new subscribers, or only
      # renewals. Newest fans are first.
      sig do
        params(
          account: String,
          end_date: T.nilable(String),
          limit: T.nilable(String),
          offset: T.nilable(String),
          start_date: T.nilable(String),
          type: T.nilable(String),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::FanListLatestResponse)
      end
      def list_latest(
        # The Account ID
        account,
        # End date for filtering (required with start_date)
        end_date: nil,
        # Number of fans to return (1-100)
        limit: nil,
        # Number of fans to skip
        offset: nil,
        # Start date for filtering (required with end_date)
        start_date: nil,
        # Filter by type: total, renew, or new
        type: nil,
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
