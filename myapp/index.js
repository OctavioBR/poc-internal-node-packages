const a = require("@libs/package-a")
const b = require("@libs/package-b")
const c = require("@libs/package-c")

b.getProccess().then(list => {
	console.log("[A]", a.getName())
	console.log("[B]", list.length, "proccesses running")
	console.log("[C]", c.getOtherName())
})
