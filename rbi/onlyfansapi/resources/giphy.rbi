# typed: strong

module Onlyfansapi
  module Resources
    class Giphy
      # Get trending GIFs from the OnlyFans Giphy proxy. Use the returned `id` as the
      # `giphyId` body param when sending a chat or mass message.
      sig do
        params(
          account: String,
          limit: Integer,
          offset: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::GiphyListTrendingResponse)
      end
      def list_trending(
        # The Account ID
        account,
        # Number of GIFs to return (default = 10, max = 50)
        limit: nil,
        # Number of GIFs to skip for pagination (default = 0)
        offset: nil,
        request_options: {}
      )
      end

      # Search GIFs from the OnlyFans Giphy proxy. Use the returned `id` as the
      # `giphyId` body param when sending a chat or mass message.
      sig do
        params(
          account: String,
          q: String,
          limit: Integer,
          offset: Integer,
          request_options: Onlyfansapi::RequestOptions::OrHash
        ).returns(Onlyfansapi::Models::GiphySearchResponse)
      end
      def search(
        # The Account ID
        account,
        # The search query.
        q:,
        # Number of GIFs to return (default = 10, max = 50)
        limit: nil,
        # Number of GIFs to skip for pagination (default = 0)
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
