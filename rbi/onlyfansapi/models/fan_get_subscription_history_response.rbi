# typed: strong

module Onlyfansapi
  module Models
    class FanGetSubscriptionHistoryResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::FanGetSubscriptionHistoryResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Meta
          )
        )
      end
      attr_reader :_meta

      sig do
        params(
          _meta:
            Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(
            Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Data
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta:
            Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Meta::OrHash,
          data:
            Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Meta,
            data: Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Meta::Cache,
              _credits:
                Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Meta::Cache,
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
                Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Meta::Credits,
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

        class RateLimits < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Meta::RateLimits,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_accessor :limit_day

          sig { returns(T.nilable(Integer)) }
          attr_reader :limit_minute

          sig { params(limit_minute: Integer).void }
          attr_writer :limit_minute

          sig { returns(T.nilable(String)) }
          attr_reader :notice

          sig { params(notice: String).void }
          attr_writer :notice

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
              notice: String,
              remaining_day: T.nilable(String),
              remaining_minute: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            limit_day: nil,
            limit_minute: nil,
            notice: nil,
            remaining_day: nil,
            remaining_minute: nil
          )
          end

          sig do
            override.returns(
              {
                limit_day: T.nilable(String),
                limit_minute: Integer,
                notice: String,
                remaining_day: T.nilable(String),
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
              Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Data,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_more

        sig { params(has_more: T::Boolean).void }
        attr_writer :has_more

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Data::List
              ]
            )
          )
        end
        attr_reader :list

        sig do
          params(
            list:
              T::Array[
                Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Data::List::OrHash
              ]
          ).void
        end
        attr_writer :list

        sig do
          params(
            has_more: T::Boolean,
            list:
              T::Array[
                Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Data::List::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(has_more: nil, list: nil)
        end

        sig do
          override.returns(
            {
              has_more: T::Boolean,
              list:
                T::Array[
                  Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Data::List
                ]
            }
          )
        end
        def to_hash
        end

        class List < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::FanGetSubscriptionHistoryResponse::Data::List,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :expire_date

          sig { params(expire_date: String).void }
          attr_writer :expire_date

          sig { returns(T.nilable(Float)) }
          attr_reader :price

          sig { params(price: Float).void }
          attr_writer :price

          sig { returns(T.nilable(String)) }
          attr_reader :subscribe_date

          sig { params(subscribe_date: String).void }
          attr_writer :subscribe_date

          sig do
            params(
              expire_date: String,
              price: Float,
              subscribe_date: String
            ).returns(T.attached_class)
          end
          def self.new(expire_date: nil, price: nil, subscribe_date: nil)
          end

          sig do
            override.returns(
              { expire_date: String, price: Float, subscribe_date: String }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
