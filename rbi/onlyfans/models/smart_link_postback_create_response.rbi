# typed: strong

module Onlyfans
  module Models
    class SmartLinkPostbackCreateResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::SmartLinkPostbackCreateResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Onlyfans::Models::SmartLinkPostbackCreateResponse::Meta)
        )
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfans::Models::SmartLinkPostbackCreateResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(Onlyfans::Models::SmartLinkPostbackCreateResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Onlyfans::Models::SmartLinkPostbackCreateResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta:
            Onlyfans::Models::SmartLinkPostbackCreateResponse::Meta::OrHash,
          data: Onlyfans::Models::SmartLinkPostbackCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfans::Models::SmartLinkPostbackCreateResponse::Meta,
            data: Onlyfans::Models::SmartLinkPostbackCreateResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::SmartLinkPostbackCreateResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::SmartLinkPostbackCreateResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfans::Models::SmartLinkPostbackCreateResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::SmartLinkPostbackCreateResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfans::Models::SmartLinkPostbackCreateResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          params(
            _cache:
              Onlyfans::Models::SmartLinkPostbackCreateResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::SmartLinkPostbackCreateResponse::Meta::Credits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfans::Models::SmartLinkPostbackCreateResponse::Meta::Cache,
              _credits:
                Onlyfans::Models::SmartLinkPostbackCreateResponse::Meta::Credits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SmartLinkPostbackCreateResponse::Meta::Cache,
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
                Onlyfans::Models::SmartLinkPostbackCreateResponse::Meta::Credits,
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
              Onlyfans::Models::SmartLinkPostbackCreateResponse::Data,
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
                Onlyfans::Models::SmartLinkPostbackCreateResponse::Data::Header
              ]
            )
          )
        end
        attr_reader :headers

        sig do
          params(
            headers:
              T::Array[
                Onlyfans::Models::SmartLinkPostbackCreateResponse::Data::Header::OrHash
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

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :smart_link_ids

        sig { params(smart_link_ids: T::Array[T.anything]).void }
        attr_writer :smart_link_ids

        sig { returns(T.nilable(String)) }
        attr_reader :smart_link_scope

        sig { params(smart_link_scope: String).void }
        attr_writer :smart_link_scope

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :smart_links

        sig { params(smart_links: T::Array[T.anything]).void }
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
                Onlyfans::Models::SmartLinkPostbackCreateResponse::Data::Header::OrHash
              ],
            http_method: String,
            latest_response: T.nilable(String),
            smart_link_ids: T::Array[T.anything],
            smart_link_scope: String,
            smart_links: T::Array[T.anything],
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
                  Onlyfans::Models::SmartLinkPostbackCreateResponse::Data::Header
                ],
              http_method: String,
              latest_response: T.nilable(String),
              smart_link_ids: T::Array[T.anything],
              smart_link_scope: String,
              smart_links: T::Array[T.anything],
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
                Onlyfans::Models::SmartLinkPostbackCreateResponse::Data::Header,
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
      end
    end
  end
end
