# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Posts
      # @see Onlyfansapi::Resources::Posts::Comments#pin
      class CommentPinResponse < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfansapi::Models::Posts::CommentPinResponse::Meta, nil]
        optional :_meta, -> { Onlyfansapi::Models::Posts::CommentPinResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfansapi::Models::Posts::CommentPinResponse::Data, nil]
        optional :data, -> { Onlyfansapi::Models::Posts::CommentPinResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfansapi::Models::Posts::CommentPinResponse::Meta]
        #   @param data [Onlyfansapi::Models::Posts::CommentPinResponse::Data]

        # @see Onlyfansapi::Models::Posts::CommentPinResponse#_meta
        class Meta < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfansapi::Models::Posts::CommentPinResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfansapi::Models::Posts::CommentPinResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfansapi::Models::Posts::CommentPinResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfansapi::Models::Posts::CommentPinResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfansapi::Models::Posts::CommentPinResponse::Meta::RateLimits, nil]
          optional :_rate_limits, -> { Onlyfansapi::Models::Posts::CommentPinResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfansapi::Models::Posts::CommentPinResponse::Meta::Cache]
          #   @param _credits [Onlyfansapi::Models::Posts::CommentPinResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfansapi::Models::Posts::CommentPinResponse::Meta::RateLimits]

          # @see Onlyfansapi::Models::Posts::CommentPinResponse::Meta#_cache
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

          # @see Onlyfansapi::Models::Posts::CommentPinResponse::Meta#_credits
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

          # @see Onlyfansapi::Models::Posts::CommentPinResponse::Meta#_rate_limits
          class RateLimits < Onlyfansapi::Internal::Type::BaseModel
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

        # @see Onlyfansapi::Models::Posts::CommentPinResponse#data
        class Data < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute success
          #
          #   @return [Boolean, nil]
          optional :success, Onlyfansapi::Internal::Type::Boolean

          # @!method initialize(success: nil)
          #   @param success [Boolean]
        end
      end
    end
  end
end
