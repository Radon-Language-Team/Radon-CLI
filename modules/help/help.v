module help

import os
import term

pub fn help() {
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
	println(term.bg_blue('CLI for the Radon Programming Language\n\n'))

	println(term.gray('Commands:'))
	println('${term.blue('link')} - ${term.gray('Symlink the radon executable to /usr/local/bin/radon')}')
	println('${term.blue('unlink')} - ${term.gray('Unlink the radon executable from /usr/local/bin/radon')}')
	println('${term.blue('update')} - ${term.gray('Get the newest version of the radon compiler')}')
	println('${term.blue('help')} - ${term.gray('Display this help message')}')

	os.input('Press enter to exit.')
}
