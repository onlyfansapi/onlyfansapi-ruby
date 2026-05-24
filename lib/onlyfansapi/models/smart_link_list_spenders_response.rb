# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::SmartLinks#list_spenders
    class SmartLinkListSpendersResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::SmartLinkListSpendersResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::SmartLinkListSpendersResponse::Meta }

      # @!attribute data
      #
      #   @return [Array<Onlyfansapi::Models::SmartLinkListSpendersResponse::Data>, nil]
      optional :data,
               -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::SmartLinkListSpendersResponse::Data] }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::SmartLinkListSpendersResponse::Meta]
      #   @param data [Array<Onlyfansapi::Models::SmartLinkListSpendersResponse::Data>]

      # @see Onlyfansapi::Models::SmartLinkListSpendersResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::SmartLinkListSpendersResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::SmartLinkListSpendersResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::SmartLinkListSpendersResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::SmartLinkListSpendersResponse::Meta::Credits }

        # @!method initialize(_cache: nil, _credits: nil)
        #   @param _cache [Onlyfansapi::Models::SmartLinkListSpendersResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::SmartLinkListSpendersResponse::Meta::Credits]

        # @see Onlyfansapi::Models::SmartLinkListSpendersResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::SmartLinkListSpendersResponse::Meta#_credits
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

      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute onlyfans_id
        #
        #   @return [String, nil]
        optional :onlyfans_id, String

        # @!attribute revenue
        #
        #   @return [Onlyfansapi::Models::SmartLinkListSpendersResponse::Data::Revenue, nil]
        optional :revenue, -> { Onlyfansapi::Models::SmartLinkListSpendersResponse::Data::Revenue }

        # @!attribute username
        #
        #   @return [String, nil]
        optional :username, String

        # @!method initialize(onlyfans_id: nil, revenue: nil, username: nil)
        #   @param onlyfans_id [String]
        #   @param revenue [Onlyfansapi::Models::SmartLinkListSpendersResponse::Data::Revenue]
        #   @param username [String]

        # @see Onlyfansapi::Models::SmartLinkListSpendersResponse::Data#revenue
        class Revenue < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute calculated_at
          #
          #   @return [String, nil]
          optional :calculated_at, String

          # @!attribute total
          #
          #   @return [Float, nil]
          optional :total, Float

          # @!method initialize(calculated_at: nil, total: nil)
          #   @param calculated_at [String]
          #   @param total [Float]
        end
      end
    end
  end
end
