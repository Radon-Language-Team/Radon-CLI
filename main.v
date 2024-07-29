module main

import symlink
import help
import term
import os

fn main() {
	term.clear()
	radon_ascii_art := "
 ____             
| ___ \\        | |            
| |_/ /__ _  __| | ___  _ __  
|    // _` |/ _` |/ _ \\| '_ \\ 
| |\\ \\ (_| | (_| | (_) | | | |
\\_| \\_\\__,_|\\__,_|\\___/|_| |_|  
"

	println(term.blue(radon_ascii_art))
	println(term.bg_blue('CLI for the Radon Programming Language'))

	println('Please run ${term.blue('link')} to symlink the radon executable to /usr/local/bin/radon. \nFor any other commands, run ${term.blue('help')}.')
	command := os.input('')

	if command == 'link' {
		symlink.link()
	} else if command == 'help' {
		help.help()
	} else if command == 'unlink' {
		symlink.unlink()
	} else {
		println('Command not found. Run ${term.blue('help')} for a list of commands.')
	}
}
