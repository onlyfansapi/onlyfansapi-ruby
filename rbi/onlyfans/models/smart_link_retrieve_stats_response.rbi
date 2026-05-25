# typed: strong

module Onlyfans
  module Models
    class SmartLinkRetrieveStatsResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::SmartLinkRetrieveStatsResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta)
        )
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta::OrHash,
          data: Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta,
            data: Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          params(
            _cache:
              Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta::Credits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta::Cache,
              _credits:
                Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta::Credits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta::Cache,
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
                Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta::Credits,
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
      end

      class Data < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::DailyMetric
              ]
            )
          )
        end
        attr_reader :daily_metrics

        sig do
          params(
            daily_metrics:
              T::Array[
                Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::DailyMetric::OrHash
              ]
          ).void
        end
        attr_writer :daily_metrics

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::MonthlyMetric
              ]
            )
          )
        end
        attr_reader :monthly_metrics

        sig do
          params(
            monthly_metrics:
              T::Array[
                Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::MonthlyMetric::OrHash
              ]
          ).void
        end
        attr_writer :monthly_metrics

        sig do
          returns(
            T.nilable(
              Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::Summary
            )
          )
        end
        attr_reader :summary

        sig do
          params(
            summary:
              Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::Summary::OrHash
          ).void
        end
        attr_writer :summary

        sig do
          params(
            daily_metrics:
              T::Array[
                Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::DailyMetric::OrHash
              ],
            monthly_metrics:
              T::Array[
                Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::MonthlyMetric::OrHash
              ],
            summary:
              Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::Summary::OrHash
          ).returns(T.attached_class)
        end
        def self.new(daily_metrics: nil, monthly_metrics: nil, summary: nil)
        end

        sig do
          override.returns(
            {
              daily_metrics:
                T::Array[
                  Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::DailyMetric
                ],
              monthly_metrics:
                T::Array[
                  Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::MonthlyMetric
                ],
              summary:
                Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::Summary
            }
          )
        end
        def to_hash
        end

        class DailyMetric < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::DailyMetric,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :clicks

          sig { params(clicks: Integer).void }
          attr_writer :clicks

          sig { returns(T.nilable(Integer)) }
          attr_reader :revenue

          sig { params(revenue: Integer).void }
          attr_writer :revenue

          sig { returns(T.nilable(Integer)) }
          attr_reader :spenders

          sig { params(spenders: Integer).void }
          attr_writer :spenders

          sig { returns(T.nilable(Integer)) }
          attr_reader :subs

          sig { params(subs: Integer).void }
          attr_writer :subs

          sig { returns(T.nilable(String)) }
          attr_reader :timestamp

          sig { params(timestamp: String).void }
          attr_writer :timestamp

          sig do
            params(
              clicks: Integer,
              revenue: Integer,
              spenders: Integer,
              subs: Integer,
              timestamp: String
            ).returns(T.attached_class)
          end
          def self.new(
            clicks: nil,
            revenue: nil,
            spenders: nil,
            subs: nil,
            timestamp: nil
          )
          end

          sig do
            override.returns(
              {
                clicks: Integer,
                revenue: Integer,
                spenders: Integer,
                subs: Integer,
                timestamp: String
              }
            )
          end
          def to_hash
          end
        end

        class MonthlyMetric < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::MonthlyMetric,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :clicks

          sig { params(clicks: Integer).void }
          attr_writer :clicks

          sig { returns(T.nilable(Integer)) }
          attr_reader :revenue

          sig { params(revenue: Integer).void }
          attr_writer :revenue

          sig { returns(T.nilable(Integer)) }
          attr_reader :spenders

          sig { params(spenders: Integer).void }
          attr_writer :spenders

          sig { returns(T.nilable(Integer)) }
          attr_reader :subs

          sig { params(subs: Integer).void }
          attr_writer :subs

          sig { returns(T.nilable(String)) }
          attr_reader :timestamp

          sig { params(timestamp: String).void }
          attr_writer :timestamp

          sig do
            params(
              clicks: Integer,
              revenue: Integer,
              spenders: Integer,
              subs: Integer,
              timestamp: String
            ).returns(T.attached_class)
          end
          def self.new(
            clicks: nil,
            revenue: nil,
            spenders: nil,
            subs: nil,
            timestamp: nil
          )
          end

          sig do
            override.returns(
              {
                clicks: Integer,
                revenue: Integer,
                spenders: Integer,
                subs: Integer,
                timestamp: String
              }
            )
          end
          def to_hash
          end
        end

        class Summary < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::Summary,
                Onlyfans::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :clicks_total

          sig { params(clicks_total: Integer).void }
          attr_writer :clicks_total

          sig { returns(T.nilable(Integer)) }
          attr_reader :revenue_total

          sig { params(revenue_total: Integer).void }
          attr_writer :revenue_total

          sig { returns(T.nilable(Integer)) }
          attr_reader :spenders_total

          sig { params(spenders_total: Integer).void }
          attr_writer :spenders_total

          sig { returns(T.nilable(Integer)) }
          attr_reader :subs_total

          sig { params(subs_total: Integer).void }
          attr_writer :subs_total

          sig do
            params(
              clicks_total: Integer,
              revenue_total: Integer,
              spenders_total: Integer,
              subs_total: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            clicks_total: nil,
            revenue_total: nil,
            spenders_total: nil,
            subs_total: nil
          )
          end

          sig do
            override.returns(
              {
                clicks_total: Integer,
                revenue_total: Integer,
                spenders_total: Integer,
                subs_total: Integer
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
