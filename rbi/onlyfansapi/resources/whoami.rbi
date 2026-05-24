# typed: strong

module Onlyfansapi
  module Resources
    class Whoami
      # Get details about the currently used API Key & the relevant Team
      sig do
        params(request_options: Onlyfansapi::RequestOptions::OrHash).returns(
          Onlyfansapi::Models::WhoamiRetrieveResponse
        )
      end
      def retrieve(request_options: {})
      end

      # @api private
      sig { params(client: Onlyfansapi::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
