# typed: strong

module Onlyfans
  module Resources
    # APIs for managing tags on free trial links and tracking links
    class LinkTags
      # Get all existing tags that have been used on free trial links and/or tracking
      # links for this account. This is a free endpoint.
      sig do
        params(
          type: Onlyfans::LinkTagListParams::Type::OrSymbol,
          request_options: Onlyfans::RequestOptions::OrHash
        ).returns(Onlyfans::Models::LinkTagListResponse)
      end
      def list(
        # Filter by link type. If not provided, returns tags for both types.
        type: nil,
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
