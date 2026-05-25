# frozen_string_literal: true

module Onlyfans
  module Models
    module Stories
      # @see Onlyfans::Resources::Stories::Highlights#update
      class HighlightUpdateResponse < Onlyfans::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfans::Models::Stories::HighlightUpdateResponse::Meta, nil]
        optional :_meta, -> { Onlyfans::Models::Stories::HighlightUpdateResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfans::Models::Stories::HighlightUpdateResponse::Data, nil]
        optional :data, -> { Onlyfans::Models::Stories::HighlightUpdateResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfans::Models::Stories::HighlightUpdateResponse::Meta]
        #   @param data [Onlyfans::Models::Stories::HighlightUpdateResponse::Data]

        # @see Onlyfans::Models::Stories::HighlightUpdateResponse#_meta
        class Meta < Onlyfans::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::RateLimits, nil]
          optional :_rate_limits, -> { Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::Cache]
          #   @param _credits [Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfans::Models::Stories::HighlightUpdateResponse::Meta::RateLimits]

          # @see Onlyfans::Models::Stories::HighlightUpdateResponse::Meta#_cache
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

          # @see Onlyfans::Models::Stories::HighlightUpdateResponse::Meta#_credits
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

          # @see Onlyfans::Models::Stories::HighlightUpdateResponse::Meta#_rate_limits
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

        # @see Onlyfans::Models::Stories::HighlightUpdateResponse#data
        class Data < Onlyfans::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute cover
          #
          #   @return [String, nil]
          optional :cover, String

          # @!attribute cover_story_id
          #
          #   @return [Integer, nil]
          optional :cover_story_id, Integer, api_name: :coverStoryId

          # @!attribute created_at
          #
          #   @return [String, nil]
          optional :created_at, String, api_name: :createdAt

          # @!attribute stories_count
          #
          #   @return [Integer, nil]
          optional :stories_count, Integer, api_name: :storiesCount

          # @!attribute title
          #
          #   @return [String, nil]
          optional :title, String

          # @!attribute user_id
          #
          #   @return [Integer, nil]
          optional :user_id, Integer, api_name: :userId

          # @!method initialize(id: nil, cover: nil, cover_story_id: nil, created_at: nil, stories_count: nil, title: nil, user_id: nil)
          #   @param id [Integer]
          #   @param cover [String]
          #   @param cover_story_id [Integer]
          #   @param created_at [String]
          #   @param stories_count [Integer]
          #   @param title [String]
          #   @param user_id [Integer]
        end
      end
    end
  end
end
