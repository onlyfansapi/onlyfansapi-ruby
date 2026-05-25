# frozen_string_literal: true

module Onlyfans
  module Resources
    class Posts
      # APIs for managing your post labels
      class Labels
        # Create a new post label.
        #
        # @overload create(account, name:, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param name [String] The name of your new label
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Posts::LabelCreateResponse]
        #
        # @see Onlyfans::Models::Posts::LabelCreateParams
        def create(account, params)
          parsed, options = Onlyfans::Posts::LabelCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/%1$s/posts/labels", account],
            body: parsed,
            model: Onlyfans::Models::Posts::LabelCreateResponse,
            options: options
          )
        end

        # List the labels that you can use to organize your posts.
        #
        # @overload list(account, limit: nil, offset: nil, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param limit [String] Number of labels to return (default = 10)
        #
        # @param offset [String] Number of labels to skip for pagination
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Posts::LabelListResponse]
        #
        # @see Onlyfans::Models::Posts::LabelListParams
        def list(account, params = {})
          parsed, options = Onlyfans::Posts::LabelListParams.dump_request(params)
          query = Onlyfans::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["api/%1$s/posts/labels", account],
            query: query,
            model: Onlyfans::Models::Posts::LabelListResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Onlyfans::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
