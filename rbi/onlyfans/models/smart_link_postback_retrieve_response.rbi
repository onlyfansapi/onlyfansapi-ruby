# typed: strong

module Onlyfans
  module Models
    class SmartLinkPostbackRetrieveResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::SmartLinkPostbackRetrieveResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Meta)
        )
      end
      attr_reader :_meta

      sig do
        params(
          _meta:
            Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta:
            Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Meta::OrHash,
          data:
            Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Meta,
            data: Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          params(
            _cache:
              Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Meta::Credits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Meta::Cache,
              _credits:
                Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Meta::Credits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Meta::Cache,
                Onlyfans::Internal::AnyHash
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

        class Credits < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Meta::Credits,
                Onlyfans::Internal::AnyHash
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

      class Data < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Data,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :id

        sig { params(id: Integer).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :body

        sig { params(body: String).void }
        attr_writer :body

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :conversion_types

        sig { params(conversion_types: T::Array[String]).void }
        attr_writer :conversion_types

        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Data::Header
              ]
            )
          )
        end
        attr_reader :headers

        sig do
          params(
            headers:
              T::Array[
                Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Data::Header::OrHash
              ]
          ).void
        end
        attr_writer :headers

        sig { returns(T.nilable(String)) }
        attr_reader :http_method

        sig { params(http_method: String).void }
        attr_writer :http_method

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
                Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Data::SmartLink
              ]
            )
          )
        end
        attr_reader :smart_links

        sig do
          params(
            smart_links:
              T::Array[
                Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Data::SmartLink::OrHash
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
            body: String,
            conversion_types: T::Array[String],
            created_at: String,
            headers:
              T::Array[
                Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Data::Header::OrHash
              ],
            http_method: String,
            latest_response: T.nilable(String),
            smart_link_ids: T::Array[String],
            smart_link_scope: String,
            smart_links:
              T::Array[
                Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Data::SmartLink::OrHash
              ],
            updated_at: String,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          body: nil,
          conversion_types: nil,
          created_at: nil,
          headers: nil,
          http_method: nil,
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
              body: String,
              conversion_types: T::Array[String],
              created_at: String,
              headers:
                T::Array[
                  Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Data::Header
                ],
              http_method: String,
              latest_response: T.nilable(String),
              smart_link_ids: T::Array[String],
              smart_link_scope: String,
              smart_links:
                T::Array[
                  Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Data::SmartLink
                ],
              updated_at: String,
              url: String
            }
          )
        end
        def to_hash
        end

        class Header < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Data::Header,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(String)) }
          attr_reader :value

          sig { params(value: String).void }
          attr_writer :value

          sig { params(name: String, value: String).returns(T.attached_class) }
          def self.new(name: nil, value: nil)
          end

          sig { override.returns({ name: String, value: String }) }
          def to_hash
          end
        end

        class SmartLink < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SmartLinkPostbackRetrieveResponse::Data::SmartLink,
                Onlyfans::Internal::AnyHash
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
