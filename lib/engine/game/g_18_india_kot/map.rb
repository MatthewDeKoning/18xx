# frozen_string_literal: true

module Engine
  module Game
    module G18India_KOT
      module Map
        TILES = {
          # yellow tiles
          '9' => 41,
          '8' => 41,
          '7' => 6,
          '4' => 16,
          '58' => 16,
          '3' => 8,
          '235' => 2,
          '57' => 3,
          '6' => 3,
          '5' => 3,

          # green tiles
          '80' => 4,
          '81' => 4,
          '82' => 4,
          '83' => 4,
          '141' => 3,
          '142' => 3,
          '143' => 3,
          '144' => 3,
          '619' => 2,
          '14' => 2,
          '15' => 2,
          '59' => 2,
          '205' => 2,
          '206' => 2,
          '12' => 2,
          '13' => 2,

          # brown tiles
          '544' => 2,
          '545' => 2,
          '546' => 2,
          '145' => 2,
          '146' => 2,
          '147' => 2,
          '611' => 6,
          '64' => 1,
          '65' => 1,
          '66' => 1,
          '67' => 1,
          '68' => 1,
          '984' => {
            'count' => 2,
            'color' => 'brown',
            'code' => 'city=revenue:50;city=revenue:50;path=a:0,b:_0;path=a:_0,b:1;path=a:2,b:_1;path=a:_1,b:3;label=OO',
          },

          # gray tiles
          '60' => 1,
          '513' => 4,
          'GT6' => {
            'count' => 1,
            'color' => 'gray',
            'code' => 'town=revenue:20;path=a:0,b:_0;path=a:1,b:_0;path=a:2,b:_0;path=a:3,b:_0;path=a:4,b:_0;path=a:5,b:_0',
          },
          'IND1' => {
            'count' => 1,
            'color' => 'gray',
            'code' => 'city=revenue:60,slots:3;path=a:0,b:_0;path=a:1,b:_0;path=a:2,b:_0;path=a:3,b:_0;path=a:4,b:_0;label=OO',
          },

          # Ferry yellow / gray tiles
          'IF1' => { 'count' => 1, 'color' => 'yellow', 'code' => 'path=a:0,b:3;label=FERRY' },
          'IF2' => { 'count' => 1, 'color' => 'yellow', 'code' => 'path=a:0,b:2;label=FERRY' },

          # triple town tiles
          'IND2' => {
            'count' => 2,
            'color' => 'yellow',
            'code' => 'town=revenue:20,style:dot;town=revenue:10;town=revenue:10;'\
                      'path=a:1,b:_0;path=a:_0,b:2;path=a:0,b:_1;path=a:_1,b:4;path=a:3,b:_2;path=a:_2,b:5',
          },
          'IND3' => {
            'count' => 2,
            'color' => 'yellow',
            'code' => 'town=revenue:20,style:dot;town=revenue:10;town=revenue:10;'\
                      'path=a:1,b:_0;path=a:4,b:_0;path=a:0,b:_1;path=a:5,b:_1;path=a:2,b:_2;path=a:3,b:_2',
          },
          'IND4' => {
            'count' => 2,
            'color' => 'yellow',
            'code' => 'town=revenue:20,style:dot;town=revenue:10;town=revenue:10;'\
                      'path=a:2,b:_0;path=a:5,b:_0;path=a:1,b:_1;path=a:4,b:_1;path=a:0,b:_2;path=a:3,b:_2',
          },
          'IND5' => {
            'count' => 2,
            'color' => 'yellow',
            'code' => 'town=revenue:20,style:dot;town=revenue:10;town=revenue:10;'\
                      'path=a:2,b:_0;path=a:3,b:_0;path=a:0,b:_1;path=a:1,b:_1;path=a:4,b:_2;path=a:5,b:_2',
          },
          'IND6' => {
            'count' => 2,
            'color' => 'yellow',
            'code' => 'town=revenue:20,style:dot;town=revenue:10;town=revenue:10;'\
                      'path=a:2,b:_0;path=a:5,b:_0;path=a:1,b:_1;path=a:3,b:_1;path=a:0,b:_2;path=a:4,b:_2',
          },
        }.freeze


        LOCATION_NAMES = {
          # Red city names
          'B5' => 'HAMBURG',
          'B11' => 'PARIS',
          'D3' => 'COPENHAGEN',
          'L5' => 'WEIN',
          'N1' => 'WARSAW',
          'O4' => 'BUDAPEST',
          'O10' => 'ROME',
          'AB1' => 'CONSTANTINOPLE',
          'AC6' => 'ATHENS',
          # OO cities
          'J7' => 'MUNICH-SALSBURG',
          'M8' => 'VENEDIG',
        }.freeze

        HEXES = {
          white: {
            #plane tiles
            %w[A6 A10 C3 C10 D5 D7 D11 E10 F5 F7 H7 H11 I4 J5 K4 L9 M2 O2 P1 P7 Q10 R1 R3 U4 U6 V1 V9 W2 Y4 Z3 Z7 AA2 AA6 AB7] => '',
            #plane towns
            %w[A8 C6 D9 E6 F11 G10 H3 I6 J3 J11 K10 L3 M4 M10 P3 R7 U8 X3 X5 Y2 Y6] => 'town=revenue:0',
            #plane cities
            %w[B9 E4 H5 S10 U2 V5 W4 ] => 'city=revenue:0',
            #plane triple town
            %w[F9 G6 G8 N7 Q4 T5 ] => 'town=revenue:0;town=revenue:0;town=revenue:0',
            #terrains
            #mountains
            %w[L7 M6 O6 P9 Q6 R9 T9 W6] => 'upgrade=cost:15,terrain:mountain',
            %w[I10 K8 N3 S6] => 'upgrade=cost:30,terrain:mountain',
            %w[S2 X7] => 'town=revenue:0;upgrade=cost:15,terrain:mountain',
            %w[I8 Q2 T1] => 'town=revenue:0;upgrade=cost:30,terrain:mountain',
            ['H9'] => 'city=revenue:0;upgrade=cost:30,terrain:mountain',
            ['J9'] => 'upgrade=cost:80,terrain:mountain',

            #water
            %w[B7 G4 S4 V3] => 'upgrade=cost:30,terrain:water',
            %w[C8 E8 K6 N5 T3] => 'town=revenue:0;town=revenue:0;town=revenue:0,upgrade=cost:30,terrain:water'
            ['R5'] => 'city=revenue:0;upgrade=cost:30,terrain:water',
            ['P5'] => 'town=revenue:0;upgrade=cost:30,terrain:water',

          },

          # Red hexes are variable revenue cities
          # FIX THIS
          red: {
            ['N1'] => 'city=revenue:20;path=a:0,b:_0;path=a:4,b:_0;path=a:5,b:_0;label=+?;',
            ['L5'] => 'city=revenue:30;path=a:0,b:_0;path=a:1,b:_0;path=a:2,b:_0;path=a:3,b:_0;path=a:4,b:_0;path=a:5,b:_0;label=+?;',
            ['O4'] => 'city=revenue:20;path=a:0,b:_0;path=a:1,b:_0;path=a:2,b:_0;path=a:3,b:_0;path=a:4,b:_0;path=a:5,b:_0;label=+?;',
            ['O10'] => 'city=revenue:20;path=a:1,b:_0;path=a:3,b:_0;path=a:4,b:_0;label=+?;',
            ['B5'] => 'offboard=revenue:20;path:a:0,b:_0;path=a:3,b:_0;path=a:4,b:_0;path=a:5,b:_0;label=+?;'
            ['B11'] => 'offboard=revenue:40;path:a:2,b:_0;path=a:3,b:_0;path=a:4,b:_0;label=+?;'
            ['D3'] => 'offboard=revenue:20;path=a:5,b:_0;label=+?;',
            ['AB1'] => 'offboard=revenue:40;path:a:0,b:_0;label=+?;'
            ['AC6'] => 'offboard=revenue:40;path:a:0,b:_0;path=a:1,b:_0;label=+?;'

          },
          gray: {
            ['F3'] => 'path=a:0,b:5',
          },
          blue: {
            %w[L11 N9 N11 P11 Q8 R11 S8 T7 T11 U10 V7 W10 X1 X9 Y8 Z1 Z5 AA4 AA8 AB3 AB5 AC2 AC8 ] => 'offboard=revenue:yellow_0,visit_cost:99;border=edge:1;border=edge:2;border=edge:3;border=edge:4;border=edge:5;border=edge:0',
            %w[O8 W8] => 'upgrade=cost:30,terrain:water;label=FERRY',
          },
        }.freeze

        LAYOUT = :pointy
        AXES = { x: :letter, y: :number }.freeze
      end
    end
  end
end
