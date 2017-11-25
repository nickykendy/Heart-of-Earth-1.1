/// @description s_check_adjacent_available(i, j)
/// @param i
/// @param j
var i = argument0;
var j = argument1;
var result = true;
var dir = 0;
var tileNum = global.map[# curX, curY];

if (i == 1 and j == 0) {
	dir = RIGHT; // right
} else if (i == 0 and j == -1) {
	dir = UP; // up
} else if (i == -1 and j == 0) {
	dir = LEFT; // left
} else if (i == 0 and j == 1) {
	dir = DOWN; // down
}

switch (tileNum) {
	case 2:
		if (dir == RIGHT) {
			
		} else if (dir == UP) {
			result = false;
		} else if (dir == LEFT) {
			result = false;
		} else if (dir == DOWN) {
			result = false;
		}
		break;
	case 3:
		if (dir == RIGHT) {
			result = false;
		} else if (dir == UP) {
			result = false;
		} else if (dir == LEFT) {
			
		} else if (dir == DOWN) {
			result = false;
		}
		break;
	case 4:
		if (dir == RIGHT) {
			
		} else if (dir == UP) {
			result = false;
		} else if (dir == LEFT) {
			
		} else if (dir == DOWN) {
			result = false;
		}
		break;

	case 10:
		if (dir == RIGHT) {
			
		} else if (dir == UP) {
			result = false;
		} else if (dir == LEFT) {
			result = false;
		} else if (dir == DOWN) {
			
		}
		break;
	case 11:
		if (dir == RIGHT) {
			
		} else if (dir == UP) {
			result = false;
		} else if (dir == LEFT) {
			
		} else if (dir == DOWN) {
			result = false;
		}
		break;
	case 12:
		if (dir == RIGHT) {
			
		} else if (dir == UP) {
			
		} else if (dir == LEFT) {
			result = false;
		} else if (dir == DOWN) {
			result = false;
		}
		break;
	case 13:
		if (dir == RIGHT) {
			result = false;
		} else if (dir == UP) {
			
		} else if (dir == LEFT) {
			
		} else if (dir == DOWN) {
			result = false;
		}
		break;
	case 14:
		if (dir == RIGHT) {
			
		} else if (dir == UP) {
			result = false;
		} else if (dir == LEFT) {
			
		} else if (dir == DOWN) {
			result = false;
		}
		break;
	case 15:
		if (dir == RIGHT) {
			result = false;
		} else if (dir == UP) {
			result = false;
		} else if (dir == LEFT) {
			
		} else if (dir == DOWN) {
			
		}
		break;
	case 16:
		if (dir == RIGHT) {
			
		} else if (dir == UP) {
			
		} else if (dir == LEFT) {
			
		} else if (dir == DOWN) {
			result = false;
		}
		break;
	case 17:
		if (dir == RIGHT) {
			
		} else if (dir == UP) {
			result = false;
		} else if (dir == LEFT) {
			
		} else if (dir == DOWN) {
			
		}
		break;

	case 20:
		if (dir == RIGHT) {
			
		} else if (dir == UP) {
			
		} else if (dir == LEFT) {
			
		} else if (dir == DOWN) {
			result = false;
		}
		break;
	case 21:
		if (dir == RIGHT) {
			
		} else if (dir == UP) {
			result = false;
		} else if (dir == LEFT) {
			
		} else if (dir == DOWN) {
			
		}
		break;
	case 22:
		if (dir == RIGHT) {
			
		} else if (dir == UP) {
			
		} else if (dir == LEFT) {
			result = false;
		} else if (dir == DOWN) {
			
		}
		break;
	case 23:
		if (dir == RIGHT) {
			
		} else if (dir == UP) {
			
		} else if (dir == LEFT) {
			
		} else if (dir == DOWN) {
			result = false;
		}
		break;
	case 24:
		if (dir == RIGHT) {
			
		} else if (dir == UP) {
			result = false;
		} else if (dir == LEFT) {
			
		} else if (dir == DOWN) {
			
		}
		break;
	case 25:
		if (dir == RIGHT) {
			result = false;
		} else if (dir == UP) {
			
		} else if (dir == LEFT) {
			
		} else if (dir == DOWN) {
			
		}
		break;
		
	case 30:
		
		break;
	case 31:
		
		break;
}

return result;