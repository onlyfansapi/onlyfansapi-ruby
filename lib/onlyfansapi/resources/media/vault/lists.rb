# frozen_string_literal: true

module Onlyfansapi
  module Resources
    class Media
      class Vault
        class Lists
          # @return [Onlyfansapi::Resources::Media::Vault::Lists::Media]
          attr_reader :media

          # Create a new Vault list.
          #
          # @overload create(account, name:, request_options: {})
          #
          # @param account [String] The Account ID
          #
          # @param name [String] The name of your new list
          #
          # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Onlyfansapi::Models::Media::Vault::ListCreateResponse]
          #
          # @see Onlyfansapi::Models::Media::Vault::ListCreateParams
          def create(account, params)
            parsed, options = Onlyfansapi::Media::Vault::ListCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["api/%1$s/media/vault/lists", account],
              body: parsed,
              model: Onlyfansapi::Models::Media::Vault::ListCreateResponse,
              options: options
            )
          end

          # Show a Vault list.
          #
          # @overload retrieve(list_id, account:, request_options: {})
          #
          # @param list_id [String] The ID of the list
          #
          # @param account [String] The Account ID
          #
          # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Onlyfansapi::Models::Media::Vault::ListRetrieveResponse]
          #
          # @see Onlyfansapi::Models::Media::Vault::ListRetrieveParams
          def retrieve(list_id, params)
            parsed, options = Onlyfansapi::Media::Vault::ListRetrieveParams.dump_request(params)
            account =
              parsed.delete(:account) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["api/%1$s/media/vault/lists/%2$s", account, list_id],
              model: Onlyfansapi::Models::Media::Vault::ListRetrieveResponse,
              options: options
            )
          end

          # Rename a Vault list.
          #
          # @overload update(list_id, account:, request_options: {})
          #
          # @param list_id [String] The ID of the list
          #
          # @param account [String] The Account ID
          #
          # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Onlyfansapi::Models::Media::Vault::ListUpdateResponse]
          #
          # @see Onlyfansapi::Models::Media::Vault::ListUpdateParams
          def update(list_id, params)
            parsed, options = Onlyfansapi::Media::Vault::ListUpdateParams.dump_request(params)
            account =
              parsed.delete(:account) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :put,
              path: ["api/%1$s/media/vault/lists/%2$s", account, list_id],
              model: Onlyfansapi::Models::Media::Vault::ListUpdateResponse,
              options: options
            )
          end

          # List your Vault lists (categories).
          #
          # @overload list(account, limit: nil, offset: nil, query: nil, request_options: {})
          #
          # @param account [String] The Account ID
          #
          # @param limit [Integer] Number of media to return per page. Default: `24`
          #
          # @param offset [Integer] The offset used for pagination. Default `0`
          #
          # @param query [String] Optionally, find a list by its name.
          #
          # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Onlyfansapi::Models::Media::Vault::ListListResponse]
          #
          # @see Onlyfansapi::Models::Media::Vault::ListListParams
          def list(account, params = {})
            parsed, options = Onlyfansapi::Media::Vault::ListListParams.dump_request(params)
            query = Onlyfansapi::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["api/%1$s/media/vault/lists", account],
              query: query,
              model: Onlyfansapi::Models::Media::Vault::ListListResponse,
              options: options
            )
          end

          # Delete a Vault list.
          #
          # @overload delete(list_id, account:, request_options: {})
          #
          # @param list_id [String] The ID of the list
          #
          # @param account [String] The Account ID
          #
          # @param request_options [Onlyfansapi::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Onlyfansapi::Models::Media::Vault::ListDeleteResponse]
          #
          # @see Onlyfansapi::Models::Media::Vault::ListDeleteParams
          def delete(list_id, params)
            parsed, options = Onlyfansapi::Media::Vault::ListDeleteParams.dump_request(params)
            account =
              parsed.delete(:account) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["api/%1$s/media/vault/lists/%2$s", account, list_id],
              model: Onlyfansapi::Models::Media::Vault::ListDeleteResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Onlyfansapi::Client]
          def initialize(client:)
            @client = client
            @media = Onlyfansapi::Resources::Media::Vault::Lists::Media.new(client: client)
          end
        end
      end
    end
  end
end
