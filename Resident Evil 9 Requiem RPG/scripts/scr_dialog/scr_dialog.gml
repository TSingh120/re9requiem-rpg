function create_dialog(_messages){
	if (instance_exists(obj_dialog)) return;
	
	var _inst = instance_create_depth(0, 0, 0, obj_dialog);
	_inst.messages = _messages;
	_inst.current_message = 0;
}

char_colors = {
	"Facility AI": c_green,
	"Leon": c_aqua,
	"Shop AI": c_yellow,
	"The Architect": c_blue
}

welcome_dialog = [
{
	name: "The Architect",
	msg: "WARNING. This game has A LOT of walking back and forth and walking in general. Also, PRESS 'R' to restart. Press SPACE to move on to the next dialogue."
},
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
	msg: "Press 1 to equi--- ...... This weapon will not protect you, human."
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

ar_dialog = [
{
	name: "Shop AI",
	msg: "This specially designed Assault Rifle is available in case of emergencies at the price of 50 Mutagen clusters. Mutagen is available from deceased personnel. Press 2 to equip this weapon."
},
{
	name: "Leon",
	msg: "Why the hell would they lock weapons behind a paywall during emergencies?"
},
]

safezone1_dialog = [
{
	name: "Facility AI",
	msg: "--------"
},
{
	name: "Leon",
	msg: "The clanker's finally quiet now."
},
{
	name: "Facility AI",
	msg: "Filthy human. Bask in the glory of my discoveries and developments. You won't survive against my virus enhanced personnel."
},
{
	name: "Leon",
	msg: "Woah you sure got a hell of an ego for a harmless and supportive AI."
},
]

shotgun_dialog = [
{
	name: "Shop AI",
	msg: "This specially designed Shotgun is available in case of emergencies at the price of 90 Mutagen clusters. Press 3 to equip this weapon."
},
{
	name: "Leon",
	msg: "Better hope I got 90 clusters then."
},
]

safezone2_dialog = [
{
	name: "Facility AI",
	msg: "Foolish human, stop struggling and subject yourself to the glory of my creations."
},
{
	name: "Leon",
	msg: "Nah, I'm good."
},
{
	name: "Facility AI",
	msg: "Your insignificance and insubordination knows no bounds."
},
{
	name: "Leon",
	msg: "Too much vocab for me. *shoots*"
},
{
	name: "Facility AI",
	msg: "I WI----- *crackles and powers off*"
},
]