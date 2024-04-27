module logs

pub fn print_in_color(color string, text string) {
	println('\u001b[1;' + color + 'm' + text + '\u001b[0m')
}
