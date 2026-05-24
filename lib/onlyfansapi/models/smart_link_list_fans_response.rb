# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::SmartLinks#list_fans
    class SmartLinkListFansResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::SmartLinkListFansResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::SmartLinkListFansResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::SmartLinkListFansResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::SmartLinkListFansResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::SmartLinkListFansResponse::Meta]
      #   @param data [Onlyfansapi::Models::SmartLinkListFansResponse::Data]

      # @see Onlyfansapi::Models::SmartLinkListFansResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::SmartLinkListFansResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::SmartLinkListFansResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::SmartLinkListFansResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::SmartLinkListFansResponse::Meta::Credits }

        # @!method initialize(_cache: nil, _credits: nil)
        #   @param _cache [Onlyfansapi::Models::SmartLinkListFansResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::SmartLinkListFansResponse::Meta::Credits]

        # @see Onlyfansapi::Models::SmartLinkListFansResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::SmartLinkListFansResponse::Meta#_credits
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

      # @see Onlyfansapi::Models::SmartLinkListFansResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute filters
        #
        #   @return [Onlyfansapi::Models::SmartLinkListFansResponse::Data::Filters, nil]
        optional :filters, -> { Onlyfansapi::Models::SmartLinkListFansResponse::Data::Filters }

        # @!attribute rows
        #
        #   @return [Array<Onlyfansapi::Models::SmartLinkListFansResponse::Data::Row>, nil]
        optional :rows,
                 -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::SmartLinkListFansResponse::Data::Row] }

        # @!attribute summary
        #
        #   @return [Onlyfansapi::Models::SmartLinkListFansResponse::Data::Summary, nil]
        optional :summary, -> { Onlyfansapi::Models::SmartLinkListFansResponse::Data::Summary }

        # @!method initialize(filters: nil, rows: nil, summary: nil)
        #   @param filters [Onlyfansapi::Models::SmartLinkListFansResponse::Data::Filters]
        #   @param rows [Array<Onlyfansapi::Models::SmartLinkListFansResponse::Data::Row>]
        #   @param summary [Onlyfansapi::Models::SmartLinkListFansResponse::Data::Summary]

        # @see Onlyfansapi::Models::SmartLinkListFansResponse::Data#filters
        class Filters < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute has_messages
          #
          #   @return [String, nil]
          optional :has_messages, String, nil?: true

          # @!attribute limit
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute min_messages_sent_by_fan
          #
          #   @return [String, nil]
          optional :min_messages_sent_by_fan, String, nil?: true

          # @!attribute min_revenue_net
          #
          #   @return [String, nil]
          optional :min_revenue_net, String, nil?: true

          # @!attribute min_tips_net
          #
          #   @return [String, nil]
          optional :min_tips_net, String, nil?: true

          # @!attribute offset
          #
          #   @return [Integer, nil]
          optional :offset, Integer

          # @!attribute sort
          #
          #   @return [String, nil]
          optional :sort, String

          # @!method initialize(has_messages: nil, limit: nil, min_messages_sent_by_fan: nil, min_revenue_net: nil, min_tips_net: nil, offset: nil, sort: nil)
          #   @param has_messages [String, nil]
          #   @param limit [Integer]
          #   @param min_messages_sent_by_fan [String, nil]
          #   @param min_revenue_net [String, nil]
          #   @param min_tips_net [String, nil]
          #   @param offset [Integer]
          #   @param sort [String]
        end

        class Row < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute avatar_url
          #
          #   @return [String, nil]
          optional :avatar_url, String

          # @!attribute click_id
          #
          #   @return [String, nil]
          optional :click_id, String

          # @!attribute conversion_id
          #
          #   @return [Integer, nil]
          optional :conversion_id, Integer

          # @!attribute converted_at
          #
          #   @return [String, nil]
          optional :converted_at, String

          # @!attribute external_click_id
          #
          #   @return [String, nil]
          optional :external_click_id, String

          # @!attribute fan_id
          #
          #   @return [Integer, nil]
          optional :fan_id, Integer

          # @!attribute messages_sent_by_fan
          #
          #   @return [Integer, nil]
          optional :messages_sent_by_fan, Integer

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute onlyfans_id
          #
          #   @return [String, nil]
          optional :onlyfans_id, String

          # @!attribute revenue_net
          #
          #   @return [Integer, nil]
          optional :revenue_net, Integer

          # @!attribute tips_net
          #
          #   @return [Integer, nil]
          optional :tips_net, Integer

          # @!attribute username
          #
          #   @return [String, nil]
          optional :username, String

          # @!method initialize(avatar_url: nil, click_id: nil, conversion_id: nil, converted_at: nil, external_click_id: nil, fan_id: nil, messages_sent_by_fan: nil, name: nil, onlyfans_id: nil, revenue_net: nil, tips_net: nil, username: nil)
          #   @param avatar_url [String]
          #   @param click_id [String]
          #   @param conversion_id [Integer]
          #   @param converted_at [String]
          #   @param external_click_id [String]
          #   @param fan_id [Integer]
          #   @param messages_sent_by_fan [Integer]
          #   @param name [String]
          #   @param onlyfans_id [String]
          #   @param revenue_net [Integer]
          #   @param tips_net [Integer]
          #   @param username [String]
        end

        # @see Onlyfansapi::Models::SmartLinkListFansResponse::Data#summary
        class Summary < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute fans_total
          #
          #   @return [Integer, nil]
          optional :fans_total, Integer

          # @!attribute fans_with_3_plus_messages_total
          #
          #   @return [Integer, nil]
          optional :fans_with_3_plus_messages_total, Integer

          # @!attribute revenue_net_total
          #
          #   @return [Integer, nil]
          optional :revenue_net_total, Integer

          # @!attribute tips_net_total
          #
          #   @return [Integer, nil]
          optional :tips_net_total, Integer

          # @!method initialize(fans_total: nil, fans_with_3_plus_messages_total: nil, revenue_net_total: nil, tips_net_total: nil)
          #   @param fans_total [Integer]
          #   @param fans_with_3_plus_messages_total [Integer]
          #   @param revenue_net_total [Integer]
          #   @param tips_net_total [Integer]
        end
      end
    end
  end
end
