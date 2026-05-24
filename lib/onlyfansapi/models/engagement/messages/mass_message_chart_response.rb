# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Engagement
      module Messages
        # @see Onlyfansapi::Resources::Engagement::Messages::MassMessages#chart
        class MassMessageChartResponse < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute _meta
          #
          #   @return [Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Meta, nil]
          optional :_meta, -> { Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Meta }

          # @!attribute data
          #
          #   @return [Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Data, nil]
          optional :data, -> { Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Data }

          # @!method initialize(_meta: nil, data: nil)
          #   @param _meta [Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Meta]
          #   @param data [Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Data]

          # @see Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse#_meta
          class Meta < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute _cache
            #
            #   @return [Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Meta::Cache, nil]
            optional :_cache, -> { Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Meta::Cache }

            # @!attribute _credits
            #
            #   @return [Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Meta::Credits, nil]
            optional :_credits,
                     -> { Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Meta::Credits }

            # @!attribute _rate_limits
            #
            #   @return [Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Meta::RateLimits, nil]
            optional :_rate_limits,
                     -> { Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Meta::RateLimits }

            # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
            #   @param _cache [Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Meta::Cache]
            #   @param _credits [Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Meta::Credits]
            #   @param _rate_limits [Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Meta::RateLimits]

            # @see Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Meta#_cache
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

            # @see Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Meta#_credits
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

            # @see Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Meta#_rate_limits
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

          # @see Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse#data
          class Data < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute group_messages
            #
            #   @return [Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessages, nil]
            optional :group_messages,
                     -> { Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessages }

            # @!attribute group_messages_purchases
            #
            #   @return [Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessagesPurchases, nil]
            optional :group_messages_purchases,
                     -> { Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessagesPurchases }

            # @!method initialize(group_messages: nil, group_messages_purchases: nil)
            #   @param group_messages [Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessages]
            #   @param group_messages_purchases [Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessagesPurchases]

            # @see Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Data#group_messages
            class GroupMessages < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute chart
              #
              #   @return [Array<Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessages::Chart>, nil]
              optional :chart,
                       -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessages::Chart] }

              # @!attribute delta
              #
              #   @return [Float, nil]
              optional :delta, Float

              # @!attribute total
              #
              #   @return [Integer, nil]
              optional :total, Integer

              # @!method initialize(chart: nil, delta: nil, total: nil)
              #   @param chart [Array<Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessages::Chart>]
              #   @param delta [Float]
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

            # @see Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Data#group_messages_purchases
            class GroupMessagesPurchases < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute chart
              #
              #   @return [Array<Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessagesPurchases::Chart>, nil]
              optional :chart,
                       -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessagesPurchases::Chart] }

              # @!attribute delta
              #
              #   @return [Float, nil]
              optional :delta, Float

              # @!attribute total
              #
              #   @return [Integer, nil]
              optional :total, Integer

              # @!method initialize(chart: nil, delta: nil, total: nil)
              #   @param chart [Array<Onlyfansapi::Models::Engagement::Messages::MassMessageChartResponse::Data::GroupMessagesPurchases::Chart>]
              #   @param delta [Float]
              #   @param total [Integer]

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
