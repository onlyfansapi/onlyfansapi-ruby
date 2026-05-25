# frozen_string_literal: true

module Onlyfans
  module Resources
    class Media
      class Vault
        # @return [Onlyfans::Resources::Media::Vault::Lists]
        attr_reader :lists

        # Retrieve details about a specific media item in your vault.
        #
        # @overload retrieve(media_id, account:, request_options: {})
        #
        # @param media_id [Integer] The ID of the media item to retrieve.
        #
        # @param account [String] The Account ID
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Media::VaultRetrieveResponse]
        #
        # @see Onlyfans::Models::Media::VaultRetrieveParams
        def retrieve(media_id, params)
          parsed, options = Onlyfans::Media::VaultRetrieveParams.dump_request(params)
          account =
            parsed.delete(:account) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["api/%1$s/media/vault/%2$s", account, media_id],
            model: Onlyfans::Models::Media::VaultRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Onlyfans::Models::Media::VaultListParams} for more details.
        #
        # List media items stored in your vault. See how many likes and how much tips did
        # they get.
        #
        # @overload list(account, field: nil, limit: nil, list: nil, offset: nil, query: nil, sort: nil, type: nil, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param field [Symbol, Onlyfans::Models::Media::VaultListParams::Field] Sort the results by a field. Default `recent`
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
        # @param sort [Symbol, Onlyfans::Models::Media::VaultListParams::Sort] Sort the results. Default `desc`
        #
        # @param type [Symbol, Onlyfans::Models::Media::VaultListParams::Type] Filter the results by a media type. Keep empty to show all media.
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Media::VaultListResponse]
        #
        # @see Onlyfans::Models::Media::VaultListParams
        def list(account, params = {})
          parsed, options = Onlyfans::Media::VaultListParams.dump_request(params)
          query = Onlyfans::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["api/%1$s/media/vault", account],
            query: query,
            model: Onlyfans::Models::Media::VaultListResponse,
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
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Media::VaultDeleteResponse]
        #
        # @see Onlyfans::Models::Media::VaultDeleteParams
        def delete(account, params)
          parsed, options = Onlyfans::Media::VaultDeleteParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["api/%1$s/media/vault/delete-media", account],
            body: parsed,
            model: Onlyfans::Models::Media::VaultDeleteResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Onlyfans::Models::Media::VaultUploadParams} for more details.
        #
        # Upload a media file directly to your vault.
        #
        # @overload upload(account, async: nil, file: nil, file_url: nil, request_options: {})
        #
        # @param account [String] The Account ID
        #
        # @param async [Boolean] Set to `true` to process uploads in the background. Returns a `polling_url` to c
        #
        # @param file [Pathname, StringIO, IO, String, Onlyfans::FilePart] The file to upload. Required if `file_url` is not provided. Maximum file size: 1
        #
        # @param file_url [String] A URL to download the file from. Required if `file` is not provided. Maximum fil
        #
        # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Onlyfans::Models::Media::VaultUploadResponse]
        #
        # @see Onlyfans::Models::Media::VaultUploadParams
        def upload(account, params = {})
          parsed, options = Onlyfans::Media::VaultUploadParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/%1$s/media/vault", account],
            headers: {"content-type" => "multipart/form-data"},
            body: parsed,
            model: Onlyfans::Models::Media::VaultUploadResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Onlyfans::Client]
        def initialize(client:)
          @client = client
          @lists = Onlyfans::Resources::Media::Vault::Lists.new(client: client)
        end
      end
    end
  end
end
