# frozen_string_literal: true

module Onlyfans
  module Models
    module Chats
      # @see Onlyfans::Resources::Chats::Messages#pin
      class MessagePinResponse < Onlyfans::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfans::Models::Chats::MessagePinResponse::Meta, nil]
        optional :_meta, -> { Onlyfans::Models::Chats::MessagePinResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfans::Models::Chats::MessagePinResponse::Data, nil]
        optional :data, -> { Onlyfans::Models::Chats::MessagePinResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfans::Models::Chats::MessagePinResponse::Meta]
        #   @param data [Onlyfans::Models::Chats::MessagePinResponse::Data]

        # @see Onlyfans::Models::Chats::MessagePinResponse#_meta
        class Meta < Onlyfans::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfans::Models::Chats::MessagePinResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfans::Models::Chats::MessagePinResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfans::Models::Chats::MessagePinResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfans::Models::Chats::MessagePinResponse::Meta::Credits }

          # @!attribute _rate_limits
          #
          #   @return [Onlyfans::Models::Chats::MessagePinResponse::Meta::RateLimits, nil]
          optional :_rate_limits, -> { Onlyfans::Models::Chats::MessagePinResponse::Meta::RateLimits }

          # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
          #   @param _cache [Onlyfans::Models::Chats::MessagePinResponse::Meta::Cache]
          #   @param _credits [Onlyfans::Models::Chats::MessagePinResponse::Meta::Credits]
          #   @param _rate_limits [Onlyfans::Models::Chats::MessagePinResponse::Meta::RateLimits]

          # @see Onlyfans::Models::Chats::MessagePinResponse::Meta#_cache
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

          # @see Onlyfans::Models::Chats::MessagePinResponse::Meta#_credits
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

          # @see Onlyfans::Models::Chats::MessagePinResponse::Meta#_rate_limits
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

        # @see Onlyfans::Models::Chats::MessagePinResponse#data
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
