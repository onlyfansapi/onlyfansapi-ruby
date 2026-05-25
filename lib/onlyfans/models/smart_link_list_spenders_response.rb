# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::SmartLinks#list_spenders
    class SmartLinkListSpendersResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::SmartLinkListSpendersResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::SmartLinkListSpendersResponse::Meta }

      # @!attribute data
      #
      #   @return [Array<Onlyfans::Models::SmartLinkListSpendersResponse::Data>, nil]
      optional :data,
               -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::SmartLinkListSpendersResponse::Data] }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::SmartLinkListSpendersResponse::Meta]
      #   @param data [Array<Onlyfans::Models::SmartLinkListSpendersResponse::Data>]

      # @see Onlyfans::Models::SmartLinkListSpendersResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::SmartLinkListSpendersResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::SmartLinkListSpendersResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::SmartLinkListSpendersResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::SmartLinkListSpendersResponse::Meta::Credits }

        # @!method initialize(_cache: nil, _credits: nil)
        #   @param _cache [Onlyfans::Models::SmartLinkListSpendersResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::SmartLinkListSpendersResponse::Meta::Credits]

        # @see Onlyfans::Models::SmartLinkListSpendersResponse::Meta#_cache
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

        # @see Onlyfans::Models::SmartLinkListSpendersResponse::Meta#_credits
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

      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute onlyfans_id
        #
        #   @return [String, nil]
        optional :onlyfans_id, String

        # @!attribute revenue
        #
        #   @return [Onlyfans::Models::SmartLinkListSpendersResponse::Data::Revenue, nil]
        optional :revenue, -> { Onlyfans::Models::SmartLinkListSpendersResponse::Data::Revenue }

        # @!attribute username
        #
        #   @return [String, nil]
        optional :username, String

        # @!method initialize(onlyfans_id: nil, revenue: nil, username: nil)
        #   @param onlyfans_id [String]
        #   @param revenue [Onlyfans::Models::SmartLinkListSpendersResponse::Data::Revenue]
        #   @param username [String]

        # @see Onlyfans::Models::SmartLinkListSpendersResponse::Data#revenue
        class Revenue < Onlyfans::Internal::Type::BaseModel
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
