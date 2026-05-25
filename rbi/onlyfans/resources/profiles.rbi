# typed: strong

module Onlyfans
  module Resources
    class Profiles
      # Get profile details by username.
      sig do
        params(
          username: String,
          fresh: T.nilable(T::Boolean),
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::ProfileRetrieveResponse)
      end
      def retrieve(
        # The username of the profile to get
        username,
        # If `true` then OnlyFansAPI will always return the real time information about
        # profile (eg. when was the profile last online).
        fresh: nil,
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
