% MiniZinc: Calculate screen position for Monster number

% Screen dimensions
int: screen_width = 80;   % Terminal columns
int: screen_height = 24;  % Terminal rows

% Monster number to display
string: monster_num = "80801433333314000";
int: num_length = 17;

% Decision variables: position on screen
var 1..screen_height: row;
var 1..screen_width-num_length: col;

% Constraints based on Monster Walk properties
% 8080 = first 4 digits, preserve at top
constraint row <= 4;

% 1433333314 contains patterns from Group 2 (1742) and Group 3 (479)
% Position should reflect hierarchical structure
constraint col >= 10;  % Not at edge
constraint col <= 60;  % Leave room for rainbow banner

% Optimize: place at golden ratio position
var float: golden_ratio = 1.618;
var float: optimal_row = int2float(screen_height) / golden_ratio;
var float: optimal_col = int2float(screen_width) / golden_ratio;

% Minimize distance from golden ratio
solve minimize abs(int2float(row) - optimal_row) + abs(int2float(col) - optimal_col);

output [
  "Monster Number: \(monster_num)\n",
  "Screen Position:\n",
  "  Row: \(row)\n",
  "  Col: \(col)\n",
  "ANSI Code: \\033[\(row);\(col)H\n",
  "🎯 Positioned at golden ratio for Monster Walk\n"
];
