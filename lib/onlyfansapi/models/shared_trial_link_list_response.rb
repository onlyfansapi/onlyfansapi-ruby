# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::SharedTrialLinks#list
    class SharedTrialLinkListResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::SharedTrialLinkListResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::SharedTrialLinkListResponse::Meta }

      # @!attribute _pagination
      #
      #   @return [Onlyfansapi::Models::SharedTrialLinkListResponse::Pagination, nil]
      optional :_pagination, -> { Onlyfansapi::Models::SharedTrialLinkListResponse::Pagination }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::SharedTrialLinkListResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::SharedTrialLinkListResponse::Data }

      # @!method initialize(_meta: nil, _pagination: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::SharedTrialLinkListResponse::Meta]
      #   @param _pagination [Onlyfansapi::Models::SharedTrialLinkListResponse::Pagination]
      #   @param data [Onlyfansapi::Models::SharedTrialLinkListResponse::Data]

      # @see Onlyfansapi::Models::SharedTrialLinkListResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::RateLimits, nil]
        optional :_rate_limits, -> { Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::SharedTrialLinkListResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::SharedTrialLinkListResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::SharedTrialLinkListResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::SharedTrialLinkListResponse::Meta#_rate_limits
        class RateLimits < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute limit_day
          #
          #   @return [String, nil]
          optional :limit_day, String, nil?: true

          # @!attribute limit_minute
          #
          #   @return [Integer, nil]
          optional :limit_minute, Integer

          # @!attribute notice
          #
          #   @return [String, nil]
          optional :notice, String

          # @!attribute remaining_day
          #
          #   @return [String, nil]
          optional :remaining_day, String, nil?: true

          # @!attribute remaining_minute
          #
          #   @return [Integer, nil]
          optional :remaining_minute, Integer

          # @!method initialize(limit_day: nil, limit_minute: nil, notice: nil, remaining_day: nil, remaining_minute: nil)
          #   @param limit_day [String, nil]
          #   @param limit_minute [Integer]
          #   @param notice [String]
          #   @param remaining_day [String, nil]
          #   @param remaining_minute [Integer]
        end
      end

      # @see Onlyfansapi::Models::SharedTrialLinkListResponse#_pagination
      class Pagination < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute next_page
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!method initialize(next_page: nil)
        #   @param next_page [String]
      end

      # @see Onlyfansapi::Models::SharedTrialLinkListResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute has_more
        #
        #   @return [Boolean, nil]
        optional :has_more, Onlyfansapi::Internal::Type::Boolean, api_name: :hasMore

        # @!attribute list
        #
        #   @return [Array<Onlyfansapi::Models::SharedTrialLinkListResponse::Data::List>, nil]
        optional :list,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::SharedTrialLinkListResponse::Data::List] }

        # @!method initialize(has_more: nil, list: nil)
        #   @param has_more [Boolean]
        #   @param list [Array<Onlyfansapi::Models::SharedTrialLinkListResponse::Data::List>]

        class List < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute claim_counts
          #
          #   @return [Integer, nil]
          optional :claim_counts, Integer, api_name: :claimCounts

          # @!attribute clicks_counts
          #
          #   @return [Integer, nil]
          optional :clicks_counts, Integer, api_name: :clicksCounts

          # @!attribute created_at
          #
          #   @return [String, nil]
          optional :created_at, String, api_name: :createdAt

          # @!attribute expired_at
          #
          #   @return [String, nil]
          optional :expired_at, String, api_name: :expiredAt, nil?: true

          # @!attribute is_finished
          #
          #   @return [Boolean, nil]
          optional :is_finished, Onlyfansapi::Internal::Type::Boolean, api_name: :isFinished

          # @!attribute owner
          #
          #   @return [Onlyfansapi::Models::SharedTrialLinkListResponse::Data::List::Owner, nil]
          optional :owner, -> { Onlyfansapi::Models::SharedTrialLinkListResponse::Data::List::Owner }

          # @!attribute subscribe_counts
          #
          #   @return [Integer, nil]
          optional :subscribe_counts, Integer, api_name: :subscribeCounts

          # @!attribute subscribe_days
          #
          #   @return [Integer, nil]
          optional :subscribe_days, Integer, api_name: :subscribeDays

          # @!attribute tags
          #
          #   @return [Array<Object>, nil]
          optional :tags, Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Internal::Type::Unknown]

          # @!attribute trial_link_name
          #
          #   @return [String, nil]
          optional :trial_link_name, String, api_name: :trialLinkName

          # @!attribute url
          #
          #   @return [String, nil]
          optional :url, String

          # @!method initialize(id: nil, claim_counts: nil, clicks_counts: nil, created_at: nil, expired_at: nil, is_finished: nil, owner: nil, subscribe_counts: nil, subscribe_days: nil, tags: nil, trial_link_name: nil, url: nil)
          #   @param id [Integer]
          #   @param claim_counts [Integer]
          #   @param clicks_counts [Integer]
          #   @param created_at [String]
          #   @param expired_at [String, nil]
          #   @param is_finished [Boolean]
          #   @param owner [Onlyfansapi::Models::SharedTrialLinkListResponse::Data::List::Owner]
          #   @param subscribe_counts [Integer]
          #   @param subscribe_days [Integer]
          #   @param tags [Array<Object>]
          #   @param trial_link_name [String]
          #   @param url [String]

          # @see Onlyfansapi::Models::SharedTrialLinkListResponse::Data::List#owner
          class Owner < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer, nil]
            optional :id, Integer

            # @!attribute avatar_thumb_url
            #
            #   @return [String, nil]
            optional :avatar_thumb_url, String, api_name: :avatarThumbUrl

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute username
            #
            #   @return [String, nil]
            optional :username, String

            # @!method initialize(id: nil, avatar_thumb_url: nil, name: nil, username: nil)
            #   @param id [Integer]
            #   @param avatar_thumb_url [String]
            #   @param name [String]
            #   @param username [String]
          end
        end
      end
    end
  end
end
