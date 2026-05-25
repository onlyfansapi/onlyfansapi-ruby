# typed: strong

module Onlyfans
  module Models
    class PromotionListResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::PromotionListResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Onlyfans::Models::PromotionListResponse::Meta)) }
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfans::Models::PromotionListResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig { returns(T.nilable(Onlyfans::Models::PromotionListResponse::Data)) }
      attr_reader :data

      sig do
        params(data: Onlyfans::Models::PromotionListResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfans::Models::PromotionListResponse::Meta::OrHash,
          data: Onlyfans::Models::PromotionListResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfans::Models::PromotionListResponse::Meta,
            data: Onlyfans::Models::PromotionListResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::PromotionListResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Onlyfans::Models::PromotionListResponse::Meta::Cache)
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache: Onlyfans::Models::PromotionListResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(Onlyfans::Models::PromotionListResponse::Meta::Credits)
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfans::Models::PromotionListResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(Onlyfans::Models::PromotionListResponse::Meta::RateLimits)
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfans::Models::PromotionListResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfans::Models::PromotionListResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::PromotionListResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfans::Models::PromotionListResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfans::Models::PromotionListResponse::Meta::Cache,
              _credits: Onlyfans::Models::PromotionListResponse::Meta::Credits,
              _rate_limits:
                Onlyfans::Models::PromotionListResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::PromotionListResponse::Meta::Cache,
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
                Onlyfans::Models::PromotionListResponse::Meta::Credits,
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

        class RateLimits < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::PromotionListResponse::Meta::RateLimits,
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

      class Data < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::PromotionListResponse::Data,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_more

        sig { params(has_more: T::Boolean).void }
        attr_writer :has_more

        sig do
          returns(
            T.nilable(
              T::Array[Onlyfans::Models::PromotionListResponse::Data::Item]
            )
          )
        end
        attr_reader :items

        sig do
          params(
            items:
              T::Array[
                Onlyfans::Models::PromotionListResponse::Data::Item::OrHash
              ]
          ).void
        end
        attr_writer :items

        sig do
          params(
            has_more: T::Boolean,
            items:
              T::Array[
                Onlyfans::Models::PromotionListResponse::Data::Item::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(has_more: nil, items: nil)
        end

        sig do
          override.returns(
            {
              has_more: T::Boolean,
              items:
                T::Array[Onlyfans::Models::PromotionListResponse::Data::Item]
            }
          )
        end
        def to_hash
        end

        class Item < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::PromotionListResponse::Data::Item,
                Onlyfans::Internal::AnyHash
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
end
