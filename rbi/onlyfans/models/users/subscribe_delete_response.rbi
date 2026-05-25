# typed: strong

module Onlyfans
  module Models
    module Users
      class SubscribeDeleteResponse < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::Users::SubscribeDeleteResponse,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfans::Models::Users::SubscribeDeleteResponse::Meta)
          )
        end
        attr_reader :_meta

        sig do
          params(
            _meta:
              Onlyfans::Models::Users::SubscribeDeleteResponse::Meta::OrHash
          ).void
        end
        attr_writer :_meta

        sig do
          returns(
            T.nilable(Onlyfans::Models::Users::SubscribeDeleteResponse::Data)
          )
        end
        attr_reader :data

        sig do
          params(
            data: Onlyfans::Models::Users::SubscribeDeleteResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            _meta:
              Onlyfans::Models::Users::SubscribeDeleteResponse::Meta::OrHash,
            data: Onlyfans::Models::Users::SubscribeDeleteResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_meta: nil, data: nil)
        end

        sig do
          override.returns(
            {
              _meta: Onlyfans::Models::Users::SubscribeDeleteResponse::Meta,
              data: Onlyfans::Models::Users::SubscribeDeleteResponse::Data
            }
          )
        end
        def to_hash
        end

        class Meta < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::Users::SubscribeDeleteResponse::Meta,
                Onlyfans::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Users::SubscribeDeleteResponse::Meta::Cache
              )
            )
          end
          attr_reader :_cache

          sig do
            params(
              _cache:
                Onlyfans::Models::Users::SubscribeDeleteResponse::Meta::Cache::OrHash
            ).void
          end
          attr_writer :_cache

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::Users::SubscribeDeleteResponse::Meta::Credits
              )
            )
          end
          attr_reader :_credits

          sig do
            params(
              _credits:
                Onlyfans::Models::Users::SubscribeDeleteResponse::Meta::Credits::OrHash
            ).void
          end
          attr_writer :_credits

          sig do
            params(
              _cache:
                Onlyfans::Models::Users::SubscribeDeleteResponse::Meta::Cache::OrHash,
              _credits:
                Onlyfans::Models::Users::SubscribeDeleteResponse::Meta::Credits::OrHash
            ).returns(T.attached_class)
          end
          def self.new(_cache: nil, _credits: nil)
          end

          sig do
            override.returns(
              {
                _cache:
                  Onlyfans::Models::Users::SubscribeDeleteResponse::Meta::Cache,
                _credits:
                  Onlyfans::Models::Users::SubscribeDeleteResponse::Meta::Credits
              }
            )
          end
          def to_hash
          end

          class Cache < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::Users::SubscribeDeleteResponse::Meta::Cache,
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
                  Onlyfans::Models::Users::SubscribeDeleteResponse::Meta::Credits,
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
              override.returns(
                { balance: Integer, note: String, used: Integer }
              )
            end
            def to_hash
            end
          end
        end

        class Data < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::Users::SubscribeDeleteResponse::Data,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :message

          sig { params(message: String).void }
          attr_writer :message

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :success

          sig { params(success: T::Boolean).void }
          attr_writer :success

          sig do
            params(message: String, success: T::Boolean).returns(
              T.attached_class
            )
          end
          def self.new(message: nil, success: nil)
          end

          sig { override.returns({ message: String, success: T::Boolean }) }
          def to_hash
          end
        end
      end
    end
  end
end
