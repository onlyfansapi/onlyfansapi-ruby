# typed: strong

module Onlyfansapi
  module Models
    class StoryRetrieveStatsResponse < Onlyfansapi::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Onlyfansapi::Models::StoryRetrieveStatsResponse,
            Onlyfansapi::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta)
        )
      end
      attr_reader :_meta

      sig do
        params(
          _meta: Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::OrHash
        ).void
      end
      attr_writer :_meta

      sig do
        returns(
          T.nilable(Onlyfansapi::Models::StoryRetrieveStatsResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          _meta: Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::OrHash,
          data: Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(_meta: nil, data: nil)
      end

      sig do
        override.returns(
          {
            _meta: Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta,
            data: Onlyfansapi::Models::StoryRetrieveStatsResponse::Data
          }
        )
      end
      def to_hash
      end

      class Meta < Onlyfansapi::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::Cache
            )
          )
        end
        attr_reader :_cache

        sig do
          params(
            _cache:
              Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::Cache::OrHash
          ).void
        end
        attr_writer :_cache

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::Credits
            )
          )
        end
        attr_reader :_credits

        sig do
          params(
            _credits:
              Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::Credits::OrHash
          ).void
        end
        attr_writer :_credits

        sig do
          returns(
            T.nilable(
              Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::RateLimits
            )
          )
        end
        attr_reader :_rate_limits

        sig do
          params(
            _rate_limits:
              Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::RateLimits::OrHash
          ).void
        end
        attr_writer :_rate_limits

        sig do
          params(
            _cache:
              Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::Cache::OrHash,
            _credits:
              Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::Credits::OrHash,
            _rate_limits:
              Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::RateLimits::OrHash
          ).returns(T.attached_class)
        end
        def self.new(_cache: nil, _credits: nil, _rate_limits: nil)
        end

        sig do
          override.returns(
            {
              _cache:
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::Cache,
              _credits:
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::Credits,
              _rate_limits:
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::RateLimits
            }
          )
        end
        def to_hash
        end

        class Cache < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::Cache,
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
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::Credits,
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
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Meta::RateLimits,
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
              Onlyfansapi::Models::StoryRetrieveStatsResponse::Data,
              Onlyfansapi::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :story_comment_all

        sig { params(story_comment_all: T::Array[String]).void }
        attr_writer :story_comment_all

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryCommentChart
              ]
            )
          )
        end
        attr_reader :story_comment_chart

        sig do
          params(
            story_comment_chart:
              T::Array[
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryCommentChart::OrHash
              ]
          ).void
        end
        attr_writer :story_comment_chart

        sig { returns(T.nilable(Integer)) }
        attr_reader :story_comment_count

        sig { params(story_comment_count: Integer).void }
        attr_writer :story_comment_count

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :story_like_all

        sig { params(story_like_all: T::Array[String]).void }
        attr_writer :story_like_all

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryLikeChart
              ]
            )
          )
        end
        attr_reader :story_like_chart

        sig do
          params(
            story_like_chart:
              T::Array[
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryLikeChart::OrHash
              ]
          ).void
        end
        attr_writer :story_like_chart

        sig { returns(T.nilable(Integer)) }
        attr_reader :story_like_count

        sig { params(story_like_count: Integer).void }
        attr_writer :story_like_count

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :story_look_all

        sig { params(story_look_all: T::Array[String]).void }
        attr_writer :story_look_all

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryLookChart
              ]
            )
          )
        end
        attr_reader :story_look_chart

        sig do
          params(
            story_look_chart:
              T::Array[
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryLookChart::OrHash
              ]
          ).void
        end
        attr_writer :story_look_chart

        sig { returns(T.nilable(String)) }
        attr_reader :story_look_count

        sig { params(story_look_count: String).void }
        attr_writer :story_look_count

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :story_tip_all

        sig { params(story_tip_all: T::Array[String]).void }
        attr_writer :story_tip_all

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryTipChart
              ]
            )
          )
        end
        attr_reader :story_tip_chart

        sig do
          params(
            story_tip_chart:
              T::Array[
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryTipChart::OrHash
              ]
          ).void
        end
        attr_writer :story_tip_chart

        sig { returns(T.nilable(Integer)) }
        attr_reader :story_tip_count

        sig { params(story_tip_count: Integer).void }
        attr_writer :story_tip_count

        sig { returns(T.nilable(Integer)) }
        attr_reader :story_tip_sum

        sig { params(story_tip_sum: Integer).void }
        attr_writer :story_tip_sum

        sig do
          returns(
            T.nilable(
              T::Array[
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryTipSumChart
              ]
            )
          )
        end
        attr_reader :story_tip_sum_chart

        sig do
          params(
            story_tip_sum_chart:
              T::Array[
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryTipSumChart::OrHash
              ]
          ).void
        end
        attr_writer :story_tip_sum_chart

        sig do
          params(
            created_at: String,
            story_comment_all: T::Array[String],
            story_comment_chart:
              T::Array[
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryCommentChart::OrHash
              ],
            story_comment_count: Integer,
            story_like_all: T::Array[String],
            story_like_chart:
              T::Array[
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryLikeChart::OrHash
              ],
            story_like_count: Integer,
            story_look_all: T::Array[String],
            story_look_chart:
              T::Array[
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryLookChart::OrHash
              ],
            story_look_count: String,
            story_tip_all: T::Array[String],
            story_tip_chart:
              T::Array[
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryTipChart::OrHash
              ],
            story_tip_count: Integer,
            story_tip_sum: Integer,
            story_tip_sum_chart:
              T::Array[
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryTipSumChart::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          created_at: nil,
          story_comment_all: nil,
          story_comment_chart: nil,
          story_comment_count: nil,
          story_like_all: nil,
          story_like_chart: nil,
          story_like_count: nil,
          story_look_all: nil,
          story_look_chart: nil,
          story_look_count: nil,
          story_tip_all: nil,
          story_tip_chart: nil,
          story_tip_count: nil,
          story_tip_sum: nil,
          story_tip_sum_chart: nil
        )
        end

        sig do
          override.returns(
            {
              created_at: String,
              story_comment_all: T::Array[String],
              story_comment_chart:
                T::Array[
                  Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryCommentChart
                ],
              story_comment_count: Integer,
              story_like_all: T::Array[String],
              story_like_chart:
                T::Array[
                  Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryLikeChart
                ],
              story_like_count: Integer,
              story_look_all: T::Array[String],
              story_look_chart:
                T::Array[
                  Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryLookChart
                ],
              story_look_count: String,
              story_tip_all: T::Array[String],
              story_tip_chart:
                T::Array[
                  Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryTipChart
                ],
              story_tip_count: Integer,
              story_tip_sum: Integer,
              story_tip_sum_chart:
                T::Array[
                  Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryTipSumChart
                ]
            }
          )
        end
        def to_hash
        end

        class StoryCommentChart < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryCommentChart,
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

        class StoryLikeChart < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryLikeChart,
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

        class StoryLookChart < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryLookChart,
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

        class StoryTipChart < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryTipChart,
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

        class StoryTipSumChart < Onlyfansapi::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Onlyfansapi::Models::StoryRetrieveStatsResponse::Data::StoryTipSumChart,
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
