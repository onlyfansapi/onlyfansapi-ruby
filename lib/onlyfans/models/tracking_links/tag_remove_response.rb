# frozen_string_literal: true

module Onlyfans
  module Models
    module TrackingLinks
      # @see Onlyfans::Resources::TrackingLinks::Tags#remove
      class TagRemoveResponse < Onlyfans::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfans::Models::TrackingLinks::TagRemoveResponse::Meta, nil]
        optional :_meta, -> { Onlyfans::Models::TrackingLinks::TagRemoveResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfans::Models::TrackingLinks::TagRemoveResponse::Data, nil]
        optional :data, -> { Onlyfans::Models::TrackingLinks::TagRemoveResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfans::Models::TrackingLinks::TagRemoveResponse::Meta]
        #   @param data [Onlyfans::Models::TrackingLinks::TagRemoveResponse::Data]

        # @see Onlyfans::Models::TrackingLinks::TagRemoveResponse#_meta
        class Meta < Onlyfans::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfans::Models::TrackingLinks::TagRemoveResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfans::Models::TrackingLinks::TagRemoveResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfans::Models::TrackingLinks::TagRemoveResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfans::Models::TrackingLinks::TagRemoveResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfans::Models::TrackingLinks::TagRemoveResponse::Meta::RateLimits, nil]
          optional :_rate_limits, -> { Onlyfans::Models::TrackingLinks::TagRemoveResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfans::Models::TrackingLinks::TagRemoveResponse::Meta::Cache]
          #   @param _credits [Onlyfans::Models::TrackingLinks::TagRemoveResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfans::Models::TrackingLinks::TagRemoveResponse::Meta::RateLimits]

          # @see Onlyfans::Models::TrackingLinks::TagRemoveResponse::Meta#_cache
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

          # @see Onlyfans::Models::TrackingLinks::TagRemoveResponse::Meta#_credits
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

          # @see Onlyfans::Models::TrackingLinks::TagRemoveResponse::Meta#_rate_limits
          class RateLimits < Onlyfans::Internal::Type::BaseModel
            # @!attribute limit_day
            #
            #   @return [String, nil]
            optional :limit_day, String, nil?: true

            # @!attribute limit_minute
            #
            #   @return [Integer, nil]
            optional :limit_minute, Integer

            # @!attribute remaining_day
            #
            #   @return [String, nil]
            optional :remaining_day, String, nil?: true

            # @!attribute remaining_minute
            #
            #   @return [Integer, nil]
            optional :remaining_minute, Integer

            # @!method initialize(limit_day: nil, limit_minute: nil, remaining_day: nil, remaining_minute: nil)
            #   @param limit_day [String, nil]
            #   @param limit_minute [Integer]
            #   @param remaining_day [String, nil]
            #   @param remaining_minute [Integer]
          end
        end

        # @see Onlyfans::Models::TrackingLinks::TagRemoveResponse#data
        class Data < Onlyfans::Internal::Type::BaseModel
          # @!attribute tags
          #
          #   @return [Array<String>, nil]
          optional :tags, Onlyfans::Internal::Type::ArrayOf[String]

          # @!method initialize(tags: nil)
          #   @param tags [Array<String>]
        end
      end
    end
  end
end
