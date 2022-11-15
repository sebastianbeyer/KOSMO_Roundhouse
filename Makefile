
projectname := roundhouse

# separated boards
sep_folder := separated

${sep_folder}/${projectname}_control.kicad_pcb ${sep_folder}/${projectname}_control.kicad_prl ${sep_folder}/${projectname}_control.kicad_pro: ./kickall.kicad_pcb
	mkdir -p ${sep_folder}
	kikit separate --source 'annotation; ref: B1' $< ${sep_folder}/${projectname}_control.kicad_pcb


#kikit fab jlcpcb separated/roundhouse_control.kicad_pcb separated --no-drc
