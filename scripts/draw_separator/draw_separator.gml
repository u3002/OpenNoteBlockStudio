function draw_separator(argument0, argument1) {
	// draw_separator(x, y)
	var xx, yy;
	xx = argument0
	yy = argument1
	var dark = (theme == 3 && fdark) || (isplayer && blackout)
	draw_set_color(8421504)
	if (!dark) draw_line(xx - 1, yy, xx - 1, yy + 18)
	draw_set_color(c_white)
	if (dark) draw_line(xx - dark, yy, xx - dark, yy + 18)



}
