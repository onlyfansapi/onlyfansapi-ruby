# frozen_string_literal: true

module Onlyfans
  module Resources
    class Media
      class Vault
        class Lists
          class Media
            # Add one or multiple media to a list.
            #
            # @overload add(list_id, account:, media_ids:, request_options: {})
            #
            # @param list_id [String] Path param: The ID of the list.
            #
            # @param account [String] Path param: The Account ID
            #
            # @param media_ids [Array<String>] Body param: Array of media IDs to add.
            #
            # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Onlyfans::Models::Media::Vault::Lists::MediaAddResponse]
            #
            # @see Onlyfans::Models::Media::Vault::Lists::MediaAddParams
            def add(list_id, params)
              parsed, options = Onlyfans::Media::Vault::Lists::MediaAddParams.dump_request(params)
              account =
                parsed.delete(:account) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: ["api/%1$s/media/vault/lists/%2$s/media", account, list_id],
                body: parsed,
                model: Onlyfans::Models::Media::Vault::Lists::MediaAddResponse,
                options: options
              )
            end

            # Remove one or multiple media from a list.
            #
            # @overload remove(list_id, account:, media_ids:, request_options: {})
            #
            # @param list_id [String] Path param: The ID of the list.
            #
            # @param account [String] Path param: The Account ID
            #
            # @param media_ids [Array<String>] Body param: Array of media IDs to delete.
            #
            # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse]
            #
            # @see Onlyfans::Models::Media::Vault::Lists::MediaRemoveParams
            def remove(list_id, params)
              parsed, options = Onlyfans::Media::Vault::Lists::MediaRemoveParams.dump_request(params)
              account =
                parsed.delete(:account) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :delete,
                path: ["api/%1$s/media/vault/lists/%2$s/media", account, list_id],
                body: parsed,
                model: Onlyfans::Models::Media::Vault::Lists::MediaRemoveResponse,
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
  end
end
