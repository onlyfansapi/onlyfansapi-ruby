# typed: strong

module Onlyfans
  module Models
    class PostStatsResponse < Onlyfans::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfans::Models::PostStatsResponse,
            Onlyfans::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Onlyfans::Models::PostStatsResponse::Meta)) }
      attr_reader :_meta

      sig do
        params(_meta: Onlyfans::Models::PostStatsResponse::Meta::OrHash).void
      end
      attr_writer :_meta

      sig { returns(T.nilable(Onlyfans::Models::PostStatsResponse::Data)) }
      attr_reader :data

      sig do
        params(data: Onlyfans::Models::PostStatsResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfans::Models::PostStatsResponse::Meta::OrHash,
          data: Onlyfans::Models::PostStatsResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfans::Models::PostStatsResponse::Meta,
            data: Onlyfans::Models::PostStatsResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfans::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfans::Models::PostStatsResponse::Meta,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(Onlyfans::Models::PostStatsResponse::Meta::Cache))
        end
        attr_reader :_cache

        sig do
          params(
            _cache: Onlyfans::Models::PostStatsResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(T.nilable(Onlyfans::Models::PostStatsResponse::Meta::Credits))
        end
        attr_reader :_credits

        sig do
          params(
            _credits: Onlyfans::Models::PostStatsResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(Onlyfans::Models::PostStatsResponse::Meta::RateLimits)
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfans::Models::PostStatsResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache: Onlyfans::Models::PostStatsResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfans::Models::PostStatsResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfans::Models::PostStatsResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache: Onlyfans::Models::PostStatsResponse::Meta::Cache,
              _credits: Onlyfans::Models::PostStatsResponse::Meta::Credits,
              _rate_limits:
                Onlyfans::Models::PostStatsResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::PostStatsResponse::Meta::Cache,
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
                Onlyfans::Models::PostStatsResponse::Meta::Credits,
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
                Onlyfans::Models::PostStatsResponse::Meta::RateLimits,
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
              Onlyfans::Models::PostStatsResponse::Data,
              Onlyfans::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[Onlyfans::Models::PostStatsResponse::Data::CommentChart]
            )
          )
        end
        attr_reader :comment_chart

        sig do
          params(
            comment_chart:
              T::Array[
                Onlyfans::Models::PostStatsResponse::Data::CommentChart::OrHash
              ]
          ).void
        end
        attr_writer :comment_chart

        sig { returns(T.nilable(Integer)) }
        attr_reader :comment_count

        sig { params(comment_count: Integer).void }
        attr_writer :comment_count

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_stats

        sig { params(has_stats: T::Boolean).void }
        attr_writer :has_stats

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_video

        sig { params(has_video: T::Boolean).void }
        attr_writer :has_video

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_available

        sig { params(is_available: T::Boolean).void }
        attr_writer :is_available

        sig do
          returns(
            T.nilable(
              T::Array[Onlyfans::Models::PostStatsResponse::Data::LikeChart]
            )
          )
        end
        attr_reader :like_chart

        sig do
          params(
            like_chart:
              T::Array[
                Onlyfans::Models::PostStatsResponse::Data::LikeChart::OrHash
              ]
          ).void
        end
        attr_writer :like_chart

        sig { returns(T.nilable(Integer)) }
        attr_reader :like_count

        sig { params(like_count: Integer).void }
        attr_writer :like_count

        sig do
          returns(
            T.nilable(
              T::Array[Onlyfans::Models::PostStatsResponse::Data::LookChart]
            )
          )
        end
        attr_reader :look_chart

        sig do
          params(
            look_chart:
              T::Array[
                Onlyfans::Models::PostStatsResponse::Data::LookChart::OrHash
              ]
          ).void
        end
        attr_writer :look_chart

        sig { returns(T.nilable(Integer)) }
        attr_reader :look_count

        sig { params(look_count: Integer).void }
        attr_writer :look_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :look_duration

        sig { params(look_duration: Integer).void }
        attr_writer :look_duration

        sig { returns(T.nilable(Integer)) }
        attr_reader :look_duration_average

        sig { params(look_duration_average: Integer).void }
        attr_writer :look_duration_average

        sig { returns(T.nilable(Integer)) }
        attr_reader :purchased_count

        sig { params(purchased_count: Integer).void }
        attr_writer :purchased_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :purchased_summ

        sig { params(purchased_summ: Integer).void }
        attr_writer :purchased_summ

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfans::Models::PostStatsResponse::Data::PurchasesChart
              ]
            )
          )
        end
        attr_reader :purchases_chart

        sig do
          params(
            purchases_chart:
              T::Array[
                Onlyfans::Models::PostStatsResponse::Data::PurchasesChart::OrHash
              ]
          ).void
        end
        attr_writer :purchases_chart

        sig do
          returns(
            T.nilable(
              T::Array[Onlyfans::Models::PostStatsResponse::Data::TipChart]
            )
          )
        end
        attr_reader :tip_chart

        sig do
          params(
            tip_chart:
              T::Array[
                Onlyfans::Models::PostStatsResponse::Data::TipChart::OrHash
              ]
          ).void
        end
        attr_writer :tip_chart

        sig { returns(T.nilable(Integer)) }
        attr_reader :tip_count

        sig { params(tip_count: Integer).void }
        attr_writer :tip_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :tip_sum

        sig { params(tip_sum: Integer).void }
        attr_writer :tip_sum

        sig do
          returns(
            T.nilable(
              T::Array[Onlyfans::Models::PostStatsResponse::Data::TipSumChart]
            )
          )
        end
        attr_reader :tip_sum_chart

        sig do
          params(
            tip_sum_chart:
              T::Array[
                Onlyfans::Models::PostStatsResponse::Data::TipSumChart::OrHash
              ]
          ).void
        end
        attr_writer :tip_sum_chart

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfans::Models::PostStatsResponse::Data::UniqueLookChart
              ]
            )
          )
        end
        attr_reader :unique_look_chart

        sig do
          params(
            unique_look_chart:
              T::Array[
                Onlyfans::Models::PostStatsResponse::Data::UniqueLookChart::OrHash
              ]
          ).void
        end
        attr_writer :unique_look_chart

        sig { returns(T.nilable(Integer)) }
        attr_reader :unique_look_count

        sig { params(unique_look_count: Integer).void }
        attr_writer :unique_look_count

        sig do
          params(
            comment_chart:
              T::Array[
                Onlyfans::Models::PostStatsResponse::Data::CommentChart::OrHash
              ],
            comment_count: Integer,
            has_stats: T::Boolean,
            has_video: T::Boolean,
            is_available: T::Boolean,
            like_chart:
              T::Array[
                Onlyfans::Models::PostStatsResponse::Data::LikeChart::OrHash
              ],
            like_count: Integer,
            look_chart:
              T::Array[
                Onlyfans::Models::PostStatsResponse::Data::LookChart::OrHash
              ],
            look_count: Integer,
            look_duration: Integer,
            look_duration_average: Integer,
            purchased_count: Integer,
            purchased_summ: Integer,
            purchases_chart:
              T::Array[
                Onlyfans::Models::PostStatsResponse::Data::PurchasesChart::OrHash
              ],
            tip_chart:
              T::Array[
                Onlyfans::Models::PostStatsResponse::Data::TipChart::OrHash
              ],
            tip_count: Integer,
            tip_sum: Integer,
            tip_sum_chart:
              T::Array[
                Onlyfans::Models::PostStatsResponse::Data::TipSumChart::OrHash
              ],
            unique_look_chart:
              T::Array[
                Onlyfans::Models::PostStatsResponse::Data::UniqueLookChart::OrHash
              ],
            unique_look_count: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          comment_chart: nil,
          comment_count: nil,
          has_stats: nil,
          has_video: nil,
          is_available: nil,
          like_chart: nil,
          like_count: nil,
          look_chart: nil,
          look_count: nil,
          look_duration: nil,
          look_duration_average: nil,
          purchased_count: nil,
          purchased_summ: nil,
          purchases_chart: nil,
          tip_chart: nil,
          tip_count: nil,
          tip_sum: nil,
          tip_sum_chart: nil,
          unique_look_chart: nil,
          unique_look_count: nil
        )
        end

        sig do
          override.returns(
            {
              comment_chart:
                T::Array[
                  Onlyfans::Models::PostStatsResponse::Data::CommentChart
                ],
              comment_count: Integer,
              has_stats: T::Boolean,
              has_video: T::Boolean,
              is_available: T::Boolean,
              like_chart:
                T::Array[Onlyfans::Models::PostStatsResponse::Data::LikeChart],
              like_count: Integer,
              look_chart:
                T::Array[Onlyfans::Models::PostStatsResponse::Data::LookChart],
              look_count: Integer,
              look_duration: Integer,
              look_duration_average: Integer,
              purchased_count: Integer,
              purchased_summ: Integer,
              purchases_chart:
                T::Array[
                  Onlyfans::Models::PostStatsResponse::Data::PurchasesChart
                ],
              tip_chart:
                T::Array[Onlyfans::Models::PostStatsResponse::Data::TipChart],
              tip_count: Integer,
              tip_sum: Integer,
              tip_sum_chart:
                T::Array[
                  Onlyfans::Models::PostStatsResponse::Data::TipSumChart
                ],
              unique_look_chart:
                T::Array[
                  Onlyfans::Models::PostStatsResponse::Data::UniqueLookChart
                ],
              unique_look_count: Integer
            }
          )
        end
        def to_hash
        end

        class CommentChart < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::PostStatsResponse::Data::CommentChart,
                Onlyfans::Internal::AnyHash
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

        class LikeChart < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::PostStatsResponse::Data::LikeChart,
                Onlyfans::Internal::AnyHash
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

        class LookChart < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::PostStatsResponse::Data::LookChart,
                Onlyfans::Internal::AnyHash
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

        class PurchasesChart < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::PostStatsResponse::Data::PurchasesChart,
                Onlyfans::Internal::AnyHash
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

        class TipChart < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::PostStatsResponse::Data::TipChart,
                Onlyfans::Internal::AnyHash
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

        class TipSumChart < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::PostStatsResponse::Data::TipSumChart,
                Onlyfans::Internal::AnyHash
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

        class UniqueLookChart < Onlyfans::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfans::Models::PostStatsResponse::Data::UniqueLookChart,
                Onlyfans::Internal::AnyHash
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
