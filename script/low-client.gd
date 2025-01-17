extends Node

var _udp = PacketPeerUDP.new()

func _ready():
	_udp.set_send_address("localhost",4321)
	set_process(true)

func _process(delta):
	var msgs = []

	while _udp.get_available_packet_count() > 0:
		var pkt = _udp.get_var() # or get_packet()
		msgs.append("Server says: " + str(pkt))
	# Show messages
	for msg in msgs:
		print(msg)

func send_data(data):
	_udp.put_var(data) # or put_packet
