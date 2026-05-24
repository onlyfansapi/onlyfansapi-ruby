# frozen_string_literal: true

module Onlyfansapi
  module Models
    module SharedTrackingLinks
      # @see Onlyfansapi::Resources::SharedTrackingLinks::Tags#list
      class TagListResponse < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfansapi::Models::SharedTrackingLinks::TagListResponse::Meta, nil]
        optional :_meta, -> { Onlyfansapi::Models::SharedTrackingLinks::TagListResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfansapi::Models::SharedTrackingLinks::TagListResponse::Data, nil]
        optional :data, -> { Onlyfansapi::Models::SharedTrackingLinks::TagListResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfansapi::Models::SharedTrackingLinks::TagListResponse::Meta]
        #   @param data [Onlyfansapi::Models::SharedTrackingLinks::TagListResponse::Data]

        # @see Onlyfansapi::Models::SharedTrackingLinks::TagListResponse#_meta
        class Meta < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfansapi::Models::SharedTrackingLinks::TagListResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfansapi::Models::SharedTrackingLinks::TagListResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfansapi::Models::SharedTrackingLinks::TagListResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfansapi::Models::SharedTrackingLinks::TagListResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfansapi::Models::SharedTrackingLinks::TagListResponse::Meta::RateLimits, nil]
          optional :_rate_limits, -> { Onlyfansapi::Models::SharedTrackingLinks::TagListResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfansapi::Models::SharedTrackingLinks::TagListResponse::Meta::Cache]
          #   @param _credits [Onlyfansapi::Models::SharedTrackingLinks::TagListResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfansapi::Models::SharedTrackingLinks::TagListResponse::Meta::RateLimits]

          # @see Onlyfansapi::Models::SharedTrackingLinks::TagListResponse::Meta#_cache
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

          # @see Onlyfansapi::Models::SharedTrackingLinks::TagListResponse::Meta#_credits
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

          # @see Onlyfansapi::Models::SharedTrackingLinks::TagListResponse::Meta#_rate_limits
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

        # @see Onlyfansapi::Models::SharedTrackingLinks::TagListResponse#data
        class Data < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute tags
          #
          #   @return [Array<String>, nil]
          optional :tags, Onlyfansapi::Internal::Type::ArrayOf[String]

          # @!method initialize(tags: nil)
          #   @param tags [Array<String>]
        end
      end
    end
  end
end
