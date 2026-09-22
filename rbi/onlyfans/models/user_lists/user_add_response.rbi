# typed: strong

module Onlyfans
  module Models
    module UserLists
      # Default: OnlyFans accepted every User ID
      module UserAddResponse
        extend Onlyfans::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Onlyfans::Models::UserLists::UserAddResponse::UnionMember0,
              Onlyfans::Models::UserLists::UserAddResponse::UnionMember1
            )
          end

        class UnionMember0 < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::UserLists::UserAddResponse::UnionMember0,
                Onlyfans::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta
              )
            )
          end
          attr_reader :_meta

          sig do
            params(
              _meta:
                Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::OrHash
            ).void
          end
          attr_writer :_meta

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Data
              )
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Data::OrHash
            ).void
          end
          attr_writer :data

          # Default: OnlyFans accepted every User ID
          sig do
            params(
              _meta:
                Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::OrHash,
              data:
                Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(_meta: nil, data: nil)
          end

          sig do
            override.returns(
              {
                _meta:
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta,
                data:
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Data
              }
            )
          end
          def to_hash
          end

          class Meta < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::Cache
                )
              )
            end
            attr_reader :_cache

            sig do
              params(
                _cache:
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::Cache::OrHash
              ).void
            end
            attr_writer :_cache

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::Credits
                )
              )
            end
            attr_reader :_credits

            sig do
              params(
                _credits:
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::Credits::OrHash
              ).void
            end
            attr_writer :_credits

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::RateLimits
                )
              )
            end
            attr_reader :_rate_limits

            sig do
              params(
                _rate_limits:
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::RateLimits::OrHash
              ).void
            end
            attr_writer :_rate_limits

            sig do
              params(
                _cache:
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::Cache::OrHash,
                _credits:
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::Credits::OrHash,
                _rate_limits:
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::RateLimits::OrHash
              ).returns(T.attached_class)
            end
            def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
            end

            sig do
              override.returns(
                {
                  _cache:
                    Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::Cache,
                  _credits:
                    Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::Credits,
                  _rate_limits:
                    Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::RateLimits
                }
              )
            end
            def to_hash
            end

            class Cache < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::Cache,
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
                    Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::Credits,
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

            class RateLimits < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Meta::RateLimits,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Integer)) }
              attr_reader :limit_day

              sig { params(limit_day: Integer).void }
              attr_writer :limit_day

              sig { returns(T.nilable(Integer)) }
              attr_reader :limit_minute

              sig { params(limit_minute: Integer).void }
              attr_writer :limit_minute

              sig { returns(T.nilable(Integer)) }
              attr_reader :remaining_day

              sig { params(remaining_day: Integer).void }
              attr_writer :remaining_day

              sig { returns(T.nilable(Integer)) }
              attr_reader :remaining_minute

              sig { params(remaining_minute: Integer).void }
              attr_writer :remaining_minute

              sig do
                params(
                  limit_day: Integer,
                  limit_minute: Integer,
                  remaining_day: Integer,
                  remaining_minute: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                limit_day: nil,
                limit_minute: nil,
                remaining_day: nil,
                remaining_minute: nil
              )
              end

              sig do
                override.returns(
                  {
                    limit_day: Integer,
                    limit_minute: Integer,
                    remaining_day: Integer,
                    remaining_minute: Integer
                  }
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
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember0::Data,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(T::Array[Integer])) }
            attr_reader :number_1224114714

            sig { params(number_1224114714: T::Array[Integer]).void }
            attr_writer :number_1224114714

            sig do
              params(number_1224114714: T::Array[Integer]).returns(
                T.attached_class
              )
            end
            def self.new(number_1224114714: nil)
            end

            sig { override.returns({ number_1224114714: T::Array[Integer] }) }
            def to_hash
            end
          end
        end

        class UnionMember1 < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::UserLists::UserAddResponse::UnionMember1,
                Onlyfans::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta
              )
            )
          end
          attr_reader :_meta

          sig do
            params(
              _meta:
                Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::OrHash
            ).void
          end
          attr_writer :_meta

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Data
              )
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Data::OrHash
            ).void
          end
          attr_writer :data

          # With `skip_invalid=true`: the rejected User IDs are reported instead of failing
          # the batch
          sig do
            params(
              _meta:
                Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::OrHash,
              data:
                Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(_meta: nil, data: nil)
          end

          sig do
            override.returns(
              {
                _meta:
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta,
                data:
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Data
              }
            )
          end
          def to_hash
          end

          class Meta < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::Cache
                )
              )
            end
            attr_reader :_cache

            sig do
              params(
                _cache:
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::Cache::OrHash
              ).void
            end
            attr_writer :_cache

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::Credits
                )
              )
            end
            attr_reader :_credits

            sig do
              params(
                _credits:
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::Credits::OrHash
              ).void
            end
            attr_writer :_credits

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::RateLimits
                )
              )
            end
            attr_reader :_rate_limits

            sig do
              params(
                _rate_limits:
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::RateLimits::OrHash
              ).void
            end
            attr_writer :_rate_limits

            sig do
              params(
                _cache:
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::Cache::OrHash,
                _credits:
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::Credits::OrHash,
                _rate_limits:
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::RateLimits::OrHash
              ).returns(T.attached_class)
            end
            def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
            end

            sig do
              override.returns(
                {
                  _cache:
                    Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::Cache,
                  _credits:
                    Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::Credits,
                  _rate_limits:
                    Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::RateLimits
                }
              )
            end
            def to_hash
            end

            class Cache < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::Cache,
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
                    Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::Credits,
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

            class RateLimits < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Meta::RateLimits,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Integer)) }
              attr_reader :limit_day

              sig { params(limit_day: Integer).void }
              attr_writer :limit_day

              sig { returns(T.nilable(Integer)) }
              attr_reader :limit_minute

              sig { params(limit_minute: Integer).void }
              attr_writer :limit_minute

              sig { returns(T.nilable(Integer)) }
              attr_reader :remaining_day

              sig { params(remaining_day: Integer).void }
              attr_writer :remaining_day

              sig { returns(T.nilable(Integer)) }
              attr_reader :remaining_minute

              sig { params(remaining_minute: Integer).void }
              attr_writer :remaining_minute

              sig do
                params(
                  limit_day: Integer,
                  limit_minute: Integer,
                  remaining_day: Integer,
                  remaining_minute: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                limit_day: nil,
                limit_minute: nil,
                remaining_day: nil,
                remaining_minute: nil
              )
              end

              sig do
                override.returns(
                  {
                    limit_day: Integer,
                    limit_minute: Integer,
                    remaining_day: Integer,
                    remaining_minute: Integer
                  }
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
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Data,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(T::Array[Integer])) }
            attr_reader :added

            sig { params(added: T::Array[Integer]).void }
            attr_writer :added

            sig do
              returns(
                T.nilable(
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Data::Failed
                )
              )
            end
            attr_reader :failed

            sig do
              params(
                failed:
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Data::Failed::OrHash
              ).void
            end
            attr_writer :failed

            sig do
              params(
                added: T::Array[Integer],
                failed:
                  Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Data::Failed::OrHash
              ).returns(T.attached_class)
            end
            def self.new(added: nil, failed: nil)
            end

            sig do
              override.returns(
                {
                  added: T::Array[Integer],
                  failed:
                    Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Data::Failed
                }
              )
            end
            def to_hash
            end

            class Failed < Onlyfans::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfans::Models::UserLists::UserAddResponse::UnionMember1::Data::Failed,
                    Onlyfans::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :number_123456

              sig { params(number_123456: String).void }
              attr_writer :number_123456

              sig { params(number_123456: String).returns(T.attached_class) }
              def self.new(number_123456: nil)
              end

              sig { override.returns({ number_123456: String }) }
              def to_hash
              end
            end
          end
        end

        sig do
          override.returns(
            T::Array[Onlyfans::Models::UserLists::UserAddResponse::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
