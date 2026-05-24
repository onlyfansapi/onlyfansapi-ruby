# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Engagement
      module Messages
        # @see Onlyfansapi::Resources::Engagement::Messages::DirectMessages#chart
        class DirectMessageChartResponse < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute _meta
          #
          #   @return [Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Meta, nil]
          optional :_meta, -> { Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Meta }

          # @!attribute data
          #
          #   @return [Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Data, nil]
          optional :data, -> { Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Data }

          # @!method initialize(_meta: nil, data: nil)
          #   @param _meta [Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Meta]
          #   @param data [Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Data]

          # @see Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse#_meta
          class Meta < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute _cache
            #
            #   @return [Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Meta::Cache, nil]
            optional :_cache,
                     -> { Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Meta::Cache }

            # @!attribute _credits
            #
            #   @return [Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Meta::Credits, nil]
            optional :_credits,
                     -> { Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Meta::Credits }

            # @!attribute _rate_limits
            #
            #   @return [Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Meta::RateLimits, nil]
            optional :_rate_limits,
                     -> { Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Meta::RateLimits }

            # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
            #   @param _cache [Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Meta::Cache]
            #   @param _credits [Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Meta::Credits]
            #   @param _rate_limits [Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Meta::RateLimits]

            # @see Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Meta#_cache
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

            # @see Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Meta#_credits
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

            # @see Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Meta#_rate_limits
            class RateLimits < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute limit_day
              #
              #   @return [String, nil]
              optional :limit_day, String, nil?: true

              # @!attribute limit_minute
              #
              #   @return [Integer, nil]
              optional :limit_minute, Integer

              # @!attribute notice
              #
              #   @return [String, nil]
              optional :notice, String

              # @!attribute remaining_day
              #
              #   @return [String, nil]
              optional :remaining_day, String, nil?: true

              # @!attribute remaining_minute
              #
              #   @return [Integer, nil]
              optional :remaining_minute, Integer

              # @!method initialize(limit_day: nil, limit_minute: nil, notice: nil, remaining_day: nil, remaining_minute: nil)
              #   @param limit_day [String, nil]
              #   @param limit_minute [Integer]
              #   @param notice [String]
              #   @param remaining_day [String, nil]
              #   @param remaining_minute [Integer]
            end
          end

          # @see Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse#data
          class Data < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute direct_messages
            #
            #   @return [Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Data::DirectMessages, nil]
            optional :direct_messages,
                     -> { Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Data::DirectMessages }

            # @!attribute direct_messages_purchases
            #
            #   @return [Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Data::DirectMessagesPurchases, nil]
            optional :direct_messages_purchases,
                     -> { Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Data::DirectMessagesPurchases }

            # @!method initialize(direct_messages: nil, direct_messages_purchases: nil)
            #   @param direct_messages [Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Data::DirectMessages]
            #   @param direct_messages_purchases [Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Data::DirectMessagesPurchases]

            # @see Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Data#direct_messages
            class DirectMessages < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute chart
              #
              #   @return [Array<Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Data::DirectMessages::Chart>, nil]
              optional :chart,
                       -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Data::DirectMessages::Chart] }

              # @!attribute delta
              #
              #   @return [Integer, nil]
              optional :delta, Integer

              # @!attribute total
              #
              #   @return [Integer, nil]
              optional :total, Integer

              # @!method initialize(chart: nil, delta: nil, total: nil)
              #   @param chart [Array<Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Data::DirectMessages::Chart>]
              #   @param delta [Integer]
              #   @param total [Integer]

              class Chart < Onlyfansapi::Internal::Type::BaseModel
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
            end

            # @see Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Data#direct_messages_purchases
            class DirectMessagesPurchases < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute chart
              #
              #   @return [Array<Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Data::DirectMessagesPurchases::Chart>, nil]
              optional :chart,
                       -> do
                         Onlyfansapi::Internal::Type::ArrayOf[
                           Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Data::DirectMessagesPurchases::Chart
                         ]
                       end

              # @!attribute delta
              #
              #   @return [Float, nil]
              optional :delta, Float

              # @!attribute total
              #
              #   @return [Float, nil]
              optional :total, Float

              # @!method initialize(chart: nil, delta: nil, total: nil)
              #   @param chart [Array<Onlyfansapi::Models::Engagement::Messages::DirectMessageChartResponse::Data::DirectMessagesPurchases::Chart>]
              #   @param delta [Float]
              #   @param total [Float]

              class Chart < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute count
                #
                #   @return [Float, nil]
                optional :count, Float

                # @!attribute date
                #
                #   @return [String, nil]
                optional :date, String

                # @!method initialize(count: nil, date: nil)
                #   @param count [Float]
                #   @param date [String]
              end
            end
          end
        end
      end
    end
  end
end
