# typed: strong

module Onlyfansapi
  module Resources
    # Endpoints for your linked accounts
    class Accounts
      # List all connected OnlyFans accounts.
      sig do
        params(
          onlyfans_email: T.nilable(String),
          onlyfans_id: T.nilable(String),
          onlyfans_username: T.nilable(String),
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T::Array[T.anything])
      end
      def list(
        # Optionally, filter by the OnlyFans email
        onlyfans_email: nil,
        # Optionally, filter by the OnlyFans ID
        onlyfans_id: nil,
        # Optionally, filter by the OnlyFans username
        onlyfans_username: nil,
        request_options: {}
      )
      end

      # Disconnect an OnlyFans account.
      sig do
        params(
          id: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(T.nilable(T.anything))
      end
      def disconnect(
        # The ID of the account.
        id,
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
