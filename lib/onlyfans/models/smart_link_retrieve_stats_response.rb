# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::SmartLinks#retrieve_stats
    class SmartLinkRetrieveStatsResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta]
      #   @param data [Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data]

      # @see Onlyfans::Models::SmartLinkRetrieveStatsResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta::Credits }

        # @!method initialize(_cache: nil, _credits: nil)
        #   @param _cache [Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta::Credits]

        # @see Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta#_cache
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

        # @see Onlyfans::Models::SmartLinkRetrieveStatsResponse::Meta#_credits
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
      end

      # @see Onlyfans::Models::SmartLinkRetrieveStatsResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute daily_metrics
        #
        #   @return [Array<Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::DailyMetric>, nil]
        optional :daily_metrics,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::DailyMetric] }

        # @!attribute monthly_metrics
        #
        #   @return [Array<Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::MonthlyMetric>, nil]
        optional :monthly_metrics,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::MonthlyMetric] }

        # @!attribute summary
        #
        #   @return [Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::Summary, nil]
        optional :summary, -> { Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::Summary }

        # @!method initialize(daily_metrics: nil, monthly_metrics: nil, summary: nil)
        #   @param daily_metrics [Array<Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::DailyMetric>]
        #   @param monthly_metrics [Array<Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::MonthlyMetric>]
        #   @param summary [Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data::Summary]

        class DailyMetric < Onlyfans::Internal::Type::BaseModel
          # @!attribute clicks
          #
          #   @return [Integer, nil]
          optional :clicks, Integer

          # @!attribute revenue
          #
          #   @return [Integer, nil]
          optional :revenue, Integer

          # @!attribute spenders
          #
          #   @return [Integer, nil]
          optional :spenders, Integer

          # @!attribute subs
          #
          #   @return [Integer, nil]
          optional :subs, Integer

          # @!attribute timestamp
          #
          #   @return [String, nil]
          optional :timestamp, String

          # @!method initialize(clicks: nil, revenue: nil, spenders: nil, subs: nil, timestamp: nil)
          #   @param clicks [Integer]
          #   @param revenue [Integer]
          #   @param spenders [Integer]
          #   @param subs [Integer]
          #   @param timestamp [String]
        end

        class MonthlyMetric < Onlyfans::Internal::Type::BaseModel
          # @!attribute clicks
          #
          #   @return [Integer, nil]
          optional :clicks, Integer

          # @!attribute revenue
          #
          #   @return [Integer, nil]
          optional :revenue, Integer

          # @!attribute spenders
          #
          #   @return [Integer, nil]
          optional :spenders, Integer

          # @!attribute subs
          #
          #   @return [Integer, nil]
          optional :subs, Integer

          # @!attribute timestamp
          #
          #   @return [String, nil]
          optional :timestamp, String

          # @!method initialize(clicks: nil, revenue: nil, spenders: nil, subs: nil, timestamp: nil)
          #   @param clicks [Integer]
          #   @param revenue [Integer]
          #   @param spenders [Integer]
          #   @param subs [Integer]
          #   @param timestamp [String]
        end

        # @see Onlyfans::Models::SmartLinkRetrieveStatsResponse::Data#summary
        class Summary < Onlyfans::Internal::Type::BaseModel
          # @!attribute clicks_total
          #
          #   @return [Integer, nil]
          optional :clicks_total, Integer

          # @!attribute revenue_total
          #
          #   @return [Integer, nil]
          optional :revenue_total, Integer

          # @!attribute spenders_total
          #
          #   @return [Integer, nil]
          optional :spenders_total, Integer

          # @!attribute subs_total
          #
          #   @return [Integer, nil]
          optional :subs_total, Integer

          # @!method initialize(clicks_total: nil, revenue_total: nil, spenders_total: nil, subs_total: nil)
          #   @param clicks_total [Integer]
          #   @param revenue_total [Integer]
          #   @param spenders_total [Integer]
          #   @param subs_total [Integer]
        end
      end
    end
  end
end
