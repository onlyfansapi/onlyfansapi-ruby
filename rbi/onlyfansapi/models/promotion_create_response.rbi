# typed: strong

module Onlyfansapi
  module Models
    class PromotionCreateResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::PromotionCreateResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Onlyfansapi::Models::PromotionCreateResponse::Meta))
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfansapi::Models::PromotionCreateResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(
            T::Array[Onlyfansapi::Models::PromotionCreateResponse::Data]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[Onlyfansapi::Models::PromotionCreateResponse::Data::OrHash]
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfansapi::Models::PromotionCreateResponse::Meta::OrHash,
          data:
            T::Array[Onlyfansapi::Models::PromotionCreateResponse::Data::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::PromotionCreateResponse::Meta,
            data: T::Array[Onlyfansapi::Models::PromotionCreateResponse::Data]
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::PromotionCreateResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfansapi::Models::PromotionCreateResponse::Meta::Cache)
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfansapi::Models::PromotionCreateResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::PromotionCreateResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::PromotionCreateResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::PromotionCreateResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::PromotionCreateResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::PromotionCreateResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::PromotionCreateResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::PromotionCreateResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfansapi::Models::PromotionCreateResponse::Meta::Cache,
              _credits:
                Onlyfansapi::Models::PromotionCreateResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::PromotionCreateResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::PromotionCreateResponse::Meta::Cache,
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
                Onlyfansapi::Models::PromotionCreateResponse::Meta::Credits,
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
                Onlyfansapi::Models::PromotionCreateResponse::Meta::RateLimits,
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
              Onlyfansapi::Models::PromotionCreateResponse::Data,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :id

        sig { params(id: Integer).void }
        attr_writer :id

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :can_claim

        sig { params(can_claim: T::Boolean).void }
        attr_writer :can_claim

        sig { returns(T.nilable(Integer)) }
        attr_reader :claims_count

        sig { params(claims_count: Integer).void }
        attr_writer :claims_count

        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :finished_at

        sig { params(finished_at: String).void }
        attr_writer :finished_at

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_related_promo

        sig { params(has_related_promo: T::Boolean).void }
        attr_writer :has_related_promo

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_finished

        sig { params(is_finished: T::Boolean).void }
        attr_writer :is_finished

        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        sig { returns(T.nilable(Integer)) }
        attr_reader :price

        sig { params(price: Integer).void }
        attr_writer :price

        sig { returns(T.nilable(String)) }
        attr_reader :raw_message

        sig { params(raw_message: String).void }
        attr_writer :raw_message

        sig { returns(T.nilable(Integer)) }
        attr_reader :subscribe_counts

        sig { params(subscribe_counts: Integer).void }
        attr_writer :subscribe_counts

        sig { returns(T.nilable(Integer)) }
        attr_reader :subscribe_days

        sig { params(subscribe_days: Integer).void }
        attr_writer :subscribe_days

        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        sig do
          params(
            id: Integer,
            can_claim: T::Boolean,
            claims_count: Integer,
            created_at: String,
            finished_at: String,
            has_related_promo: T::Boolean,
            is_finished: T::Boolean,
            message: String,
            price: Integer,
            raw_message: String,
            subscribe_counts: Integer,
            subscribe_days: Integer,
            type: String
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          can_claim: nil,
          claims_count: nil,
          created_at: nil,
          finished_at: nil,
          has_related_promo: nil,
          is_finished: nil,
          message: nil,
          price: nil,
          raw_message: nil,
          subscribe_counts: nil,
          subscribe_days: nil,
          type: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              can_claim: T::Boolean,
              claims_count: Integer,
              created_at: String,
              finished_at: String,
              has_related_promo: T::Boolean,
              is_finished: T::Boolean,
              message: String,
              price: Integer,
              raw_message: String,
              subscribe_counts: Integer,
              subscribe_days: Integer,
              type: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
