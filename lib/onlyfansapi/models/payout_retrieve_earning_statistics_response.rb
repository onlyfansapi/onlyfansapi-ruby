# frozen_string_literal: true

module Onlyfansapi
  module Models
    # @see Onlyfansapi::Resources::Payouts#retrieve_earning_statistics
    class PayoutRetrieveEarningStatisticsResponse < Onlyfansapi::Internal::Type::BaseModel
      # @!attribute _meta
      #
      #   @return [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta, nil]
      optional :_meta, -> { Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta }

      # @!attribute data
      #
      #   @return [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data, nil]
      optional :data, -> { Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data }

      # @!method initialize(_meta: nil, data: nil)
      #   @param _meta [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta]
      #   @param data [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data]

      # @see Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse#_meta
      class Meta < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute _cache
        #
        #   @return [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Cache, nil]
        optional :_cache, -> { Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Cache }

        # @!attribute _credits
        #
        #   @return [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Credits, nil]
        optional :_credits, -> { Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Credits }

        # @!attribute _rate_limits
        #
        #   @return [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::RateLimits, nil]
        optional :_rate_limits,
                 -> { Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::RateLimits }

        # @!method initialize(_cache: nil, _credits: nil, _rate_limits: nil)
        #   @param _cache [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Cache]
        #   @param _credits [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::Credits]
        #   @param _rate_limits [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta::RateLimits]

        # @see Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta#_cache
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

        # @see Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta#_credits
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

        # @see Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Meta#_rate_limits
        class RateLimits < Onlyfansapi::Internal::Type::BaseModel
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

      # @see Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse#data
      class Data < Onlyfansapi::Internal::Type::BaseModel
        # @!attribute list
        #
        #   @return [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List, nil]
        optional :list, -> { Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List }

        # @!method initialize(list: nil)
        #   @param list [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List]

        # @see Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data#list
        class List < Onlyfansapi::Internal::Type::BaseModel
          # @!attribute months
          #
          #   @return [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months, nil]
          optional :months, -> { Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months }

          # @!attribute total
          #
          #   @return [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total, nil]
          optional :total, -> { Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total }

          # @!method initialize(months: nil, total: nil)
          #   @param months [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months]
          #   @param total [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total]

          # @see Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List#months
          class Months < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute number_1735689661
            #
            #   @return [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661, nil]
            optional :number_1735689661,
                     -> { Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661 },
                     api_name: :"1735689661"

            # @!method initialize(number_1735689661: nil)
            #   @param number_1735689661 [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661]

            # @see Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months#number_1735689661
            class Const1735689661 < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute subscribes
              #
              #   @return [Array<Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Subscribe>, nil]
              optional :subscribes,
                       -> do
                         Onlyfansapi::Internal::Type::ArrayOf[
                           Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Subscribe
                         ]
                       end

              # @!attribute tips
              #
              #   @return [Array<Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Tip>, nil]
              optional :tips,
                       -> { Onlyfansapi::Internal::Type::ArrayOf[Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Tip] }

              # @!attribute total_gross
              #
              #   @return [Integer, nil]
              optional :total_gross, Integer

              # @!attribute total_net
              #
              #   @return [Integer, nil]
              optional :total_net, Integer

              # @!method initialize(subscribes: nil, tips: nil, total_gross: nil, total_net: nil)
              #   @param subscribes [Array<Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Subscribe>]
              #   @param tips [Array<Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Months::Const1735689661::Tip>]
              #   @param total_gross [Integer]
              #   @param total_net [Integer]

              class Subscribe < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute gross
                #
                #   @return [Integer, nil]
                optional :gross, Integer

                # @!attribute net
                #
                #   @return [Integer, nil]
                optional :net, Integer

                # @!attribute time
                #
                #   @return [Integer, nil]
                optional :time, Integer

                # @!method initialize(gross: nil, net: nil, time: nil)
                #   @param gross [Integer]
                #   @param net [Integer]
                #   @param time [Integer]
              end

              class Tip < Onlyfansapi::Internal::Type::BaseModel
                # @!attribute gross
                #
                #   @return [Integer, nil]
                optional :gross, Integer

                # @!attribute net
                #
                #   @return [Integer, nil]
                optional :net, Integer

                # @!attribute time
                #
                #   @return [Integer, nil]
                optional :time, Integer

                # @!method initialize(gross: nil, net: nil, time: nil)
                #   @param gross [Integer]
                #   @param net [Integer]
                #   @param time [Integer]
              end
            end
          end

          # @see Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List#total
          class Total < Onlyfansapi::Internal::Type::BaseModel
            # @!attribute all
            #
            #   @return [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::All, nil]
            optional :all, -> { Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::All }

            # @!attribute chat_messages
            #
            #   @return [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::ChatMessages, nil]
            optional :chat_messages,
                     -> { Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::ChatMessages }

            # @!attribute post
            #
            #   @return [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Post, nil]
            optional :post,
                     -> { Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Post }

            # @!attribute subscribes
            #
            #   @return [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Subscribes, nil]
            optional :subscribes,
                     -> { Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Subscribes }

            # @!attribute tips
            #
            #   @return [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Tips, nil]
            optional :tips,
                     -> { Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Tips }

            # @!method initialize(all: nil, chat_messages: nil, post: nil, subscribes: nil, tips: nil)
            #   @param all [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::All]
            #   @param chat_messages [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::ChatMessages]
            #   @param post [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Post]
            #   @param subscribes [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Subscribes]
            #   @param tips [Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total::Tips]

            # @see Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total#all
            class All < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute total_gross
              #
              #   @return [Float, nil]
              optional :total_gross, Float

              # @!attribute total_net
              #
              #   @return [Float, nil]
              optional :total_net, Float

              # @!method initialize(total_gross: nil, total_net: nil)
              #   @param total_gross [Float]
              #   @param total_net [Float]
            end

            # @see Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total#chat_messages
            class ChatMessages < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute total_gross
              #
              #   @return [Float, nil]
              optional :total_gross, Float

              # @!attribute total_net
              #
              #   @return [Float, nil]
              optional :total_net, Float

              # @!method initialize(total_gross: nil, total_net: nil)
              #   @param total_gross [Float]
              #   @param total_net [Float]
            end

            # @see Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total#post
            class Post < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute total_gross
              #
              #   @return [Float, nil]
              optional :total_gross, Float

              # @!attribute total_net
              #
              #   @return [Float, nil]
              optional :total_net, Float

              # @!method initialize(total_gross: nil, total_net: nil)
              #   @param total_gross [Float]
              #   @param total_net [Float]
            end

            # @see Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total#subscribes
            class Subscribes < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute total_gross
              #
              #   @return [Float, nil]
              optional :total_gross, Float

              # @!attribute total_net
              #
              #   @return [Float, nil]
              optional :total_net, Float

              # @!method initialize(total_gross: nil, total_net: nil)
              #   @param total_gross [Float]
              #   @param total_net [Float]
            end

            # @see Onlyfansapi::Models::PayoutRetrieveEarningStatisticsResponse::Data::List::Total#tips
            class Tips < Onlyfansapi::Internal::Type::BaseModel
              # @!attribute total_gross
              #
              #   @return [Float, nil]
              optional :total_gross, Float

              # @!attribute total_net
              #
              #   @return [Float, nil]
              optional :total_net, Float

              # @!method initialize(total_gross: nil, total_net: nil)
              #   @param total_gross [Float]
              #   @param total_net [Float]
            end
          end
        end
      end
    end
  end
end
