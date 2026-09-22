# frozen_string_literal: true

module Onlyfans
  module Resources
    class Media
      class Vault
        class Lists
          # @return [Onlyfans::Resources::Media::Vault::Lists::Media]
          attr_reader :media

          # Create a new Vault list.
          #
          # @overload create(account, name:, request_options: {})
          #
          # @param account [String] The Account ID
          #
          # @param name [String] The name of your new list
          #
          # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Onlyfans::Models::Media::Vault::ListCreateResponse]
          #
          # @see Onlyfans::Models::Media::Vault::ListCreateParams
          def create(account, params)
            parsed, options = Onlyfans::Media::Vault::ListCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["api/%1$s/media/vault/lists", account],
              body: parsed,
              model: Onlyfans::Models::Media::Vault::ListCreateResponse,
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
          # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Onlyfans::Models::Media::Vault::ListRetrieveResponse]
          #
          # @see Onlyfans::Models::Media::Vault::ListRetrieveParams
          def retrieve(list_id, params)
            parsed, options = Onlyfans::Media::Vault::ListRetrieveParams.dump_request(params)
            account =
              parsed.delete(:account) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["api/%1$s/media/vault/lists/%2$s", account, list_id],
              model: Onlyfans::Models::Media::Vault::ListRetrieveResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Onlyfans::Models::Media::Vault::ListUpdateParams} for more details.
          #
          # Rename a Vault list.
          #
          # @overload update(list_id, account:, name:, request_options: {})
          #
          # @param list_id [String] Path param: The ID of the list
          #
          # @param account [String] Path param: The Account ID
          #
          # @param name [String] Body param: The new name for the vault list. Must not be greater than 255 charac
          #
          # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Onlyfans::Models::Media::Vault::ListUpdateResponse]
          #
          # @see Onlyfans::Models::Media::Vault::ListUpdateParams
          def update(list_id, params)
            parsed, options = Onlyfans::Media::Vault::ListUpdateParams.dump_request(params)
            account =
              parsed.delete(:account) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :put,
              path: ["api/%1$s/media/vault/lists/%2$s", account, list_id],
              body: parsed,
              model: Onlyfans::Models::Media::Vault::ListUpdateResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Onlyfans::Models::Media::Vault::ListListParams} for more details.
          #
          # List your Vault lists (categories).
          #
          # Every response carries an `ETag` computed over the `data` payload. Send it back
          # as `If-None-Match` on your next call and you will get a `304 Not Modified` with
          # an empty body when nothing changed, so you can keep serving your cached copy
          # instead of re-parsing the full list. Credits are debited either way — we still
          # have to ask OnlyFans for the current state to know whether it changed.
          #
          # The `ETag` covers `data` only, never `_meta` — your credits balance changes on
          # every call, so including it would mean the `ETag` never matches. Because a `304`
          # has no body, it also has no `_meta`: read the current credits and rate-limit
          # counters from the `X-OFAPI-Credits-Used`, `X-OFAPI-Credits-Balance`,
          # `X-Rate-Limit-Limit-Minute` and `X-Rate-Limit-Remaining-Minute` response
          # headers, which are sent on `304` responses too. The `_meta` inside a body you
          # cached earlier is stale by definition.
          #
          # @overload list(account, lightweight: nil, limit: nil, offset: nil, query: nil, request_options: {})
          #
          # @param account [String] The Account ID
          #
          # @param lightweight [Boolean] Set to `true` to return only `id`, `name`, `type`, `canUpdate` and a rolled-up `
          #
          # @param limit [Integer] Number of media to return per page. Default: `24`
          #
          # @param offset [Integer] The offset used for pagination. Default `0`
          #
          # @param query [String] Optionally, find a list by its name.
          #
          # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Onlyfans::Models::Media::Vault::ListListResponse::UnionMember0, Onlyfans::Models::Media::Vault::ListListResponse::UnionMember1]
          #
          # @see Onlyfans::Models::Media::Vault::ListListParams
          def list(account, params = {})
            parsed, options = Onlyfans::Media::Vault::ListListParams.dump_request(params)
            query = Onlyfans::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["api/%1$s/media/vault/lists", account],
              query: query,
              model: Onlyfans::Models::Media::Vault::ListListResponse,
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
          # @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Onlyfans::Models::Media::Vault::ListDeleteResponse]
          #
          # @see Onlyfans::Models::Media::Vault::ListDeleteParams
          def delete(list_id, params)
            parsed, options = Onlyfans::Media::Vault::ListDeleteParams.dump_request(params)
            account =
              parsed.delete(:account) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["api/%1$s/media/vault/lists/%2$s", account, list_id],
              model: Onlyfans::Models::Media::Vault::ListDeleteResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Onlyfans::Client]
          def initialize(client:)
            @client = client
            @media = Onlyfans::Resources::Media::Vault::Lists::Media.new(client: client)
          end
        end
      end
    end
  end
end
