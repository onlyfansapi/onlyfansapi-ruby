# frozen_string_literal: true

module Onlyfans
  module Models
    module Statistics
      # @see Onlyfans::Resources::Statistics::Statements#get_earnings
      class StatementGetEarningsResponse < Onlyfans::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfans::Models::Statistics::StatementGetEarningsResponse::Meta, nil]
        optional :_meta, -> { Onlyfans::Models::Statistics::StatementGetEarningsResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfans::Models::Statistics::StatementGetEarningsResponse::Data, nil]
        optional :data, -> { Onlyfans::Models::Statistics::StatementGetEarningsResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfans::Models::Statistics::StatementGetEarningsResponse::Meta]
        #   @param data [Onlyfans::Models::Statistics::StatementGetEarningsResponse::Data]

        # @see Onlyfans::Models::Statistics::StatementGetEarningsResponse#_meta
        class Meta < Onlyfans::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfans::Models::Statistics::StatementGetEarningsResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfans::Models::Statistics::StatementGetEarningsResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfans::Models::Statistics::StatementGetEarningsResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfans::Models::Statistics::StatementGetEarningsResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfans::Models::Statistics::StatementGetEarningsResponse::Meta::RateLimits, nil]
          optional :_rate_limits,
                   -> { Onlyfans::Models::Statistics::StatementGetEarningsResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfans::Models::Statistics::StatementGetEarningsResponse::Meta::Cache]
          #   @param _credits [Onlyfans::Models::Statistics::StatementGetEarningsResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfans::Models::Statistics::StatementGetEarningsResponse::Meta::RateLimits]

          # @see Onlyfans::Models::Statistics::StatementGetEarningsResponse::Meta#_cache
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

          # @see Onlyfans::Models::Statistics::StatementGetEarningsResponse::Meta#_credits
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

          # @see Onlyfans::Models::Statistics::StatementGetEarningsResponse::Meta#_rate_limits
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

        # @see Onlyfans::Models::Statistics::StatementGetEarningsResponse#data
        class Data < Onlyfans::Internal::Type::BaseModel
          # @!attribute total
          #
          #   @return [Onlyfans::Models::Statistics::StatementGetEarningsResponse::Data::Total, nil]
          optional :total, -> { Onlyfans::Models::Statistics::StatementGetEarningsResponse::Data::Total }

          # @!method initialize(total: nil)
          #   @param total [Onlyfans::Models::Statistics::StatementGetEarningsResponse::Data::Total]

          # @see Onlyfans::Models::Statistics::StatementGetEarningsResponse::Data#total
          class Total < Onlyfans::Internal::Type::BaseModel
            # @!attribute chart_amount
            #
            #   @return [Array<Onlyfans::Models::Statistics::StatementGetEarningsResponse::Data::Total::ChartAmount>, nil]
            optional :chart_amount,
                     -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Statistics::StatementGetEarningsResponse::Data::Total::ChartAmount] },
                     api_name: :chartAmount

            # @!attribute chart_count
            #
            #   @return [Array<Onlyfans::Models::Statistics::StatementGetEarningsResponse::Data::Total::ChartCount>, nil]
            optional :chart_count,
                     -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::Statistics::StatementGetEarningsResponse::Data::Total::ChartCount] },
                     api_name: :chartCount

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

            # @!method initialize(chart_amount: nil, chart_count: nil, delta: nil, gross: nil, total: nil)
            #   @param chart_amount [Array<Onlyfans::Models::Statistics::StatementGetEarningsResponse::Data::Total::ChartAmount>]
            #   @param chart_count [Array<Onlyfans::Models::Statistics::StatementGetEarningsResponse::Data::Total::ChartCount>]
            #   @param delta [Float]
            #   @param gross [Float]
            #   @param total [Float]

            class ChartAmount < Onlyfans::Internal::Type::BaseModel
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

            class ChartCount < Onlyfans::Internal::Type::BaseModel
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
        end
      end
    end
  end
end
