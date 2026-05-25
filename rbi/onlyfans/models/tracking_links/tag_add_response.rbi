# typed: strong

module Onlyfans
  module Models
    module TrackingLinks
      class TagAddResponse < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::TrackingLinks::TagAddResponse,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfans::Models::TrackingLinks::TagAddResponse::Meta)
          )
        end
        attr_reader :_meta

        sig do
          params(
            _meta: Onlyfans::Models::TrackingLinks::TagAddResponse::Meta::OrHash
          ).void
        end
        attr_writer :_meta

        sig do
          returns(
            T.nilable(Onlyfans::Models::TrackingLinks::TagAddResponse::Data)
          )
        end
        attr_reader :data

        sig do
          params(
            data: Onlyfans::Models::TrackingLinks::TagAddResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            _meta:
              Onlyfans::Models::TrackingLinks::TagAddResponse::Meta::OrHash,
            data: Onlyfans::Models::TrackingLinks::TagAddResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_meta: nil, data: nil)
        end

        sig do
          override.returns(
            {
              _meta: Onlyfans::Models::TrackingLinks::TagAddResponse::Meta,
              data: Onlyfans::Models::TrackingLinks::TagAddResponse::Data
            }
          )
        end
        def to_hash
        end

        class Meta < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::TrackingLinks::TagAddResponse::Meta,
                Onlyfans::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::TrackingLinks::TagAddResponse::Meta::Cache
              )
            )
          end
          attr_reader :_cache

          sig do
            params(
              _cache:
                Onlyfans::Models::TrackingLinks::TagAddResponse::Meta::Cache::OrHash
            ).void
          end
          attr_writer :_cache

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::TrackingLinks::TagAddResponse::Meta::Credits
              )
            )
          end
          attr_reader :_credits

          sig do
            params(
              _credits:
                Onlyfans::Models::TrackingLinks::TagAddResponse::Meta::Credits::OrHash
            ).void
          end
          attr_writer :_credits

          sig do
            returns(
              T.nilable(
                Onlyfans::Models::TrackingLinks::TagAddResponse::Meta::RateLimits
              )
            )
          end
          attr_reader :_rate_limits

          sig do
            params(
              _rate_limits:
                Onlyfans::Models::TrackingLinks::TagAddResponse::Meta::RateLimits::OrHash
            ).void
          end
          attr_writer :_rate_limits

          sig do
            params(
              _cache:
                Onlyfans::Models::TrackingLinks::TagAddResponse::Meta::Cache::OrHash,
              _credits:
                Onlyfans::Models::TrackingLinks::TagAddResponse::Meta::Credits::OrHash,
              _rate_limits:
                Onlyfans::Models::TrackingLinks::TagAddResponse::Meta::RateLimits::OrHash
            ).returns(T.attached_class)
          end
          def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
          end

          sig do
            override.returns(
              {
                _cache:
                  Onlyfans::Models::TrackingLinks::TagAddResponse::Meta::Cache,
                _credits:
                  Onlyfans::Models::TrackingLinks::TagAddResponse::Meta::Credits,
                _rate_limits:
                  Onlyfans::Models::TrackingLinks::TagAddResponse::Meta::RateLimits
              }
            )
          end
          def to_hash
          end

          class Cache < Onlyfans::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfans::Models::TrackingLinks::TagAddResponse::Meta::Cache,
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
                  Onlyfans::Models::TrackingLinks::TagAddResponse::Meta::Credits,
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
                  Onlyfans::Models::TrackingLinks::TagAddResponse::Meta::RateLimits,
                  Onlyfans::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_accessor :limit_day

            sig { returns(T.nilable(Integer)) }
            attr_reader :limit_minute

            sig { params(limit_minute: Integer).void }
            attr_writer :limit_minute

            sig { returns(T.nilable(String)) }
            attr_accessor :remaining_day

            sig { returns(T.nilable(Integer)) }
            attr_reader :remaining_minute

            sig { params(remaining_minute: Integer).void }
            attr_writer :remaining_minute

            sig do
              params(
                limit_day: T.nilable(String),
                limit_minute: Integer,
                remaining_day: T.nilable(String),
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
                  limit_day: T.nilable(String),
                  limit_minute: Integer,
                  remaining_day: T.nilable(String),
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
                Onlyfans::Models::TrackingLinks::TagAddResponse::Data,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :tags

          sig { params(tags: T::Array[String]).void }
          attr_writer :tags

          sig { params(tags: T::Array[String]).returns(T.attached_class) }
          def self.new(tags: nil)
          end

          sig { override.returns({ tags: T::Array[String] }) }
          def to_hash
          end
        end
      end
    end
  end
end
