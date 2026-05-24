# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Chats
      # @see Onlyfansapi::Resources::Chats::Messages#search
      class MessageSearchResponse < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfansapi::Models::Chats::MessageSearchResponse::Meta, nil]
        optional :_meta, -> { Onlyfansapi::Models::Chats::MessageSearchResponse::Meta }

        # @!attribute data
        #
        #   @return [Array<Integer>, nil]
        optional :data, Onlyfansapi::Internal::Type::ArrayOf[Integer]

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfansapi::Models::Chats::MessageSearchResponse::Meta]
        #   @param data [Array<Integer>]

        # @see Onlyfansapi::Models::Chats::MessageSearchResponse#_meta
        class Meta < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfansapi::Models::Chats::MessageSearchResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfansapi::Models::Chats::MessageSearchResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfansapi::Models::Chats::MessageSearchResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfansapi::Models::Chats::MessageSearchResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfansapi::Models::Chats::MessageSearchResponse::Meta::RateLimits, nil]
          optional :_rate_limits, -> { Onlyfansapi::Models::Chats::MessageSearchResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfansapi::Models::Chats::MessageSearchResponse::Meta::Cache]
          #   @param _credits [Onlyfansapi::Models::Chats::MessageSearchResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfansapi::Models::Chats::MessageSearchResponse::Meta::RateLimits]

          # @see Onlyfansapi::Models::Chats::MessageSearchResponse::Meta#_cache
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

          # @see Onlyfansapi::Models::Chats::MessageSearchResponse::Meta#_credits
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

          # @see Onlyfansapi::Models::Chats::MessageSearchResponse::Meta#_rate_limits
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
      end
    end
  end
end
