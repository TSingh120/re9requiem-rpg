function create_dialog(_messages){
	if (instance_exists(obj_dialog)) return;
	
	var _inst = instance_create_depth(0, 0, 0, obj_dialog);
	_inst.messages = _messages;
	_inst.current_message = 0;
}

char_colors = {
	"Facility AI": c_green,
	"Leon": c_aqua
}

welcome_dialog = [
{
	name: "Facility AI",
	msg: "Welcome to the facility, visitor. I hope you enjoy your stay here. In case of emergencies, follow the green line to the safe room."
},
{
	name: "Leon",
	msg: "I sure as hell hope I do."
},
{
	name: "Facility AI",
	msg: "Determining subject behaviour... Behaviour: Hostile. Releasing discipline units."
},
{
	name: "Leon",
	msg: "Well. So much for an enjoyable stay, huh."
}
]

handgun_dialog = [
{
	name: "Facility AI",
	msg: "This weapon will not protect you, human."
},
{
	name: "Leon",
	msg: "We'll see about that."
},
{
	name: "Facility AI",
	msg: "You will die here, meaninglessly. Without hope."
},
{
	name: "Leon",
	msg: "*Shoots* Why do these clankers never shut up?"
},
{
	name: "Facility AI",
	msg: "*crackle* ------"
},
{
	name: "Leon",
	msg: "...Well there goes my company for the day."
},
]