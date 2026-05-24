# typed: strong

module Onlyfansapi
  module Resources
    class Profiles
      # Get profile details by username.
      sig do
        params(
          username: String,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::ProfileRetrieveResponse)
      end
      def retrieve(
        # The username of the profile to get
        username,
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
