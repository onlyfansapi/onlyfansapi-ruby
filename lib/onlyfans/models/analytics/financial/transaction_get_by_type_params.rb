# frozen_string_literal: true

module Onlyfans
  module Models
    module Analytics
      module Financial
        # @see Onlyfans::Resources::Analytics::Financial::Transactions#get_by_type
        class TransactionGetByTypeParams < Onlyfans::Internal::Type::BaseModel
          extend Onlyfans::Internal::Type::RequestParameters::Converter
          include Onlyfans::Internal::Type::RequestParameters

          # @!attribute account_ids
          #   Array of account prefixed IDs
          #
          #   @return [Array<String>]
          required :account_ids, Onlyfans::Internal::Type::ArrayOf[String]

          # @!attribute end_date
          #   The end date (ISO 8601 format)
          #
          #   @return [String]
          required :end_date, String

          # @!attribute start_date
          #   The start date (ISO 8601 format)
          #
          #   @return [String]
          required :start_date, String

          # @!method initialize(account_ids:, end_date:, start_date:, request_options: {})
          #   @param account_ids [Array<String>] Array of account prefixed IDs
          #
          #   @param end_date [String] The end date (ISO 8601 format)
          #
          #   @param start_date [String] The start date (ISO 8601 format)
          #
          #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
