# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Statistics#get_overview
    class StatisticGetOverviewResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::StatisticGetOverviewResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::StatisticGetOverviewResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::StatisticGetOverviewResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::StatisticGetOverviewResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::StatisticGetOverviewResponse::Meta]
      #   @param data [Onlyfansapi::Models::StatisticGetOverviewResponse::Data]

      # @see Onlyfansapi::Models::StatisticGetOverviewResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::StatisticGetOverviewResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::StatisticGetOverviewResponse::Meta#_cache
        class Cache < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute is_cached
          #
          #   @return [Boolean, nil]
          optional :is_cached, Onlyfansapi::Internal::Type::Boolean

          # @!attribute note
          #
          #   @return [String, nil]
          optional :note, String

          # @!method initialize(is_cached: nil, note: nil)
          #   @param is_cached [Boolean]
          #   @param note [String]
        end

        # @see Onlyfansapi::Models::StatisticGetOverviewResponse::Meta#_credits
        class Credits < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute balance
          #
          #   @return [Integer, nil]
          optional :balance, Integer

          # @!attribute note
          #
          #   @return [String, nil]
          optional :note, String

          # @!attribute used
          #
          #   @return [Integer, nil]
          optional :used, Integer

          # @!method initialize(balance: nil, note: nil, used: nil)
          #   @param balance [Integer]
          #   @param note [String]
          #   @param used [Integer]
        end

        # @see Onlyfansapi::Models::StatisticGetOverviewResponse::Meta#_rate_limits
        class RateLimits < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute limit_day
          #
          #   @return [Integer, nil]
          optional :limit_day, Integer

          # @!attribute limit_minute
          #
          #   @return [Integer, nil]
          optional :limit_minute, Integer

          # @!attribute remaining_day
          #
          #   @return [Integer, nil]
          optional :remaining_day, Integer

          # @!attribute remaining_minute
          #
          #   @return [Integer, nil]
          optional :remaining_minute, Integer

          # @!method initialize(limit_day: nil, limit_minute: nil, remaining_day: nil, remaining_minute: nil)
          #   @param limit_day [Integer]
          #   @param limit_minute [Integer]
          #   @param remaining_day [Integer]
          #   @param remaining_minute [Integer]
        end
      end

      # @see Onlyfansapi::Models::StatisticGetOverviewResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute earning
        #
        #   @return [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Earning, nil]
        optional :earning, -> { Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Earning }

        # @!attribute mass_messages
        #
        #   @return [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages, nil]
        optional :mass_messages,
                 -> { Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages },
                 api_name: :massMessages

        # @!attribute posts
        #
        #   @return [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts, nil]
        optional :posts, -> { Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts }

        # @!attribute streams
        #
        #   @return [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams, nil]
        optional :streams, -> { Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams }

        # @!attribute visitors
        #
        #   @return [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors, nil]
        optional :visitors, -> { Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors }

        # @!method initialize(earning: nil, mass_messages: nil, posts: nil, streams: nil, visitors: nil)
        #   @param earning [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Earning]
        #   @param mass_messages [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages]
        #   @param posts [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts]
        #   @param streams [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams]
        #   @param visitors [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors]

        # @see Onlyfansapi::Models::StatisticGetOverviewResponse::Data#earning
        class Earning < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute delta
          #
          #   @return [Float, nil]
          optional :delta, Float

          # @!attribute gross
          #
          #   @return [Float, nil]
          optional :gross, Float

          # @!attribute total
          #
          #   @return [Float, nil]
          optional :total, Float

          # @!method initialize(delta: nil, gross: nil, total: nil)
          #   @param delta [Float]
          #   @param gross [Float]
          #   @param total [Float]
        end

        # @see Onlyfansapi::Models::StatisticGetOverviewResponse::Data#mass_messages
        class MassMessages < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute chart_data
          #
          #   @return [Array<Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::ChartData>, nil]
          optional :chart_data,
                   -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::ChartData] },
                   api_name: :chartData

          # @!attribute count
          #
          #   @return [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::Count, nil]
          optional :count, -> { Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::Count }

          # @!attribute earnings
          #
          #   @return [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::Earnings, nil]
          optional :earnings, -> { Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::Earnings }

          # @!attribute has_statistic
          #
          #   @return [Boolean, nil]
          optional :has_statistic, Onlyfansapi::Internal::Type::Boolean, api_name: :hasStatistic

          # @!attribute views
          #
          #   @return [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::Views, nil]
          optional :views, -> { Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::Views }

          # @!method initialize(chart_data: nil, count: nil, earnings: nil, has_statistic: nil, views: nil)
          #   @param chart_data [Array<Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::ChartData>]
          #   @param count [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::Count]
          #   @param earnings [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::Earnings]
          #   @param has_statistic [Boolean]
          #   @param views [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages::Views]

          class ChartData < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute count
            #
            #   @return [Integer, nil]
            optional :count, Integer

            # @!attribute date
            #
            #   @return [String, nil]
            optional :date, String

            # @!method initialize(count: nil, date: nil)
            #   @param count [Integer]
            #   @param date [String]
          end

          # @see Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages#count
          class Count < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute delta
            #
            #   @return [Float, nil]
            optional :delta, Float

            # @!attribute total
            #
            #   @return [Integer, nil]
            optional :total, Integer

            # @!method initialize(delta: nil, total: nil)
            #   @param delta [Float]
            #   @param total [Integer]
          end

          # @see Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages#earnings
          class Earnings < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute delta
            #
            #   @return [Float, nil]
            optional :delta, Float

            # @!attribute gross
            #
            #   @return [Float, nil]
            optional :gross, Float

            # @!attribute total
            #
            #   @return [Float, nil]
            optional :total, Float

            # @!method initialize(delta: nil, gross: nil, total: nil)
            #   @param delta [Float]
            #   @param gross [Float]
            #   @param total [Float]
          end

          # @see Onlyfansapi::Models::StatisticGetOverviewResponse::Data::MassMessages#views
          class Views < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute delta
            #
            #   @return [Integer, nil]
            optional :delta, Integer

            # @!attribute total
            #
            #   @return [Integer, nil]
            optional :total, Integer

            # @!method initialize(delta: nil, total: nil)
            #   @param delta [Integer]
            #   @param total [Integer]
          end
        end

        # @see Onlyfansapi::Models::StatisticGetOverviewResponse::Data#posts
        class Posts < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute chart_data
          #
          #   @return [Array<Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::ChartData>, nil]
          optional :chart_data,
                   -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::ChartData] },
                   api_name: :chartData

          # @!attribute count
          #
          #   @return [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::Count, nil]
          optional :count, -> { Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::Count }

          # @!attribute earnings
          #
          #   @return [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::Earnings, nil]
          optional :earnings, -> { Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::Earnings }

          # @!attribute has_statistic
          #
          #   @return [Boolean, nil]
          optional :has_statistic, Onlyfansapi::Internal::Type::Boolean, api_name: :hasStatistic

          # @!attribute views
          #
          #   @return [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::Views, nil]
          optional :views, -> { Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::Views }

          # @!method initialize(chart_data: nil, count: nil, earnings: nil, has_statistic: nil, views: nil)
          #   @param chart_data [Array<Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::ChartData>]
          #   @param count [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::Count]
          #   @param earnings [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::Earnings]
          #   @param has_statistic [Boolean]
          #   @param views [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts::Views]

          class ChartData < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute count
            #
            #   @return [Integer, nil]
            optional :count, Integer

            # @!attribute date
            #
            #   @return [String, nil]
            optional :date, String

            # @!method initialize(count: nil, date: nil)
            #   @param count [Integer]
            #   @param date [String]
          end

          # @see Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts#count
          class Count < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute delta
            #
            #   @return [Integer, nil]
            optional :delta, Integer

            # @!attribute total
            #
            #   @return [Integer, nil]
            optional :total, Integer

            # @!method initialize(delta: nil, total: nil)
            #   @param delta [Integer]
            #   @param total [Integer]
          end

          # @see Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts#earnings
          class Earnings < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute delta
            #
            #   @return [Integer, nil]
            optional :delta, Integer

            # @!attribute gross
            #
            #   @return [Integer, nil]
            optional :gross, Integer

            # @!attribute total
            #
            #   @return [Integer, nil]
            optional :total, Integer

            # @!method initialize(delta: nil, gross: nil, total: nil)
            #   @param delta [Integer]
            #   @param gross [Integer]
            #   @param total [Integer]
          end

          # @see Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Posts#views
          class Views < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute delta
            #
            #   @return [Float, nil]
            optional :delta, Float

            # @!attribute total
            #
            #   @return [Integer, nil]
            optional :total, Integer

            # @!method initialize(delta: nil, total: nil)
            #   @param delta [Float]
            #   @param total [Integer]
          end
        end

        # @see Onlyfansapi::Models::StatisticGetOverviewResponse::Data#streams
        class Streams < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute chart_data
          #
          #   @return [Array<Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::ChartData>, nil]
          optional :chart_data,
                   -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::ChartData] },
                   api_name: :chartData

          # @!attribute count
          #
          #   @return [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::Count, nil]
          optional :count, -> { Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::Count }

          # @!attribute earnings
          #
          #   @return [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::Earnings, nil]
          optional :earnings, -> { Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::Earnings }

          # @!attribute has_statistic
          #
          #   @return [Boolean, nil]
          optional :has_statistic, Onlyfansapi::Internal::Type::Boolean, api_name: :hasStatistic

          # @!attribute views
          #
          #   @return [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::Views, nil]
          optional :views, -> { Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::Views }

          # @!method initialize(chart_data: nil, count: nil, earnings: nil, has_statistic: nil, views: nil)
          #   @param chart_data [Array<Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::ChartData>]
          #   @param count [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::Count]
          #   @param earnings [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::Earnings]
          #   @param has_statistic [Boolean]
          #   @param views [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams::Views]

          class ChartData < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute count
            #
            #   @return [Integer, nil]
            optional :count, Integer

            # @!attribute date
            #
            #   @return [String, nil]
            optional :date, String

            # @!method initialize(count: nil, date: nil)
            #   @param count [Integer]
            #   @param date [String]
          end

          # @see Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams#count
          class Count < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute delta
            #
            #   @return [Integer, nil]
            optional :delta, Integer

            # @!attribute total
            #
            #   @return [String, nil]
            optional :total, String

            # @!method initialize(delta: nil, total: nil)
            #   @param delta [Integer]
            #   @param total [String]
          end

          # @see Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams#earnings
          class Earnings < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute delta
            #
            #   @return [Integer, nil]
            optional :delta, Integer

            # @!attribute gross
            #
            #   @return [Integer, nil]
            optional :gross, Integer

            # @!attribute total
            #
            #   @return [Integer, nil]
            optional :total, Integer

            # @!method initialize(delta: nil, gross: nil, total: nil)
            #   @param delta [Integer]
            #   @param gross [Integer]
            #   @param total [Integer]
          end

          # @see Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Streams#views
          class Views < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute delta
            #
            #   @return [Integer, nil]
            optional :delta, Integer

            # @!attribute total
            #
            #   @return [Integer, nil]
            optional :total, Integer

            # @!method initialize(delta: nil, total: nil)
            #   @param delta [Integer]
            #   @param total [Integer]
          end
        end

        # @see Onlyfansapi::Models::StatisticGetOverviewResponse::Data#visitors
        class Visitors < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute chart_data
          #
          #   @return [Array<Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::ChartData>, nil]
          optional :chart_data,
                   -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::ChartData] },
                   api_name: :chartData

          # @!attribute earnings
          #
          #   @return [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Earnings, nil]
          optional :earnings, -> { Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Earnings }

          # @!attribute has_statistic
          #
          #   @return [Boolean, nil]
          optional :has_statistic, Onlyfansapi::Internal::Type::Boolean, api_name: :hasStatistic

          # @!attribute subscriptions
          #
          #   @return [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions, nil]
          optional :subscriptions,
                   -> { Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions }

          # @!attribute visitors
          #
          #   @return [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Visitors, nil]
          optional :visitors, -> { Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Visitors }

          # @!method initialize(chart_data: nil, earnings: nil, has_statistic: nil, subscriptions: nil, visitors: nil)
          #   @param chart_data [Array<Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::ChartData>]
          #   @param earnings [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Earnings]
          #   @param has_statistic [Boolean]
          #   @param subscriptions [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions]
          #   @param visitors [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Visitors]

          class ChartData < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute count
            #
            #   @return [Integer, nil]
            optional :count, Integer

            # @!attribute date
            #
            #   @return [String, nil]
            optional :date, String

            # @!method initialize(count: nil, date: nil)
            #   @param count [Integer]
            #   @param date [String]
          end

          # @see Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors#earnings
          class Earnings < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute delta
            #
            #   @return [Float, nil]
            optional :delta, Float

            # @!attribute gross
            #
            #   @return [Float, nil]
            optional :gross, Float

            # @!attribute total
            #
            #   @return [Float, nil]
            optional :total, Float

            # @!method initialize(delta: nil, gross: nil, total: nil)
            #   @param delta [Float]
            #   @param gross [Float]
            #   @param total [Float]
          end

          # @see Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors#subscriptions
          class Subscriptions < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute new
            #
            #   @return [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions::New, nil]
            optional :new,
                     -> { Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions::New }

            # @!attribute renew
            #
            #   @return [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions::Renew, nil]
            optional :renew,
                     -> { Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions::Renew }

            # @!method initialize(new: nil, renew: nil)
            #   @param new [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions::New]
            #   @param renew [Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions::Renew]

            # @see Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions#new
            class New < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute delta
              #
              #   @return [Float, nil]
              optional :delta, Float

              # @!attribute total
              #
              #   @return [Integer, nil]
              optional :total, Integer

              # @!method initialize(delta: nil, total: nil)
              #   @param delta [Float]
              #   @param total [Integer]
            end

            # @see Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions#renew
            class Renew < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute delta
              #
              #   @return [Integer, nil]
              optional :delta, Integer

              # @!attribute total
              #
              #   @return [Integer, nil]
              optional :total, Integer

              # @!method initialize(delta: nil, total: nil)
              #   @param delta [Integer]
              #   @param total [Integer]
            end
          end

          # @see Onlyfansapi::Models::StatisticGetOverviewResponse::Data::Visitors#visitors
          class Visitors < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute delta
            #
            #   @return [Integer, nil]
            optional :delta, Integer

            # @!attribute total
            #
            #   @return [Integer, nil]
            optional :total, Integer

            # @!method initialize(delta: nil, total: nil)
            #   @param delta [Integer]
            #   @param total [Integer]
          end
        end
      end
    end
  end
end
