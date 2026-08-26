# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::DataExports#list
    class DataExportListParams < Onlyfans::Internal::Type::BaseModel
      extend Onlyfans::Internal::Type::RequestParameters::Converter
      include Onlyfans::Internal::Type::RequestParameters

      # @!attribute download_url_expires_in
      #   Number of minutes until download URLs expire. Min `1`, max `60`, default `5`.
      #
      #   @return [Integer, nil]
      optional :download_url_expires_in, Integer

      # @!attribute page
      #   Page number for pagination. Default `1`
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!attribute per_page
      #   Number of results per page. Default `15`, max `100`
      #
      #   @return [Integer, nil]
      optional :per_page, Integer

      # @!attribute status
      #   Filter by status
      #
      #   @return [Symbol, Onlyfans::Models::DataExportListParams::Status, nil]
      optional :status, enum: -> { Onlyfans::DataExportListParams::Status }

      # @!attribute type
      #   Filter by export type
      #
      #   @return [Symbol, Onlyfans::Models::DataExportListParams::Type, nil]
      optional :type, enum: -> { Onlyfans::DataExportListParams::Type }

      # @!method initialize(download_url_expires_in: nil, page: nil, per_page: nil, status: nil, type: nil, request_options: {})
      #   @param download_url_expires_in [Integer] Number of minutes until download URLs expire. Min `1`, max `60`, default `5`.
      #
      #   @param page [Integer] Page number for pagination. Default `1`
      #
      #   @param per_page [Integer] Number of results per page. Default `15`, max `100`
      #
      #   @param status [Symbol, Onlyfans::Models::DataExportListParams::Status] Filter by status
      #
      #   @param type [Symbol, Onlyfans::Models::DataExportListParams::Type] Filter by export type
      #
      #   @param request_options [Onlyfans::RequestOptions, Hash{Symbol=>Object}]

      # Filter by status
      module Status
        extend Onlyfans::Internal::Type::Enum

        CALCULATING_CREDITS = :calculating_credits
        CALCULATING_CREDITS_FAILED = :calculating_credits_failed
        CALCULATING_CREDITS_COMPLETED = :calculating_credits_completed
        PENDING = :pending
        IN_PROGRESS = :in_progress
        COMPLETED = :completed
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Filter by export type
      module Type
        extend Onlyfans::Internal::Type::Enum

        TRANSACTIONS = :transactions
        CHAT_MESSAGES = :chat_messages
        MEDIA_VAULT = :media_vault
        TRIAL_LINKS = :trial_links
        TRACKING_LINKS = :tracking_links
        SMART_LINKS = :smart_links
        PAYOUTS = :payouts
        CHARGEBACKS = :chargebacks
        PUBLIC_PROFILES = :public_profiles
        FANS = :fans
        FOLLOWINGS = :followings
        PROFILE_VISITORS = :profile_visitors
        FANSLY_CHAT_MESSAGES = :fansly_chat_messages

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
