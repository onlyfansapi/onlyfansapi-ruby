# frozen_string_literal: true

module Onlyfans
  module Models
    # @see Onlyfans::Resources::SmartLinks#list_fans
    class SmartLinkListFansResponse < Onlyfans::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfans::Models::SmartLinkListFansResponse::Meta, nil]
      optional :_meta, -> { Onlyfans::Models::SmartLinkListFansResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfans::Models::SmartLinkListFansResponse::Data, nil]
      optional :data, -> { Onlyfans::Models::SmartLinkListFansResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfans::Models::SmartLinkListFansResponse::Meta]
      #   @param data [Onlyfans::Models::SmartLinkListFansResponse::Data]

      # @see Onlyfans::Models::SmartLinkListFansResponse#_meta
      class Meta < Onlyfans::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfans::Models::SmartLinkListFansResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfans::Models::SmartLinkListFansResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfans::Models::SmartLinkListFansResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfans::Models::SmartLinkListFansResponse::Meta::Credits }

        # @!method initialize(_cache: nil, _credits: nil)
        #   @param _cache [Onlyfans::Models::SmartLinkListFansResponse::Meta::Cache]
        #   @param _credits [Onlyfans::Models::SmartLinkListFansResponse::Meta::Credits]

        # @see Onlyfans::Models::SmartLinkListFansResponse::Meta#_cache
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

        # @see Onlyfans::Models::SmartLinkListFansResponse::Meta#_credits
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

      # @see Onlyfans::Models::SmartLinkListFansResponse#data
      class Data < Onlyfans::Internal::Type::BaseModel
        # @!attribute filters
        #
        #   @return [Onlyfans::Models::SmartLinkListFansResponse::Data::Filters, nil]
        optional :filters, -> { Onlyfans::Models::SmartLinkListFansResponse::Data::Filters }

        # @!attribute rows
        #
        #   @return [Array<Onlyfans::Models::SmartLinkListFansResponse::Data::Row>, nil]
        optional :rows,
                 -> { Onlyfans::Internal::Type::ArrayOf[Onlyfans::Models::SmartLinkListFansResponse::Data::Row] }

        # @!attribute summary
        #
        #   @return [Onlyfans::Models::SmartLinkListFansResponse::Data::Summary, nil]
        optional :summary, -> { Onlyfans::Models::SmartLinkListFansResponse::Data::Summary }

        # @!method initialize(filters: nil, rows: nil, summary: nil)
        #   @param filters [Onlyfans::Models::SmartLinkListFansResponse::Data::Filters]
        #   @param rows [Array<Onlyfans::Models::SmartLinkListFansResponse::Data::Row>]
        #   @param summary [Onlyfans::Models::SmartLinkListFansResponse::Data::Summary]

        # @see Onlyfans::Models::SmartLinkListFansResponse::Data#filters
        class Filters < Onlyfans::Internal::Type::BaseModel
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

          # @!attribute previously_subscribed
          #
          #   @return [String, nil]
          optional :previously_subscribed, String, nil?: true

          # @!attribute sort
          #
          #   @return [String, nil]
          optional :sort, String

          # @!attribute subscribed_using_promo
          #
          #   @return [String, nil]
          optional :subscribed_using_promo, String, nil?: true

          # @!method initialize(has_messages: nil, limit: nil, min_messages_sent_by_fan: nil, min_revenue_net: nil, min_tips_net: nil, offset: nil, previously_subscribed: nil, sort: nil, subscribed_using_promo: nil)
          #   @param has_messages [String, nil]
          #   @param limit [Integer]
          #   @param min_messages_sent_by_fan [String, nil]
          #   @param min_revenue_net [String, nil]
          #   @param min_tips_net [String, nil]
          #   @param offset [Integer]
          #   @param previously_subscribed [String, nil]
          #   @param sort [String]
          #   @param subscribed_using_promo [String, nil]
        end

        class Row < Onlyfans::Internal::Type::BaseModel
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

          # @!attribute subscription_insights
          #
          #   @return [Onlyfans::Models::SmartLinkListFansResponse::Data::Row::SubscriptionInsights, nil]
          optional :subscription_insights,
                   -> { Onlyfans::Models::SmartLinkListFansResponse::Data::Row::SubscriptionInsights }

          # @!attribute tips_net
          #
          #   @return [Integer, nil]
          optional :tips_net, Integer

          # @!attribute username
          #
          #   @return [String, nil]
          optional :username, String

          # @!method initialize(avatar_url: nil, click_id: nil, conversion_id: nil, converted_at: nil, external_click_id: nil, fan_id: nil, messages_sent_by_fan: nil, name: nil, onlyfans_id: nil, revenue_net: nil, subscription_insights: nil, tips_net: nil, username: nil)
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
          #   @param subscription_insights [Onlyfans::Models::SmartLinkListFansResponse::Data::Row::SubscriptionInsights]
          #   @param tips_net [Integer]
          #   @param username [String]

          # @see Onlyfans::Models::SmartLinkListFansResponse::Data::Row#subscription_insights
          class SubscriptionInsights < Onlyfans::Internal::Type::BaseModel
            # @!attribute current_subscription
            #
            #   @return [Onlyfans::Models::SmartLinkListFansResponse::Data::Row::SubscriptionInsights::CurrentSubscription, nil]
            optional :current_subscription,
                     -> { Onlyfans::Models::SmartLinkListFansResponse::Data::Row::SubscriptionInsights::CurrentSubscription }

            # @!attribute current_subscription_from_smart_link
            #
            #   @return [Boolean, nil]
            optional :current_subscription_from_smart_link, Onlyfans::Internal::Type::Boolean

            # @!attribute has_subscription_data
            #
            #   @return [Boolean, nil]
            optional :has_subscription_data, Onlyfans::Internal::Type::Boolean

            # @!attribute previously_subscribed
            #
            #   @return [Boolean, nil]
            optional :previously_subscribed, Onlyfans::Internal::Type::Boolean

            # @!attribute subscribed_using_promo
            #
            #   @return [Boolean, nil]
            optional :subscribed_using_promo, Onlyfans::Internal::Type::Boolean

            # @!method initialize(current_subscription: nil, current_subscription_from_smart_link: nil, has_subscription_data: nil, previously_subscribed: nil, subscribed_using_promo: nil)
            #   @param current_subscription [Onlyfans::Models::SmartLinkListFansResponse::Data::Row::SubscriptionInsights::CurrentSubscription]
            #   @param current_subscription_from_smart_link [Boolean]
            #   @param has_subscription_data [Boolean]
            #   @param previously_subscribed [Boolean]
            #   @param subscribed_using_promo [Boolean]

            # @see Onlyfans::Models::SmartLinkListFansResponse::Data::Row::SubscriptionInsights#current_subscription
            class CurrentSubscription < Onlyfans::Internal::Type::BaseModel
              # @!attribute action
              #
              #   @return [String, nil]
              optional :action, String

              # @!attribute is_free
              #
              #   @return [Boolean, nil]
              optional :is_free, Onlyfans::Internal::Type::Boolean

              # @!attribute price
              #
              #   @return [Integer, nil]
              optional :price, Integer

              # @!attribute regular_price
              #
              #   @return [Integer, nil]
              optional :regular_price, Integer

              # @!attribute type
              #
              #   @return [String, nil]
              optional :type, String

              # @!method initialize(action: nil, is_free: nil, price: nil, regular_price: nil, type: nil)
              #   @param action [String]
              #   @param is_free [Boolean]
              #   @param price [Integer]
              #   @param regular_price [Integer]
              #   @param type [String]
            end
          end
        end

        # @see Onlyfans::Models::SmartLinkListFansResponse::Data#summary
        class Summary < Onlyfans::Internal::Type::BaseModel
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
