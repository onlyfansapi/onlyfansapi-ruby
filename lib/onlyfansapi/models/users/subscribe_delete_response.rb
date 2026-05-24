# frozen_string_literal: true

module Onlyfansapi
  module Models
    module Users
      # @see Onlyfansapi::Resources::Users::Subscribe#delete
      class SubscribeDeleteResponse < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfansapi::Models::Users::SubscribeDeleteResponse::Meta, nil]
        optional :_meta, -> { Onlyfansapi::Models::Users::SubscribeDeleteResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfansapi::Models::Users::SubscribeDeleteResponse::Data, nil]
        optional :data, -> { Onlyfansapi::Models::Users::SubscribeDeleteResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfansapi::Models::Users::SubscribeDeleteResponse::Meta]
        #   @param data [Onlyfansapi::Models::Users::SubscribeDeleteResponse::Data]

        # @see Onlyfansapi::Models::Users::SubscribeDeleteResponse#_meta
        class Meta < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfansapi::Models::Users::SubscribeDeleteResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfansapi::Models::Users::SubscribeDeleteResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfansapi::Models::Users::SubscribeDeleteResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfansapi::Models::Users::SubscribeDeleteResponse::Meta::Credits }

          # @!method initialize(_cache: nil, _credits: nil)
          #   @param _cache [Onlyfansapi::Models::Users::SubscribeDeleteResponse::Meta::Cache]
          #   @param _credits [Onlyfansapi::Models::Users::SubscribeDeleteResponse::Meta::Credits]

          # @see Onlyfansapi::Models::Users::SubscribeDeleteResponse::Meta#_cache
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

          # @see Onlyfansapi::Models::Users::SubscribeDeleteResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::Users::SubscribeDeleteResponse#data
        class Data < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute message
          #
          #   @return [String, nil]
          optional :message, String

          # @!attribute success
          #
          #   @return [Boolean, nil]
          optional :success, Onlyfansapi::Internal::Type::Boolean

          # @!method initialize(message: nil, success: nil)
          #   @param message [String]
          #   @param success [Boolean]
        end
      end
    end
  end
end
