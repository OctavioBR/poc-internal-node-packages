const a = require("@libs/package-a")

module.exports = { getOtherName }

function getOtherName() {
	const name = a.getName()
	return name.replace("A", "C")
}
