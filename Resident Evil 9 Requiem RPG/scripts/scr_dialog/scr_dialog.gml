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
	msg: "Welcome to the facility, visitor. I hope you enjoy your stay here."
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