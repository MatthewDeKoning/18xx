# frozen_string_literal: true

module Engine
  module Game
    module G18India_KOT
      module Entities
        COMPANIES = [
        ].freeze

        CORPORATIONS = [
          {
            name: 'Great Indian Peninsula Railway',
            sym: 'GIPR',
            logo: '18_india/GIPR',
            simple_logo: '18_india/GIPR.alt',
            # No president cert / Pres cert is 10%
            shares: [10, 10, 10, 10, 10, 10, 10, 10, 10, 10],
            tokens: [0, 40, 100, 100],
            # Add Exchange Tokens
            floatable: false, # Can not float / operate until phase II
            min_price: 112,
            float_percent: 30,
            max_ownership_percent: 200,
            coordinates: 'B11', # Paris
            color: 'white',
            text_color: 'black',
          },
          {
            name: 'Northwestern Railway',
            sym: 'NWR',
            logo: '18_india/NWR',
            simple_logo: '18_india/NWR.alt',
            tokens: [0, 40, 100, 100],
            min_price: 100,
            float_percent: 30,
            max_ownership_percent: 100,
            coordinates: 'M8', # Venig 
            city: 0,
            color: '#48bc39', # green
          },
          {
            name: 'East India Railway',
            sym: 'EIR',
            logo: '18_india/EIR',
            simple_logo: '18_india/EIR.alt',
            tokens: [0, 40, 100],
            min_price: 100,
            float_percent: 30,
            max_ownership_percent: 100,
            coordinates: 'B9', # Brussel
            city: 0,
            color: '#f14324', # orange
          },
          {
            name: 'North Central Railway',
            sym: 'NCR',
            logo: '18_india/NCR',
            simple_logo: '18_india/NCR.alt',
            tokens: [0, 40, 100, 100],
            min_price: 90,
            float_percent: 30,
            max_ownership_percent: 100,
            coordinates: 'S10', # Naples
            color: '#d8ba9e', # light brown / tan
          },
          {
            name: 'Madras Railway',
            sym: 'MR',
            logo: '18_india/MR',
            simple_logo: '18_india/MR.alt',
            tokens: [0, 40, 100],
            min_price: 90,
            float_percent: 30,
            max_ownership_percent: 100,
            coordinates: 'R5', # Belgrad
            color: '#fccd1c', # yellow
          },
          {
            name: 'South Indian Railway',
            sym: 'SIR',
            logo: '18_india/SIR',
            simple_logo: '18_india/SIR.alt',
            tokens: [0, 40, 100, 100],
            min_price: 82,
            float_percent: 30,
            max_ownership_percent: 100,
            coordinates: 'H9', # Zurich
            color: '#702f2b', # dark red/brown
          },
          {
            name: 'Bengal Nagpur Railway',
            sym: 'BNR',
            logo: '18_india/BNR',
            simple_logo: '18_india/BNR.alt',
            tokens: [0, 40, 100, 100, 100],
            min_price: 82,
            float_percent: 30,
            max_ownership_percent: 100,
            coordinates: 'J7', # Munich-Salsburg
            color: '#c4711c',
          },
          {
            name: 'Punjab Northern State Railway',
            sym: 'PNS',
            logo: '18_india/PNS',
            simple_logo: '18_india/PNS.alt',
            tokens: [0, 40, 100],
            min_price: 76,
            float_percent: 30,
            max_ownership_percent: 100,
            coordinates: 'W4', # Sofia
            color: '#9fc322', # light green
          },
          {
            name: 'Eastern Bengal Railway',
            sym: 'EBR',
            logo: '18_india/EBR',
            simple_logo: '18_india/EBR.alt',
            tokens: [0, 40, 100],
            min_price: 76,
            float_percent: 30,
            max_ownership_percent: 100,
            coordinates: 'U2', # Bukarest
            city: 1,
            color: '#72818e', # gray
          },
          {
            name: 'Bombay Railway',
            sym: 'BR',
            logo: '18_india/BR',
            simple_logo: '18_india/BR.alt',
            tokens: [0, 40, 100],
            min_price: 71,
            float_percent: 30,
            max_ownership_percent: 100,
            coordinates: 'H5', # Prag
            color: '#6046a6',
          },
          {
            name: 'Nizam State Railway',
            sym: 'NSR',
            logo: '18_india/NSR',
            simple_logo: '18_india/NSR.alt',
            tokens: [0, 40, 100],
            min_price: 71,
            float_percent: 30,
            max_ownership_percent: 100,
            coordinates: 'E4', # Berlin
            color: '#458dd3', # medium blue
          },
          {
            name: 'Sind Punjab & Delhi Railroad',
            sym: 'SPD',
            logo: '18_india/SPD',
            simple_logo: '18_india/SPD.alt',
            tokens: [0, 40],
            min_price: 67,
            float_percent: 30,
            max_ownership_percent: 100,
            coordinates: 'O4', # Budapest
            city: 1,
            color: '#c3b07a', # tan
          },
          {
            name: 'Darjeeling-Himalayan Railway',
            sym: 'DHR',
            logo: '18_india/DHR',
            simple_logo: '18_india/DHR.alt',
            tokens: [0, 40],
            min_price: 67,
            float_percent: 30,
            max_ownership_percent: 100,
            coordinates: 'V5', # Skopje
            color: '#2c8e48', # dark green
          },
        ].freeze

        TRAINS = [
          {
            name: '2',
            distance: [
              { 'nodes' => ['city'], 'pay' => 2, 'visit' => 2 },
              { 'nodes' => ['town'], 'pay' => 99, 'visit' => 99 },
            ],
            price: 180,
            salvage: 180,
            num: 6,
          },
          {
            name: '3',
            distance: [
              { 'nodes' => ['city'], 'pay' => 3, 'visit' => 3 },
              { 'nodes' => ['town'], 'pay' => 99, 'visit' => 99 },
            ],
            price: 300,
            salvage: 300,
            num: 4,
          },
          {
            name: '4',
            distance: [
              { 'nodes' => ['city'], 'pay' => 4, 'visit' => 4 },
              { 'nodes' => ['town'], 'pay' => 99, 'visit' => 99 },
            ],
            price: 450,
            salvage: 300,
            variants: [
              {
                name: '4E',
                distance: [
                  { 'nodes' => ['city'], 'pay' => 4, 'visit' => 99 },
                  { 'nodes' => ['town'], 'pay' => 0, 'visit' => 99 },
                ],
                price: 450,
                salvage: 300,
              },
            ],
            num: 3,
          },
          {
            name: '3x2',
            available_on: "III'",
            distance: [
              { 'nodes' => ['city'], 'pay' => 3, 'visit' => 3 },
              { 'nodes' => ['town'], 'pay' => 99, 'visit' => 99 },
            ],
            multiplier: 2,
            price: 700,
            salvage: 500,
            num: 3,
          },
          {
            name: '3x3',
            available_on: "III'",
            distance: [
              { 'nodes' => ['city'], 'pay' => 3, 'visit' => 3 },
              { 'nodes' => ['town'], 'pay' => 99, 'visit' => 99 },
            ],
            multiplier: 3,
            price: 900,
            salvage: 700,
            num: 3,
          },
          {
            name: '4x2',
            available_on: "III'",
            distance: [
              { 'nodes' => ['city'], 'pay' => 4, 'visit' => 4 },
              { 'nodes' => ['town'], 'pay' => 99, 'visit' => 99 },
            ],
            multiplier: 2,
            price: 800,
            salvage: 650,
            variants: [
              {
                name: '4Ex2',
                distance: [
                  { 'nodes' => ['city'], 'pay' => 4, 'visit' => 99 },
                  { 'nodes' => ['town'], 'pay' => 0, 'visit' => 99 },
                ],
                multiplier: 2,
                price: 800,
                salvage: 650,
              },
            ],
            num: 3,
          },
          {
            name: '4x3',
            available_on: "III'",
            distance: [
              { 'nodes' => ['city'], 'pay' => 4, 'visit' => 4 },
              { 'nodes' => ['town'], 'pay' => 99, 'visit' => 99 },
            ],
            multiplier: 3,
            price: 1100,
            salvage: 0,
            variants: [
              {
                name: '4Ex3',
                distance: [
                  { 'nodes' => ['city'], 'pay' => 4, 'visit' => 99 },
                  { 'nodes' => ['town'], 'pay' => 0, 'visit' => 99 },
                ],
                multiplier: 3,
                price: 1100,
              },
            ],
            num: 3,
          },
        ].freeze
      end
    end
  end
end
