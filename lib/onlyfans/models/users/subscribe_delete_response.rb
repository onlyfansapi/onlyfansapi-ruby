# frozen_string_literal: true

module Onlyfans
  module Models
    module Users
      # @see Onlyfans::Resources::Users::Subscribe#delete
      class SubscribeDeleteResponse < Onlyfans::Internal::Type::BaseModel
        # @!attribute _meta
        #
        #   @return [Onlyfans::Models::Users::SubscribeDeleteResponse::Meta, nil]
        optional :_meta, -> { Onlyfans::Models::Users::SubscribeDeleteResponse::Meta }

        # @!attribute data
        #
        #   @return [Onlyfans::Models::Users::SubscribeDeleteResponse::Data, nil]
        optional :data, -> { Onlyfans::Models::Users::SubscribeDeleteResponse::Data }

        # @!method initialize(_meta: nil, data: nil)
        #   @param _meta [Onlyfans::Models::Users::SubscribeDeleteResponse::Meta]
        #   @param data [Onlyfans::Models::Users::SubscribeDeleteResponse::Data]

        # @see Onlyfans::Models::Users::SubscribeDeleteResponse#_meta
        class Meta < Onlyfans::Internal::Type::BaseModel
          # @!attribute _cache
          #
          #   @return [Onlyfans::Models::Users::SubscribeDeleteResponse::Meta::Cache, nil]
          optional :_cache, -> { Onlyfans::Models::Users::SubscribeDeleteResponse::Meta::Cache }

          # @!attribute _credits
          #
          #   @return [Onlyfans::Models::Users::SubscribeDeleteResponse::Meta::Credits, nil]
          optional :_credits, -> { Onlyfans::Models::Users::SubscribeDeleteResponse::Meta::Credits }

          # @!method initialize(_cache: nil, _credits: nil)
          #   @param _cache [Onlyfans::Models::Users::SubscribeDeleteResponse::Meta::Cache]
          #   @param _credits [Onlyfans::Models::Users::SubscribeDeleteResponse::Meta::Credits]

          # @see Onlyfans::Models::Users::SubscribeDeleteResponse::Meta#_cache
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

          # @see Onlyfans::Models::Users::SubscribeDeleteResponse::Meta#_credits
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
        end

        # @see Onlyfans::Models::Users::SubscribeDeleteResponse#data
        class Data < Onlyfans::Internal::Type::BaseModel
          # @!attribute message
          #
          #   @return [String, nil]
          optional :message, String

          # @!attribute success
          #
          #   @return [Boolean, nil]
          optional :success, Onlyfans::Internal::Type::Boolean

          # @!method initialize(message: nil, success: nil)
          #   @param message [String]
          #   @param success [Boolean]
        end
      end
    end
  end
end
