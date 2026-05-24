# typed: strong

module Onlyfansapi
  module Models
    class StatisticGetOverviewResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::StatisticGetOverviewResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Onlyfansapi::Models::StatisticGetOverviewResponse::Meta)
        )
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(Onlyfansapi::Models::StatisticGetOverviewResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Onlyfansapi::Models::StatisticGetOverviewResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta:
            Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::OrHash,
          data: Onlyfansapi::Models::StatisticGetOverviewResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::StatisticGetOverviewResponse::Meta,
            data: Onlyfansapi::Models::StatisticGetOverviewResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::StatisticGetOverviewResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::Cache,
              _credits:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::Cache,
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
                Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::Credits,
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
                Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::RateLimits,
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
              Onlyfansapi::Models::StatisticGetOverviewResponse::Data,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Earning
            )
          )
        end
        attr_reader :earning

        sig do
          params(
            earning:
              Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Earning::OrHash
          ).void
        end
        attr_writer :earning

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages
            )
          )
        end
        attr_reader :mass_messages

        sig do
          params(
            mass_messages:
              Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::OrHash
          ).void
        end
        attr_writer :mass_messages

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts
            )
          )
        end
        attr_reader :posts

        sig do
          params(
            posts:
              Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::OrHash
          ).void
        end
        attr_writer :posts

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams
            )
          )
        end
        attr_reader :streams

        sig do
          params(
            streams:
              Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::OrHash
          ).void
        end
        attr_writer :streams

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors
            )
          )
        end
        attr_reader :visitors

        sig do
          params(
            visitors:
              Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::OrHash
          ).void
        end
        attr_writer :visitors

        sig do
          params(
            earning:
              Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Earning::OrHash,
            mass_messages:
              Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::OrHash,
            posts:
              Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::OrHash,
            streams:
              Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::OrHash,
            visitors:
              Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          earning: nil,
          mass_messages: nil,
          posts: nil,
          streams: nil,
          visitors: nil
        )
        end

        sig do
          override.returns(
            {
              earning:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Earning,
              mass_messages:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages,
              posts:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts,
              streams:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams,
              visitors:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors
            }
          )
        end
        def to_hash
        end

        class Earning < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Earning,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Float)) }
          attr_reader :delta

          sig { params(delta: Float).void }
          attr_writer :delta

          sig { returns(T.nilable(Float)) }
          attr_reader :gross

          sig { params(gross: Float).void }
          attr_writer :gross

          sig { returns(T.nilable(Float)) }
          attr_reader :total

          sig { params(total: Float).void }
          attr_writer :total

          sig do
            params(delta: Float, gross: Float, total: Float).returns(
              T.attached_class
            )
          end
          def self.new(delta: nil, gross: nil, total: nil)
          end

          sig { override.returns({ delta: Float, gross: Float, total: Float }) }
          def to_hash
          end
        end

        class MassMessages < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::ChartData
                ]
              )
            )
          end
          attr_reader :chart_data

          sig do
            params(
              chart_data:
                T::Array[
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::ChartData::OrHash
                ]
            ).void
          end
          attr_writer :chart_data

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::Count
              )
            )
          end
          attr_reader :count

          sig do
            params(
              count:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::Count::OrHash
            ).void
          end
          attr_writer :count

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::Earnings
              )
            )
          end
          attr_reader :earnings

          sig do
            params(
              earnings:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::Earnings::OrHash
            ).void
          end
          attr_writer :earnings

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :has_statistic

          sig { params(has_statistic: T::Boolean).void }
          attr_writer :has_statistic

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::Views
              )
            )
          end
          attr_reader :views

          sig do
            params(
              views:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::Views::OrHash
            ).void
          end
          attr_writer :views

          sig do
            params(
              chart_data:
                T::Array[
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::ChartData::OrHash
                ],
              count:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::Count::OrHash,
              earnings:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::Earnings::OrHash,
              has_statistic: T::Boolean,
              views:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::Views::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            chart_data: nil,
            count: nil,
            earnings: nil,
            has_statistic: nil,
            views: nil
          )
          end

          sig do
            override.returns(
              {
                chart_data:
                  T::Array[
                    Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::ChartData
                  ],
                count:
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::Count,
                earnings:
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::Earnings,
                has_statistic: T::Boolean,
                views:
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::Views
              }
            )
          end
          def to_hash
          end

          class ChartData < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::ChartData,
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

            sig do
              params(count: Integer, date: String).returns(T.attached_class)
            end
            def self.new(count: nil, date: nil)
            end

            sig { override.returns({ count: Integer, date: String }) }
            def to_hash
            end
          end

          class Count < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::Count,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Float)) }
            attr_reader :delta

            sig { params(delta: Float).void }
            attr_writer :delta

            sig { returns(T.nilable(Integer)) }
            attr_reader :total

            sig { params(total: Integer).void }
            attr_writer :total

            sig do
              params(delta: Float, total: Integer).returns(T.attached_class)
            end
            def self.new(delta: nil, total: nil)
            end

            sig { override.returns({ delta: Float, total: Integer }) }
            def to_hash
            end
          end

          class Earnings < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::Earnings,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Float)) }
            attr_reader :delta

            sig { params(delta: Float).void }
            attr_writer :delta

            sig { returns(T.nilable(Float)) }
            attr_reader :gross

            sig { params(gross: Float).void }
            attr_writer :gross

            sig { returns(T.nilable(Float)) }
            attr_reader :total

            sig { params(total: Float).void }
            attr_writer :total

            sig do
              params(delta: Float, gross: Float, total: Float).returns(
                T.attached_class
              )
            end
            def self.new(delta: nil, gross: nil, total: nil)
            end

            sig do
              override.returns({ delta: Float, gross: Float, total: Float })
            end
            def to_hash
            end
          end

          class Views < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::Views,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :delta

            sig { params(delta: Integer).void }
            attr_writer :delta

            sig { returns(T.nilable(Integer)) }
            attr_reader :total

            sig { params(total: Integer).void }
            attr_writer :total

            sig do
              params(delta: Integer, total: Integer).returns(T.attached_class)
            end
            def self.new(delta: nil, total: nil)
            end

            sig { override.returns({ delta: Integer, total: Integer }) }
            def to_hash
            end
          end
        end

        class Posts < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::ChartData
                ]
              )
            )
          end
          attr_reader :chart_data

          sig do
            params(
              chart_data:
                T::Array[
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::ChartData::OrHash
                ]
            ).void
          end
          attr_writer :chart_data

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::Count
              )
            )
          end
          attr_reader :count

          sig do
            params(
              count:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::Count::OrHash
            ).void
          end
          attr_writer :count

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::Earnings
              )
            )
          end
          attr_reader :earnings

          sig do
            params(
              earnings:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::Earnings::OrHash
            ).void
          end
          attr_writer :earnings

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :has_statistic

          sig { params(has_statistic: T::Boolean).void }
          attr_writer :has_statistic

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::Views
              )
            )
          end
          attr_reader :views

          sig do
            params(
              views:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::Views::OrHash
            ).void
          end
          attr_writer :views

          sig do
            params(
              chart_data:
                T::Array[
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::ChartData::OrHash
                ],
              count:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::Count::OrHash,
              earnings:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::Earnings::OrHash,
              has_statistic: T::Boolean,
              views:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::Views::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            chart_data: nil,
            count: nil,
            earnings: nil,
            has_statistic: nil,
            views: nil
          )
          end

          sig do
            override.returns(
              {
                chart_data:
                  T::Array[
                    Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::ChartData
                  ],
                count:
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::Count,
                earnings:
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::Earnings,
                has_statistic: T::Boolean,
                views:
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::Views
              }
            )
          end
          def to_hash
          end

          class ChartData < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::ChartData,
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

            sig do
              params(count: Integer, date: String).returns(T.attached_class)
            end
            def self.new(count: nil, date: nil)
            end

            sig { override.returns({ count: Integer, date: String }) }
            def to_hash
            end
          end

          class Count < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::Count,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :delta

            sig { params(delta: Integer).void }
            attr_writer :delta

            sig { returns(T.nilable(Integer)) }
            attr_reader :total

            sig { params(total: Integer).void }
            attr_writer :total

            sig do
              params(delta: Integer, total: Integer).returns(T.attached_class)
            end
            def self.new(delta: nil, total: nil)
            end

            sig { override.returns({ delta: Integer, total: Integer }) }
            def to_hash
            end
          end

          class Earnings < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::Earnings,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :delta

            sig { params(delta: Integer).void }
            attr_writer :delta

            sig { returns(T.nilable(Integer)) }
            attr_reader :gross

            sig { params(gross: Integer).void }
            attr_writer :gross

            sig { returns(T.nilable(Integer)) }
            attr_reader :total

            sig { params(total: Integer).void }
            attr_writer :total

            sig do
              params(delta: Integer, gross: Integer, total: Integer).returns(
                T.attached_class
              )
            end
            def self.new(delta: nil, gross: nil, total: nil)
            end

            sig do
              override.returns(
                { delta: Integer, gross: Integer, total: Integer }
              )
            end
            def to_hash
            end
          end

          class Views < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::Views,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Float)) }
            attr_reader :delta

            sig { params(delta: Float).void }
            attr_writer :delta

            sig { returns(T.nilable(Integer)) }
            attr_reader :total

            sig { params(total: Integer).void }
            attr_writer :total

            sig do
              params(delta: Float, total: Integer).returns(T.attached_class)
            end
            def self.new(delta: nil, total: nil)
            end

            sig { override.returns({ delta: Float, total: Integer }) }
            def to_hash
            end
          end
        end

        class Streams < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::ChartData
                ]
              )
            )
          end
          attr_reader :chart_data

          sig do
            params(
              chart_data:
                T::Array[
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::ChartData::OrHash
                ]
            ).void
          end
          attr_writer :chart_data

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::Count
              )
            )
          end
          attr_reader :count

          sig do
            params(
              count:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::Count::OrHash
            ).void
          end
          attr_writer :count

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::Earnings
              )
            )
          end
          attr_reader :earnings

          sig do
            params(
              earnings:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::Earnings::OrHash
            ).void
          end
          attr_writer :earnings

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :has_statistic

          sig { params(has_statistic: T::Boolean).void }
          attr_writer :has_statistic

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::Views
              )
            )
          end
          attr_reader :views

          sig do
            params(
              views:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::Views::OrHash
            ).void
          end
          attr_writer :views

          sig do
            params(
              chart_data:
                T::Array[
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::ChartData::OrHash
                ],
              count:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::Count::OrHash,
              earnings:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::Earnings::OrHash,
              has_statistic: T::Boolean,
              views:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::Views::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            chart_data: nil,
            count: nil,
            earnings: nil,
            has_statistic: nil,
            views: nil
          )
          end

          sig do
            override.returns(
              {
                chart_data:
                  T::Array[
                    Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::ChartData
                  ],
                count:
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::Count,
                earnings:
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::Earnings,
                has_statistic: T::Boolean,
                views:
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::Views
              }
            )
          end
          def to_hash
          end

          class ChartData < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::ChartData,
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

            sig do
              params(count: Integer, date: String).returns(T.attached_class)
            end
            def self.new(count: nil, date: nil)
            end

            sig { override.returns({ count: Integer, date: String }) }
            def to_hash
            end
          end

          class Count < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::Count,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :delta

            sig { params(delta: Integer).void }
            attr_writer :delta

            sig { returns(T.nilable(String)) }
            attr_reader :total

            sig { params(total: String).void }
            attr_writer :total

            sig do
              params(delta: Integer, total: String).returns(T.attached_class)
            end
            def self.new(delta: nil, total: nil)
            end

            sig { override.returns({ delta: Integer, total: String }) }
            def to_hash
            end
          end

          class Earnings < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::Earnings,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :delta

            sig { params(delta: Integer).void }
            attr_writer :delta

            sig { returns(T.nilable(Integer)) }
            attr_reader :gross

            sig { params(gross: Integer).void }
            attr_writer :gross

            sig { returns(T.nilable(Integer)) }
            attr_reader :total

            sig { params(total: Integer).void }
            attr_writer :total

            sig do
              params(delta: Integer, gross: Integer, total: Integer).returns(
                T.attached_class
              )
            end
            def self.new(delta: nil, gross: nil, total: nil)
            end

            sig do
              override.returns(
                { delta: Integer, gross: Integer, total: Integer }
              )
            end
            def to_hash
            end
          end

          class Views < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::Views,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :delta

            sig { params(delta: Integer).void }
            attr_writer :delta

            sig { returns(T.nilable(Integer)) }
            attr_reader :total

            sig { params(total: Integer).void }
            attr_writer :total

            sig do
              params(delta: Integer, total: Integer).returns(T.attached_class)
            end
            def self.new(delta: nil, total: nil)
            end

            sig { override.returns({ delta: Integer, total: Integer }) }
            def to_hash
            end
          end
        end

        class Visitors < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors,
                Onlyfansapi::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::ChartData
                ]
              )
            )
          end
          attr_reader :chart_data

          sig do
            params(
              chart_data:
                T::Array[
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::ChartData::OrHash
                ]
            ).void
          end
          attr_writer :chart_data

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Earnings
              )
            )
          end
          attr_reader :earnings

          sig do
            params(
              earnings:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Earnings::OrHash
            ).void
          end
          attr_writer :earnings

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :has_statistic

          sig { params(has_statistic: T::Boolean).void }
          attr_writer :has_statistic

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions
              )
            )
          end
          attr_reader :subscriptions

          sig do
            params(
              subscriptions:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions::OrHash
            ).void
          end
          attr_writer :subscriptions

          sig do
            returns(
              T.nilable(
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Visitors
              )
            )
          end
          attr_reader :visitors

          sig do
            params(
              visitors:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Visitors::OrHash
            ).void
          end
          attr_writer :visitors

          sig do
            params(
              chart_data:
                T::Array[
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::ChartData::OrHash
                ],
              earnings:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Earnings::OrHash,
              has_statistic: T::Boolean,
              subscriptions:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions::OrHash,
              visitors:
                Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Visitors::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            chart_data: nil,
            earnings: nil,
            has_statistic: nil,
            subscriptions: nil,
            visitors: nil
          )
          end

          sig do
            override.returns(
              {
                chart_data:
                  T::Array[
                    Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::ChartData
                  ],
                earnings:
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Earnings,
                has_statistic: T::Boolean,
                subscriptions:
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions,
                visitors:
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Visitors
              }
            )
          end
          def to_hash
          end

          class ChartData < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::ChartData,
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

            sig do
              params(count: Integer, date: String).returns(T.attached_class)
            end
            def self.new(count: nil, date: nil)
            end

            sig { override.returns({ count: Integer, date: String }) }
            def to_hash
            end
          end

          class Earnings < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Earnings,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Float)) }
            attr_reader :delta

            sig { params(delta: Float).void }
            attr_writer :delta

            sig { returns(T.nilable(Float)) }
            attr_reader :gross

            sig { params(gross: Float).void }
            attr_writer :gross

            sig { returns(T.nilable(Float)) }
            attr_reader :total

            sig { params(total: Float).void }
            attr_writer :total

            sig do
              params(delta: Float, gross: Float, total: Float).returns(
                T.attached_class
              )
            end
            def self.new(delta: nil, gross: nil, total: nil)
            end

            sig do
              override.returns({ delta: Float, gross: Float, total: Float })
            end
            def to_hash
            end
          end

          class Subscriptions < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions::New
                )
              )
            end
            attr_reader :new

            sig do
              params(
                new:
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions::New::OrHash
              ).void
            end
            attr_writer :new

            sig do
              returns(
                T.nilable(
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions::Renew
                )
              )
            end
            attr_reader :renew

            sig do
              params(
                renew:
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions::Renew::OrHash
              ).void
            end
            attr_writer :renew

            sig do
              params(
                new:
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions::New::OrHash,
                renew:
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions::Renew::OrHash
              ).returns(T.attached_class)
            end
            def self.new(new: nil, renew: nil)
            end

            sig do
              override.returns(
                {
                  new:
                    Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions::New,
                  renew:
                    Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions::Renew
                }
              )
            end
            def to_hash
            end

            class New < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions::New,
                    Onlyfansapi::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Float)) }
              attr_reader :delta

              sig { params(delta: Float).void }
              attr_writer :delta

              sig { returns(T.nilable(Integer)) }
              attr_reader :total

              sig { params(total: Integer).void }
              attr_writer :total

              sig do
                params(delta: Float, total: Integer).returns(T.attached_class)
              end
              def self.new(delta: nil, total: nil)
              end

              sig { override.returns({ delta: Float, total: Integer }) }
              def to_hash
              end
            end

            class Renew < Onlyfansapi::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions::Renew,
                    Onlyfansapi::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Integer)) }
              attr_reader :delta

              sig { params(delta: Integer).void }
              attr_writer :delta

              sig { returns(T.nilable(Integer)) }
              attr_reader :total

              sig { params(total: Integer).void }
              attr_writer :total

              sig do
                params(delta: Integer, total: Integer).returns(T.attached_class)
              end
              def self.new(delta: nil, total: nil)
              end

              sig { override.returns({ delta: Integer, total: Integer }) }
              def to_hash
              end
            end
          end

          class Visitors < Onlyfansapi::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Visitors,
                  Onlyfansapi::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :delta

            sig { params(delta: Integer).void }
            attr_writer :delta

            sig { returns(T.nilable(Integer)) }
            attr_reader :total

            sig { params(total: Integer).void }
            attr_writer :total

            sig do
              params(delta: Integer, total: Integer).returns(T.attached_class)
            end
            def self.new(delta: nil, total: nil)
            end

            sig { override.returns({ delta: Integer, total: Integer }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
