function get_execution_command(){
	var p_num, p_str;
	p_num = parameter_count()
	p_str = ""
	if (p_num > 0) {
		for (var i = 0; i <= p_num; i++) {
			p_str += parameter_string(i)
		}
	}
	return p_str
}