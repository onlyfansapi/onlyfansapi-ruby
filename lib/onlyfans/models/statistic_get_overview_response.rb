# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::Statistics#get_overview
    class StatisticGetOverviewResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::StatisticGetOverviewResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::StatisticGetOverviewResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::StatisticGetOverviewResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::StatisticGetOverviewResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::StatisticGetOverviewResponse::Meta]
      #   @param data [Onlyfans::Models::StatisticGetOverviewResponse::Data]

      # @see Onlyfans::Models::StatisticGetOverviewResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::StatisticGetOverviewResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::StatisticGetOverviewResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::StatisticGetOverviewResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::StatisticGetOverviewResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfans::Models::StatisticGetOverviewResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfans::Models::StatisticGetOverviewResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfans::Models::StatisticGetOverviewResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::StatisticGetOverviewResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfans::Models::StatisticGetOverviewResponse::Meta::RateLimits]

        # @see Onlyfans::Models::StatisticGetOverviewResponse::Meta#_cache
        class Cache < Onlyfans::Internal::Type::BaseModel
          # @!attribute is_cached
          #
          #   @return [Boolean, nil]
          optional :is_cached, Onlyfans::Internal::Type::Boolean

          # @!attribute note
          #
          #   @return [String, nil]
          optional :note, String

          # @!method initialize(is_cached: nil, note: nil)
          #   @param is_cached [Boolean]
          #   @param note [String]
        end

        # @see Onlyfans::Models::StatisticGetOverviewResponse::Meta#_credits
        class Credits < Onlyfans::Internal::Type::BaseModel
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

        # @see Onlyfans::Models::StatisticGetOverviewResponse::Meta#_rate_limits
        class RateLimits < Onlyfans::Internal::Type::BaseModel
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

      # @see Onlyfans::Models::StatisticGetOverviewResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute earning
        #
        #   @return [Onlyfans::Models::StatisticGetOverviewResponse::Data::Earning, nil]
        optional :earning, -> { Onlyfans::Models::StatisticGetOverviewResponse::Data::Earning }

        # @!attribute mass_messages
        #
        #   @return [Onlyfans::Models::StatisticGetOverviewResponse::Data::MassMessages, nil]
        optional :mass_messages,
                 -> { Onlyfans::Models::StatisticGetOverviewResponse::Data::MassMessages },
                 api_name: :massMessages

        # @!attribute posts
        #
        #   @return [Onlyfans::Models::StatisticGetOverviewResponse::Data::Posts, nil]
        optional :posts, -> { Onlyfans::Models::StatisticGetOverviewResponse::Data::Posts }

        # @!attribute streams
        #
        #   @return [Onlyfans::Models::StatisticGetOverviewResponse::Data::Streams, nil]
        optional :streams, -> { Onlyfans::Models::StatisticGetOverviewResponse::Data::Streams }

        # @!attribute visitors
        #
        #   @return [Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors, nil]
        optional :visitors, -> { Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors }

        # @!method initialize(earning: nil, mass_messages: nil, posts: nil, streams: nil, visitors: nil)
        #   @param earning [Onlyfans::Models::StatisticGetOverviewResponse::Data::Earning]
        #   @param mass_messages [Onlyfans::Models::StatisticGetOverviewResponse::Data::MassMessages]
        #   @param posts [Onlyfans::Models::StatisticGetOverviewResponse::Data::Posts]
        #   @param streams [Onlyfans::Models::StatisticGetOverviewResponse::Data::Streams]
        #   @param visitors [Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors]

        # @see Onlyfans::Models::StatisticGetOverviewResponse::Data#earning
        class Earning < Onlyfans::Internal::Type::BaseModel
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

        # @see Onlyfans::Models::StatisticGetOverviewResponse::Data#mass_messages
        class MassMessages < Onlyfans::Internal::Type::BaseModel
          # @!attribute chart_data
          #
          #   @return [Array<Onlyfans::Models::StatisticGetOverviewResponse::Data::MassMessages::ChartData>, nil]
          optional :chart_data,
                   -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::StatisticGetOverviewResponse::Data::MassMessages::ChartData] },
                   api_name: :chartData

          # @!attribute count
          #
          #   @return [Onlyfans::Models::StatisticGetOverviewResponse::Data::MassMessages::Count, nil]
          optional :count, -> { Onlyfans::Models::StatisticGetOverviewResponse::Data::MassMessages::Count }

          # @!attribute earnings
          #
          #   @return [Onlyfans::Models::StatisticGetOverviewResponse::Data::MassMessages::Earnings, nil]
          optional :earnings, -> { Onlyfans::Models::StatisticGetOverviewResponse::Data::MassMessages::Earnings }

          # @!attribute has_statistic
          #
          #   @return [Boolean, nil]
          optional :has_statistic, Onlyfans::Internal::Type::Boolean, api_name: :hasStatistic

          # @!attribute views
          #
          #   @return [Onlyfans::Models::StatisticGetOverviewResponse::Data::MassMessages::Views, nil]
          optional :views, -> { Onlyfans::Models::StatisticGetOverviewResponse::Data::MassMessages::Views }

          # @!method initialize(chart_data: nil, count: nil, earnings: nil, has_statistic: nil, views: nil)
          #   @param chart_data [Array<Onlyfans::Models::StatisticGetOverviewResponse::Data::MassMessages::ChartData>]
          #   @param count [Onlyfans::Models::StatisticGetOverviewResponse::Data::MassMessages::Count]
          #   @param earnings [Onlyfans::Models::StatisticGetOverviewResponse::Data::MassMessages::Earnings]
          #   @param has_statistic [Boolean]
          #   @param views [Onlyfans::Models::StatisticGetOverviewResponse::Data::MassMessages::Views]

          class ChartData < Onlyfans::Internal::Type::BaseModel
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

          # @see Onlyfans::Models::StatisticGetOverviewResponse::Data::MassMessages#count
          class Count < Onlyfans::Internal::Type::BaseModel
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

          # @see Onlyfans::Models::StatisticGetOverviewResponse::Data::MassMessages#earnings
          class Earnings < Onlyfans::Internal::Type::BaseModel
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

          # @see Onlyfans::Models::StatisticGetOverviewResponse::Data::MassMessages#views
          class Views < Onlyfans::Internal::Type::BaseModel
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

        # @see Onlyfans::Models::StatisticGetOverviewResponse::Data#posts
        class Posts < Onlyfans::Internal::Type::BaseModel
          # @!attribute chart_data
          #
          #   @return [Array<Onlyfans::Models::StatisticGetOverviewResponse::Data::Posts::ChartData>, nil]
          optional :chart_data,
                   -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::StatisticGetOverviewResponse::Data::Posts::ChartData] },
                   api_name: :chartData

          # @!attribute count
          #
          #   @return [Onlyfans::Models::StatisticGetOverviewResponse::Data::Posts::Count, nil]
          optional :count, -> { Onlyfans::Models::StatisticGetOverviewResponse::Data::Posts::Count }

          # @!attribute earnings
          #
          #   @return [Onlyfans::Models::StatisticGetOverviewResponse::Data::Posts::Earnings, nil]
          optional :earnings, -> { Onlyfans::Models::StatisticGetOverviewResponse::Data::Posts::Earnings }

          # @!attribute has_statistic
          #
          #   @return [Boolean, nil]
          optional :has_statistic, Onlyfans::Internal::Type::Boolean, api_name: :hasStatistic

          # @!attribute views
          #
          #   @return [Onlyfans::Models::StatisticGetOverviewResponse::Data::Posts::Views, nil]
          optional :views, -> { Onlyfans::Models::StatisticGetOverviewResponse::Data::Posts::Views }

          # @!method initialize(chart_data: nil, count: nil, earnings: nil, has_statistic: nil, views: nil)
          #   @param chart_data [Array<Onlyfans::Models::StatisticGetOverviewResponse::Data::Posts::ChartData>]
          #   @param count [Onlyfans::Models::StatisticGetOverviewResponse::Data::Posts::Count]
          #   @param earnings [Onlyfans::Models::StatisticGetOverviewResponse::Data::Posts::Earnings]
          #   @param has_statistic [Boolean]
          #   @param views [Onlyfans::Models::StatisticGetOverviewResponse::Data::Posts::Views]

          class ChartData < Onlyfans::Internal::Type::BaseModel
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

          # @see Onlyfans::Models::StatisticGetOverviewResponse::Data::Posts#count
          class Count < Onlyfans::Internal::Type::BaseModel
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

          # @see Onlyfans::Models::StatisticGetOverviewResponse::Data::Posts#earnings
          class Earnings < Onlyfans::Internal::Type::BaseModel
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

          # @see Onlyfans::Models::StatisticGetOverviewResponse::Data::Posts#views
          class Views < Onlyfans::Internal::Type::BaseModel
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

        # @see Onlyfans::Models::StatisticGetOverviewResponse::Data#streams
        class Streams < Onlyfans::Internal::Type::BaseModel
          # @!attribute chart_data
          #
          #   @return [Array<Onlyfans::Models::StatisticGetOverviewResponse::Data::Streams::ChartData>, nil]
          optional :chart_data,
                   -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::StatisticGetOverviewResponse::Data::Streams::ChartData] },
                   api_name: :chartData

          # @!attribute count
          #
          #   @return [Onlyfans::Models::StatisticGetOverviewResponse::Data::Streams::Count, nil]
          optional :count, -> { Onlyfans::Models::StatisticGetOverviewResponse::Data::Streams::Count }

          # @!attribute earnings
          #
          #   @return [Onlyfans::Models::StatisticGetOverviewResponse::Data::Streams::Earnings, nil]
          optional :earnings, -> { Onlyfans::Models::StatisticGetOverviewResponse::Data::Streams::Earnings }

          # @!attribute has_statistic
          #
          #   @return [Boolean, nil]
          optional :has_statistic, Onlyfans::Internal::Type::Boolean, api_name: :hasStatistic

          # @!attribute views
          #
          #   @return [Onlyfans::Models::StatisticGetOverviewResponse::Data::Streams::Views, nil]
          optional :views, -> { Onlyfans::Models::StatisticGetOverviewResponse::Data::Streams::Views }

          # @!method initialize(chart_data: nil, count: nil, earnings: nil, has_statistic: nil, views: nil)
          #   @param chart_data [Array<Onlyfans::Models::StatisticGetOverviewResponse::Data::Streams::ChartData>]
          #   @param count [Onlyfans::Models::StatisticGetOverviewResponse::Data::Streams::Count]
          #   @param earnings [Onlyfans::Models::StatisticGetOverviewResponse::Data::Streams::Earnings]
          #   @param has_statistic [Boolean]
          #   @param views [Onlyfans::Models::StatisticGetOverviewResponse::Data::Streams::Views]

          class ChartData < Onlyfans::Internal::Type::BaseModel
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

          # @see Onlyfans::Models::StatisticGetOverviewResponse::Data::Streams#count
          class Count < Onlyfans::Internal::Type::BaseModel
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

          # @see Onlyfans::Models::StatisticGetOverviewResponse::Data::Streams#earnings
          class Earnings < Onlyfans::Internal::Type::BaseModel
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

          # @see Onlyfans::Models::StatisticGetOverviewResponse::Data::Streams#views
          class Views < Onlyfans::Internal::Type::BaseModel
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

        # @see Onlyfans::Models::StatisticGetOverviewResponse::Data#visitors
        class Visitors < Onlyfans::Internal::Type::BaseModel
          # @!attribute chart_data
          #
          #   @return [Array<Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors::ChartData>, nil]
          optional :chart_data,
                   -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors::ChartData] },
                   api_name: :chartData

          # @!attribute earnings
          #
          #   @return [Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors::Earnings, nil]
          optional :earnings, -> { Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors::Earnings }

          # @!attribute has_statistic
          #
          #   @return [Boolean, nil]
          optional :has_statistic, Onlyfans::Internal::Type::Boolean, api_name: :hasStatistic

          # @!attribute subscriptions
          #
          #   @return [Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions, nil]
          optional :subscriptions,
                   -> { Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions }

          # @!attribute visitors
          #
          #   @return [Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors::Visitors, nil]
          optional :visitors, -> { Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors::Visitors }

          # @!method initialize(chart_data: nil, earnings: nil, has_statistic: nil, subscriptions: nil, visitors: nil)
          #   @param chart_data [Array<Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors::ChartData>]
          #   @param earnings [Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors::Earnings]
          #   @param has_statistic [Boolean]
          #   @param subscriptions [Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions]
          #   @param visitors [Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors::Visitors]

          class ChartData < Onlyfans::Internal::Type::BaseModel
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

          # @see Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors#earnings
          class Earnings < Onlyfans::Internal::Type::BaseModel
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

          # @see Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors#subscriptions
          class Subscriptions < Onlyfans::Internal::Type::BaseModel
            # @!attribute new
            #
            #   @return [Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions::New, nil]
            optional :new, -> { Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions::New }

            # @!attribute renew
            #
            #   @return [Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions::Renew, nil]
            optional :renew,
                     -> { Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions::Renew }

            # @!method initialize(new: nil, renew: nil)
            #   @param new [Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions::New]
            #   @param renew [Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions::Renew]

            # @see Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions#new
            class New < Onlyfans::Internal::Type::BaseModel
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

            # @see Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors::Subscriptions#renew
            class Renew < Onlyfans::Internal::Type::BaseModel
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

          # @see Onlyfans::Models::StatisticGetOverviewResponse::Data::Visitors#visitors
          class Visitors < Onlyfans::Internal::Type::BaseModel
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
