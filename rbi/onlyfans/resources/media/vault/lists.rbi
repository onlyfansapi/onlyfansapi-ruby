# typed: strong

module Onlyfans
  module Resources
    class Media
      class Vault
        class Lists
          sig { returns(Onlyfans::Resources::Media::Vault::Lists::Media) }
          attr_reader :media

          # Create a new Vault list.
          sig do
            params(
              account: String,
              name: String,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(Onlyfans::Models::Media::Vault::ListCreateResponse)
          end
          def create(
            # The Account ID
            account,
            # The name of your new list
            name:,
            request_options: {}
          )
          end

          # Show a Vault list.
          sig do
            params(
              list_id: String,
              account: String,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(Onlyfans::Models::Media::Vault::ListRetrieveResponse)
          end
          def retrieve(
            # The ID of the list
            list_id,
            # The Account ID
            account:,
            request_options: {}
          )
          end

          # Rename a Vault list.
          sig do
            params(
              list_id: String,
              account: String,
              name: String,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(Onlyfans::Models::Media::Vault::ListUpdateResponse)
          end
          def update(
            # Path param: The ID of the list
            list_id,
            # Path param: The Account ID
            account:,
            # Body param: The new name for the vault list. Must not be greater than 255
            # characters.
            name:,
            request_options: {}
          )
          end

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
          sig do
            params(
              account: String,
              lightweight: T::Boolean,
              limit: Integer,
              offset: Integer,
              query: String,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(
              Onlyfans::Models::Media::Vault::ListListResponse::Variants
            )
          end
          def list(
            # The Account ID
            account,
            # Set to `true` to return only `id`, `name`, `type`, `canUpdate` and a rolled-up
            # `mediaCount` per list, dropping the `medias` previews. Much smaller payload —
            # ideal for rendering a folder picker. Default: `false`
            lightweight: nil,
            # Number of media to return per page. Default: `24`
            limit: nil,
            # The offset used for pagination. Default `0`
            offset: nil,
            # Optionally, find a list by its name.
            query: nil,
            request_options: {}
          )
          end

          # Delete a Vault list.
          sig do
            params(
              list_id: String,
              account: String,
              request_options: Onlyfans::RequestOptions::OrHash
            ).returns(Onlyfans::Models::Media::Vault::ListDeleteResponse)
          end
          def delete(
            # The ID of the list
            list_id,
            # The Account ID
            account:,
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
  end
end
