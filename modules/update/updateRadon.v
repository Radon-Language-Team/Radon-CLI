module update

import net.http
import logs

pub fn update_radon() {
	mut url := 'https://api.github.com/repos/xTheFreeZe/semper-npm-module/issues'
	url += 'User-Agent: request'

	response := http.get(url) or { panic('Unable to get the latest version of Radon.') }

	if response.status_code != 200 {
		logs.print_in_color('31', 'Failed to get the latest version of Radon.')
		logs.print_in_color('31', 'Status code: ${response.status_code}')
		return
	}

	print(response.header)
	print(response.body)
}
