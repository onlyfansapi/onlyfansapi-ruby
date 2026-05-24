# typed: strong

module Onlyfansapi
  module Models
    class SmartLinkPostbackUpdateResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::SmartLinkPostbackUpdateResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta)
        )
      end
      attr_reader :_meta

      sig do
        params(
          _meta:
            Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta:
            Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta::OrHash,
          data:
            Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta,
            data: Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta::Credits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta::Cache,
              _credits:
                Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta::Credits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta::Cache,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_cached

          sig { params(is_cached: T::Boolean).void }
          attr_writer :is_cached

          sig { returns(T.nilable(String)) }
          attr_reader :note

          sig { params(note: String).void }
          attr_writer :note

          sig do
            params(is_cached: T::Boolean, note: String).returns(
              T.attached_class
            )
          end
          def self.new(is_cached: nil, note: nil)
          end

          sig { override.returns({ is_cached: T::Boolean, note: String }) }
          def to_hash
          end
        end

        class Credits < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Meta::Credits,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :balance

          sig { params(balance: Integer).void }
          attr_writer :balance

          sig { returns(T.nilable(String)) }
          attr_reader :note

          sig { params(note: String).void }
          attr_writer :note

          sig { returns(T.nilable(Integer)) }
          attr_reader :used

          sig { params(used: Integer).void }
          attr_writer :used

          sig do
            params(balance: Integer, note: String, used: Integer).returns(
              T.attached_class
            )
          end
          def self.new(balance: nil, note: nil, used: nil)
          end

          sig do
            override.returns({ balance: Integer, note: String, used: Integer })
          end
          def to_hash
          end
        end
      end

      class Data < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Data,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :id

        sig { params(id: Integer).void }
        attr_writer :id

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :conversion_types

        sig { params(conversion_types: T::Array[String]).void }
        attr_writer :conversion_types

        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_accessor :latest_response

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :smart_link_ids

        sig { params(smart_link_ids: T::Array[String]).void }
        attr_writer :smart_link_ids

        sig { returns(T.nilable(String)) }
        attr_reader :smart_link_scope

        sig { params(smart_link_scope: String).void }
        attr_writer :smart_link_scope

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Data::SmartLink
              ]
            )
          )
        end
        attr_reader :smart_links

        sig do
          params(
            smart_links:
              T::Array[
                Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Data::SmartLink::OrHash
              ]
          ).void
        end
        attr_writer :smart_links

        sig { returns(T.nilable(String)) }
        attr_reader :updated_at

        sig { params(updated_at: String).void }
        attr_writer :updated_at

        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig do
          params(
            id: Integer,
            conversion_types: T::Array[String],
            created_at: String,
            latest_response: T.nilable(String),
            smart_link_ids: T::Array[String],
            smart_link_scope: String,
            smart_links:
              T::Array[
                Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Data::SmartLink::OrHash
              ],
            updated_at: String,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          conversion_types: nil,
          created_at: nil,
          latest_response: nil,
          smart_link_ids: nil,
          smart_link_scope: nil,
          smart_links: nil,
          updated_at: nil,
          url: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              conversion_types: T::Array[String],
              created_at: String,
              latest_response: T.nilable(String),
              smart_link_ids: T::Array[String],
              smart_link_scope: String,
              smart_links:
                T::Array[
                  Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Data::SmartLink
                ],
              updated_at: String,
              url: String
            }
          )
        end
        def to_hash
        end

        class SmartLink < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::SmartLinkPostbackUpdateResponse::Data::SmartLink,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :account_display_name

          sig { params(account_display_name: String).void }
          attr_writer :account_display_name

          sig { returns(T.nilable(String)) }
          attr_reader :account_prefixed_id

          sig { params(account_prefixed_id: String).void }
          attr_writer :account_prefixed_id

          sig { returns(T.nilable(String)) }
          attr_reader :link_ulid

          sig { params(link_ulid: String).void }
          attr_writer :link_ulid

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig do
            params(
              account_display_name: String,
              account_prefixed_id: String,
              link_ulid: String,
              name: String
            ).returns(T.attached_class)
          end
          def self.new(
            account_display_name: nil,
            account_prefixed_id: nil,
            link_ulid: nil,
            name: nil
          )
          end

          sig do
            override.returns(
              {
                account_display_name: String,
                account_prefixed_id: String,
                link_ulid: String,
                name: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
