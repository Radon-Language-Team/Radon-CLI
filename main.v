module main

// import os { input, execute }
import update
import logs

fn main() {
	logs.print_in_color('34', 'Welcome to the Radon CLI Tool')
	logs.print_in_color('34', 'This tool allows you to run Radon code from the command line')
	logs.print_in_color('34', 'Use the command "radon run <file>" to run a Radon file')

	println($env('GITHUB_PERSONAL_TOKEN'))

	// command_to_run := input('Waiting for input...')

	// Check if empty
	// if command_to_run == '' {
	//	logs.print_in_color('31', 'No command entered')
	//	return
	// }

	update.update_radon()
}
