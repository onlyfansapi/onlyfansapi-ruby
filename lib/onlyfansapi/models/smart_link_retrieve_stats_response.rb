# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::SmartLinks#retrieve_stats
    class SmartLinkRetrieveStatsResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Meta]
      #   @param data [Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Data]

      # @see Onlyfansapi::Models::SmartLinkRetrieveStatsResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Meta::Credits }

        # @!method initialize(_cache: nil, _credits: nil)
        #   @param _cache [Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Meta::Credits]

        # @see Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Meta#_credits
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
      end

      # @see Onlyfansapi::Models::SmartLinkRetrieveStatsResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute daily_metrics
        #
        #   @return [Array<Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Data::DailyMetric>, nil]
        optional :daily_metrics,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Data::DailyMetric] }

        # @!attribute monthly_metrics
        #
        #   @return [Array<Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Data::MonthlyMetric>, nil]
        optional :monthly_metrics,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Data::MonthlyMetric] }

        # @!attribute summary
        #
        #   @return [Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Data::Summary, nil]
        optional :summary, -> { Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Data::Summary }

        # @!method initialize(daily_metrics: nil, monthly_metrics: nil, summary: nil)
        #   @param daily_metrics [Array<Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Data::DailyMetric>]
        #   @param monthly_metrics [Array<Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Data::MonthlyMetric>]
        #   @param summary [Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Data::Summary]

        class DailyMetric < Onlyfansapi::Internal::Type::BaseModel
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

        class MonthlyMetric < Onlyfansapi::Internal::Type::BaseModel
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

        # @see Onlyfansapi::Models::SmartLinkRetrieveStatsResponse::Data#summary
        class Summary < Onlyfansapi::Internal::Type::BaseModel
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
