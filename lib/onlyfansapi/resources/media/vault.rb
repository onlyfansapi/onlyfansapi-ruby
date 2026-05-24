# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Media
      class Vault
        # @return [Onlyfansapi::Resources::Media::Vault::Lists]
        attr_reader :lists

        # Some parameter documentations has been truncated, see
        # {Onlyfansapi::Models::Media::VaultListParams} for more details.
        #
        # List media items stored in your vault. See how many likes and how much tips did
        # they get.
        #
        # @overload list(account, field: nil, limit: nil, list: nil, offset: nil, query: nil, sort: nil, type: nil, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param field [Symbol, Onlyfansapi::Models::Media::VaultListParams::Field] Sort the results by a field. Default `recent`
        #
        # @param limit [Integer] Number of media to return per page (10 - 100). Default: `24`
        #
        # @param list [Integer] Only show media items from a specific list (category). \*\*Refer to our Media
        # Vaul
        #
        # @param offset [Integer] The offset used for pagination. Default `0`
        #
        # @param query [String, nil] Optionally, search for a text query.
        #
        # @param sort [Symbol, Onlyfansapi::Models::Media::VaultListParams::Sort] Sort the results. Default `desc`
        #
        # @param type [Symbol, Onlyfansapi::Models::Media::VaultListParams::Type] Filter the results by a media type. Keep empty to show all media.
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Media::VaultListResponse]
        #
        # @see Onlyfansapi::Models::Media::VaultListParams
        def list(account, params = {})
          parsed, options = Onlyfansapi::Media::VaultListParams.dump_request(params)
          query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["api/%1$s/media/vault", account],
            query: query,
            model: Onlyfansapi::Models::Media::VaultListResponse,
            options: options
          )
        end

        # Delete one or multiple media from your vault.
        #
        # @overload delete(account, media_ids:, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param media_ids [Array<String>] Array of media IDs to delete.
        #
        # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfansapi::Models::Media::VaultDeleteResponse]
        #
        # @see Onlyfansapi::Models::Media::VaultDeleteParams
        def delete(account, params)
          parsed, options = Onlyfansapi::Media::VaultDeleteParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["api/%1$s/media/vault/delete-media", account],
            body: parsed,
            model: Onlyfansapi::Models::Media::VaultDeleteResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Onlyfansapi::Client]
        def initialize(client:)
          @client = client
          @lists = Onlyfansapi::Resources::Media::Vault::Lists.new(client: client)
        end
      end
    end
  end
end
