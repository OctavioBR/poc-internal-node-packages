const psList = require('ps-list')

module.exports = { getProccess }

function getProccess() {
	return psList()
}