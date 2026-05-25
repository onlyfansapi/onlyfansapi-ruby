# frozen_string_literal: true

module Onlyfans
  module Models
    module Stories
      # @see Onlyfans::Resources::Stories::Highlights#delete
      class HighlightDeleteResponse < Onlyfans::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfans::Models::Stories::HighlightDeleteResponse::Meta, nil]
        optional :_meta, -> { Onlyfans::Models::Stories::HighlightDeleteResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfans::Models::Stories::HighlightDeleteResponse::Data, nil]
        optional :data, -> { Onlyfans::Models::Stories::HighlightDeleteResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfans::Models::Stories::HighlightDeleteResponse::Meta]
        #   @param data [Onlyfans::Models::Stories::HighlightDeleteResponse::Data]

        # @see Onlyfans::Models::Stories::HighlightDeleteResponse#_meta
        class Meta < Onlyfans::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfans::Models::Stories::HighlightDeleteResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfans::Models::Stories::HighlightDeleteResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfans::Models::Stories::HighlightDeleteResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfans::Models::Stories::HighlightDeleteResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfans::Models::Stories::HighlightDeleteResponse::Meta::RateLimits, nil]
          optional :_rate_limits, -> { Onlyfans::Models::Stories::HighlightDeleteResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfans::Models::Stories::HighlightDeleteResponse::Meta::Cache]
          #   @param _credits [Onlyfans::Models::Stories::HighlightDeleteResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfans::Models::Stories::HighlightDeleteResponse::Meta::RateLimits]

          # @see Onlyfans::Models::Stories::HighlightDeleteResponse::Meta#_cache
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

          # @see Onlyfans::Models::Stories::HighlightDeleteResponse::Meta#_credits
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

          # @see Onlyfans::Models::Stories::HighlightDeleteResponse::Meta#_rate_limits
          class RateLimits < Onlyfans::Internal::Type::BaseModel
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

        # @see Onlyfans::Models::Stories::HighlightDeleteResponse#data
        class Data < Onlyfans::Internal::Type::BaseModel
          # @!attribute success
          #
          #   @return [Boolean, nil]
          optional :success, Onlyfans::Internal::Type::Boolean

          # @!method initialize(success: nil)
          #   @param success [Boolean]
        end
      end
    end
  end
end
