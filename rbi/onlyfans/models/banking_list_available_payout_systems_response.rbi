# typed: strong

module Onlyfans
  module Models
    class BankingListAvailablePayoutSystemsResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::BankingListAvailablePayoutSystemsResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta
          )
        )
      end
      attr_reader :_meta

      sig do
        params(
          _meta:
            Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(
            Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Data
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta:
            Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::OrHash,
          data:
            Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta:
              Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta,
            data:
              Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::Cache,
              _credits:
                Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::Credits,
              _rate_limits:
                Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::Cache,
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
                Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::Credits,
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
                Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Meta::RateLimits,
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
              Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Data,
              Onlyfans::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :payout_code

        sig { params(payout_code: String).void }
        attr_writer :payout_code

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Data::Payout
              ]
            )
          )
        end
        attr_reader :payouts

        sig do
          params(
            payouts:
              T::Array[
                Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Data::Payout::OrHash
              ]
          ).void
        end
        attr_writer :payouts

        sig do
          params(
            payout_code: String,
            payouts:
              T::Array[
                Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Data::Payout::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(payout_code: nil, payouts: nil)
        end

        sig do
          override.returns(
            {
              payout_code: String,
              payouts:
                T::Array[
                  Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Data::Payout
                ]
            }
          )
        end
        def to_hash
        end

        class Payout < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::BankingListAvailablePayoutSystemsResponse::Data::Payout,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :code

          sig { params(code: String).void }
          attr_writer :code

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :fields

          sig { params(fields: T::Hash[Symbol, T.anything]).void }
          attr_writer :fields

          sig { returns(T.nilable(T::Array[T.anything])) }
          attr_reader :fields_order

          sig { params(fields_order: T::Array[T.anything]).void }
          attr_writer :fields_order

          sig { returns(T.nilable(Integer)) }
          attr_reader :min_payout_summ

          sig { params(min_payout_summ: Integer).void }
          attr_writer :min_payout_summ

          sig { returns(T.nilable(String)) }
          attr_reader :payout_time

          sig { params(payout_time: String).void }
          attr_writer :payout_time

          sig { returns(T.nilable(String)) }
          attr_reader :subtitle

          sig { params(subtitle: String).void }
          attr_writer :subtitle

          sig { returns(T.nilable(String)) }
          attr_reader :title

          sig { params(title: String).void }
          attr_writer :title

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :ui_mapping

          sig { params(ui_mapping: T::Hash[Symbol, T.anything]).void }
          attr_writer :ui_mapping

          sig do
            params(
              code: String,
              description: String,
              fields: T::Hash[Symbol, T.anything],
              fields_order: T::Array[T.anything],
              min_payout_summ: Integer,
              payout_time: String,
              subtitle: String,
              title: String,
              ui_mapping: T::Hash[Symbol, T.anything]
            ).returns(T.attached_class)
          end
          def self.new(
            code: nil,
            description: nil,
            fields: nil,
            fields_order: nil,
            min_payout_summ: nil,
            payout_time: nil,
            subtitle: nil,
            title: nil,
            ui_mapping: nil
          )
          end

          sig do
            override.returns(
              {
                code: String,
                description: String,
                fields: T::Hash[Symbol, T.anything],
                fields_order: T::Array[T.anything],
                min_payout_summ: Integer,
                payout_time: String,
                subtitle: String,
                title: String,
                ui_mapping: T::Hash[Symbol, T.anything]
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
