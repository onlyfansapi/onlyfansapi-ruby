# typed: strong

module Onlyfansapi
  module Models
    module SavedForLater
      module Posts
        class SettingRetrieveResponse < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta
              )
            )
          end
          attr_reader :_meta

          sig do
            params(
              _meta:
                Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::OrHash
            ).void
          end
          attr_writer :_meta

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Data
              )
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              _meta:
                Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::OrHash,
              data:
                Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(_meta: nil, data: nil)
          end

          sig do
            override.returns(
              {
                _meta:
                  Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta,
                data:
                  Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Data
              }
            )
          end
          def to_hash
          end

          class Meta < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::Cache
                )
              )
            end
            attr_reader :_cache

            sig do
              params(
                _cache:
                  Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::Cache::OrHash
              ).void
            end
            attr_writer :_cache

            sig do
              returns(
                T.nilable(
                  Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::Credits
                )
              )
            end
            attr_reader :_credits

            sig do
              params(
                _credits:
                  Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::Credits::OrHash
              ).void
            end
            attr_writer :_credits

            sig do
              returns(
                T.nilable(
                  Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::RateLimits
                )
              )
            end
            attr_reader :_rate_limits

            sig do
              params(
                _rate_limits:
                  Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::RateLimits::OrHash
              ).void
            end
            attr_writer :_rate_limits

            sig do
              params(
                _cache:
                  Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::Cache::OrHash,
                _credits:
                  Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::Credits::OrHash,
                _rate_limits:
                  Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::RateLimits::OrHash
              ).returns(T.attached_class)
            end
            def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
            end

            sig do
              override.returns(
                {
                  _cache:
                    Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::Cache,
                  _credits:
                    Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::Credits,
                  _rate_limits:
                    Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::RateLimits
                }
              )
            end
            def to_hash
            end

            class Cache < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::Cache,
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
                    Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::Credits,
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
                override.returns(
                  { balance: Integer, note: String, used: Integer }
                )
              end
              def to_hash
              end
            end

            class RateLimits < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Meta::RateLimits,
                    Onlyfansapi::Internal::AnyHash
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

          class Data < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::SavedForLater::Posts::SettingRetrieveResponse::Data,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :current_code

            sig { params(current_code: Integer).void }
            attr_writer :current_code

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_enabled

            sig { params(is_enabled: T::Boolean).void }
            attr_writer :is_enabled

            sig { returns(T.nilable(T::Array[Integer])) }
            attr_reader :options

            sig { params(options: T::Array[Integer]).void }
            attr_writer :options

            sig do
              params(
                current_code: Integer,
                is_enabled: T::Boolean,
                options: T::Array[Integer]
              ).returns(T.attached_class)
            end
            def self.new(current_code: nil, is_enabled: nil, options: nil)
            end

            sig do
              override.returns(
                {
                  current_code: Integer,
                  is_enabled: T::Boolean,
                  options: T::Array[Integer]
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
end
