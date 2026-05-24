# typed: strong

module Onlyfansapi
  module Models
    class ChargebackListStatisticsResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::ChargebackListStatisticsResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Onlyfansapi::Models::ChargebackListStatisticsResponse::Meta)
        )
      end
      attr_reader :_meta

      sig do
        params(
          _meta:
            Onlyfansapi::Models::ChargebackListStatisticsResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(Onlyfansapi::Models::ChargebackListStatisticsResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Onlyfansapi::Models::ChargebackListStatisticsResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta:
            Onlyfansapi::Models::ChargebackListStatisticsResponse::Meta::OrHash,
          data:
            Onlyfansapi::Models::ChargebackListStatisticsResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::ChargebackListStatisticsResponse::Meta,
            data: Onlyfansapi::Models::ChargebackListStatisticsResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::ChargebackListStatisticsResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::ChargebackListStatisticsResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfansapi::Models::ChargebackListStatisticsResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::ChargebackListStatisticsResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::ChargebackListStatisticsResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::ChargebackListStatisticsResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::ChargebackListStatisticsResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::ChargebackListStatisticsResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::ChargebackListStatisticsResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::ChargebackListStatisticsResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfansapi::Models::ChargebackListStatisticsResponse::Meta::Cache,
              _credits:
                Onlyfansapi::Models::ChargebackListStatisticsResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::ChargebackListStatisticsResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::ChargebackListStatisticsResponse::Meta::Cache,
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
                Onlyfansapi::Models::ChargebackListStatisticsResponse::Meta::Credits,
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
                Onlyfansapi::Models::ChargebackListStatisticsResponse::Meta::RateLimits,
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
              Onlyfansapi::Models::ChargebackListStatisticsResponse::Data,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfansapi::Models::ChargebackListStatisticsResponse::Data::ChartAmount
              ]
            )
          )
        end
        attr_reader :chart_amount

        sig do
          params(
            chart_amount:
              T::Array[
                Onlyfansapi::Models::ChargebackListStatisticsResponse::Data::ChartAmount::OrHash
              ]
          ).void
        end
        attr_writer :chart_amount

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfansapi::Models::ChargebackListStatisticsResponse::Data::ChartCount
              ]
            )
          )
        end
        attr_reader :chart_count

        sig do
          params(
            chart_count:
              T::Array[
                Onlyfansapi::Models::ChargebackListStatisticsResponse::Data::ChartCount::OrHash
              ]
          ).void
        end
        attr_writer :chart_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :delta

        sig { params(delta: Integer).void }
        attr_writer :delta

        sig { returns(T.nilable(Float)) }
        attr_reader :total

        sig { params(total: Float).void }
        attr_writer :total

        sig do
          params(
            chart_amount:
              T::Array[
                Onlyfansapi::Models::ChargebackListStatisticsResponse::Data::ChartAmount::OrHash
              ],
            chart_count:
              T::Array[
                Onlyfansapi::Models::ChargebackListStatisticsResponse::Data::ChartCount::OrHash
              ],
            delta: Integer,
            total: Float
          ).returns(T.attached_class)
        end
        def self.new(
          chart_amount: nil,
          chart_count: nil,
          delta: nil,
          total: nil
        )
        end

        sig do
          override.returns(
            {
              chart_amount:
                T::Array[
                  Onlyfansapi::Models::ChargebackListStatisticsResponse::Data::ChartAmount
                ],
              chart_count:
                T::Array[
                  Onlyfansapi::Models::ChargebackListStatisticsResponse::Data::ChartCount
                ],
              delta: Integer,
              total: Float
            }
          )
        end
        def to_hash
        end

        class ChartAmount < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::ChargebackListStatisticsResponse::Data::ChartAmount,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Float)) }
          attr_reader :count

          sig { params(count: Float).void }
          attr_writer :count

          sig { returns(T.nilable(String)) }
          attr_reader :date

          sig { params(date: String).void }
          attr_writer :date

          sig { params(count: Float, date: String).returns(T.attached_class) }
          def self.new(count: nil, date: nil)
          end

          sig { override.returns({ count: Float, date: String }) }
          def to_hash
          end
        end

        class ChartCount < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::ChargebackListStatisticsResponse::Data::ChartCount,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :count

          sig { params(count: Integer).void }
          attr_writer :count

          sig { returns(T.nilable(String)) }
          attr_reader :date

          sig { params(date: String).void }
          attr_writer :date

          sig { params(count: Integer, date: String).returns(T.attached_class) }
          def self.new(count: nil, date: nil)
          end

          sig { override.returns({ count: Integer, date: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
