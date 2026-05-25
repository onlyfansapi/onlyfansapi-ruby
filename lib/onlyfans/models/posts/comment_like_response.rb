# frozen_string_literal: true

module Onlyfans
  module Models
    module Posts
      # @see Onlyfans::Resources::Posts::Comments#like
      class CommentLikeResponse < Onlyfans::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfans::Models::Posts::CommentLikeResponse::Meta, nil]
        optional :_meta, -> { Onlyfans::Models::Posts::CommentLikeResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfans::Models::Posts::CommentLikeResponse::Data, nil]
        optional :data, -> { Onlyfans::Models::Posts::CommentLikeResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfans::Models::Posts::CommentLikeResponse::Meta]
        #   @param data [Onlyfans::Models::Posts::CommentLikeResponse::Data]

        # @see Onlyfans::Models::Posts::CommentLikeResponse#_meta
        class Meta < Onlyfans::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfans::Models::Posts::CommentLikeResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfans::Models::Posts::CommentLikeResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfans::Models::Posts::CommentLikeResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfans::Models::Posts::CommentLikeResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfans::Models::Posts::CommentLikeResponse::Meta::RateLimits, nil]
          optional :_rate_limits, -> { Onlyfans::Models::Posts::CommentLikeResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfans::Models::Posts::CommentLikeResponse::Meta::Cache]
          #   @param _credits [Onlyfans::Models::Posts::CommentLikeResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfans::Models::Posts::CommentLikeResponse::Meta::RateLimits]

          # @see Onlyfans::Models::Posts::CommentLikeResponse::Meta#_cache
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

          # @see Onlyfans::Models::Posts::CommentLikeResponse::Meta#_credits
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

          # @see Onlyfans::Models::Posts::CommentLikeResponse::Meta#_rate_limits
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

        # @see Onlyfans::Models::Posts::CommentLikeResponse#data
        class Data < Onlyfans::Internal::Type::BaseModel
          # @!attribute is_liked
          #
          #   @return [Boolean, nil]
          optional :is_liked, Onlyfans::Internal::Type::Boolean, api_name: :isLiked

          # @!attribute likes_count
          #
          #   @return [Integer, nil]
          optional :likes_count, Integer, api_name: :likesCount

          # @!attribute success
          #
          #   @return [Boolean, nil]
          optional :success, Onlyfans::Internal::Type::Boolean

          # @!method initialize(is_liked: nil, likes_count: nil, success: nil)
          #   @param is_liked [Boolean]
          #   @param likes_count [Integer]
          #   @param success [Boolean]
        end
      end
    end
  end
end
