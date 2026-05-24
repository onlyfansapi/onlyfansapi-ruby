# typed: strong

module Onlyfansapi
  module Models
    class PayoutRetrieveBalancesResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::PayoutRetrieveBalancesResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Meta)
        )
      end
      attr_reader :_meta

      sig do
        params(
          _meta:
            Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta:
            Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Meta::OrHash,
          data:
            Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Meta,
            data: Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Meta::Cache,
              _credits:
                Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Meta::Cache,
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
                Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Meta::Credits,
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
                Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Meta::RateLimits,
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
              Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Data,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :currency

        sig { params(currency: String).void }
        attr_writer :currency

        sig { returns(T.nilable(Integer)) }
        attr_reader :manual_payout_pending_days

        sig { params(manual_payout_pending_days: Integer).void }
        attr_writer :manual_payout_pending_days

        sig { returns(T.nilable(Float)) }
        attr_reader :max_payout_summ

        sig { params(max_payout_summ: Float).void }
        attr_writer :max_payout_summ

        sig { returns(T.nilable(Integer)) }
        attr_reader :min_payout_summ

        sig { params(min_payout_summ: Integer).void }
        attr_writer :min_payout_summ

        sig { returns(T.nilable(Float)) }
        attr_reader :payout_available

        sig { params(payout_available: Float).void }
        attr_writer :payout_available

        sig { returns(T.nilable(Float)) }
        attr_reader :payout_pending

        sig { params(payout_pending: Float).void }
        attr_writer :payout_pending

        sig { returns(T.nilable(String)) }
        attr_reader :withdrawal_period

        sig { params(withdrawal_period: String).void }
        attr_writer :withdrawal_period

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Data::WithdrawalPeriodOption
              ]
            )
          )
        end
        attr_reader :withdrawal_period_options

        sig do
          params(
            withdrawal_period_options:
              T::Array[
                Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Data::WithdrawalPeriodOption::OrHash
              ]
          ).void
        end
        attr_writer :withdrawal_period_options

        sig do
          params(
            currency: String,
            manual_payout_pending_days: Integer,
            max_payout_summ: Float,
            min_payout_summ: Integer,
            payout_available: Float,
            payout_pending: Float,
            withdrawal_period: String,
            withdrawal_period_options:
              T::Array[
                Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Data::WithdrawalPeriodOption::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          currency: nil,
          manual_payout_pending_days: nil,
          max_payout_summ: nil,
          min_payout_summ: nil,
          payout_available: nil,
          payout_pending: nil,
          withdrawal_period: nil,
          withdrawal_period_options: nil
        )
        end

        sig do
          override.returns(
            {
              currency: String,
              manual_payout_pending_days: Integer,
              max_payout_summ: Float,
              min_payout_summ: Integer,
              payout_available: Float,
              payout_pending: Float,
              withdrawal_period: String,
              withdrawal_period_options:
                T::Array[
                  Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Data::WithdrawalPeriodOption
                ]
            }
          )
        end
        def to_hash
        end

        class WithdrawalPeriodOption < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::PayoutRetrieveBalancesResponse::Data::WithdrawalPeriodOption,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :code

          sig { params(code: String).void }
          attr_writer :code

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { params(code: String, name: String).returns(T.attached_class) }
          def self.new(code: nil, name: nil)
          end

          sig { override.returns({ code: String, name: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
