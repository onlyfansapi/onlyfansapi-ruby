# frozen_string_literal: true

module Onlyfans
  module Resources
    class SavedForLater
      class Posts
        # @return [Onlyfans::Resources::SavedForLater::Posts::Settings]
        attr_reader :settings

        # List all posts that are marked as "Save For Later".
        #
        # @overload list(account, limit:, offset:, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param limit [Integer] Maximum number of posts to return (default = 10)
        #
        # @param offset [Integer] Offset for pagination (default = 0)
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::SavedForLater::PostListResponse]
        #
        # @see Onlyfans::Models::SavedForLater::PostListParams
        def list(account, params)
          parsed, options = Onlyfans::SavedForLater::PostListParams.dump_request(params)
          query = Onlyfans::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["api/%1$s/saved-for-later/posts", account],
            query: query,
            model: Onlyfans::Models::SavedForLater::PostListResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Onlyfans::Client]
        def initialize(client:)
          @client = client
          @settings = Onlyfans::Resources::SavedForLater::Posts::Settings.new(client: client)
        end
      end
    end
  end
end
