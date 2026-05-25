# typed: strong

module Onlyfans
  module Resources
    class Whoami
      # Get details about the currently used API Key & the relevant Team
      sig do
        params(request_options: Onlyfans::RequestOptions::OrHash).returns(
          Onlyfans::Models::WhoamiRetrieveResponse
        )
      end
      def retrieve(request_options: {})
      end

      # @api private
      sig { params(client: Onlyfans::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
