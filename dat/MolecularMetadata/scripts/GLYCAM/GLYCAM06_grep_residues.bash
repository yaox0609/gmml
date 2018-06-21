#!/bin/bash

#################################################
#################################################
#################################################
###
### This is terrible code.  For the love of all
### that is good and true in the world, someone
### please dry it out!
###
#################################################
#################################################
#################################################


## File With All Residue Names
RN='GLYCAM06_All_Residues.txt'
## Carbohydrate Definitions Output File
OF='GLYCAM06_Carb_Defs.bash'
if [ -e ${OF} ] ; then
  rm ${OF}
fi
## List of residues handled by this script
SL='GLYCAM06_List_of_residues_in_Carb_Defs_bash.txt'
if [ -e ${SL} ] ; then
  rm ${SL}
fi
## comment this out if you want a file written that will list all the
## residues that this script is managing
SL='/dev/null'

echo "#!/bin/bash
##
##  File named ${OF} generated by script ${0} on $(date).
##  This file contains definitions of the carbohydrate residues in 
##  the GLYCAM06 non-EP parameter set.
##
##  This file should be called from res-name-mappings.bash
##" > ${OF}

#####################
## Aldoses
#####################

## Plain hexose monosaccharides
TYPE_BASE=' carbohydrate monosaccharide pyranose aldose n-carbon=6 formal-charge=0 '
for i in T N E F L G K M Q H ; do 
	## alpha D
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} alpha D-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}A$  ${RN} >> ${OF}
    	grep   ^.${i}A$  ${RN} >> ${SL}
	echo '"' >> ${OF}
	## beta D
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} beta D-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}B$  ${RN} >> ${OF}
    	grep   ^.${i}B$  ${RN} >> ${SL}
	echo '"' >> ${OF}
done
for i in t n e f l g k m q h ; do 
	## alpha L
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} alpha L-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}A$  ${RN} >> ${OF}
    	grep   ^.${i}A$  ${RN} >> ${SL}
	echo '"' >> ${OF}
	## beta L
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} beta L-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}B$  ${RN} >> ${OF}
    	grep   ^.${i}B$  ${RN} >> ${SL}
	echo '"' >> ${OF}
done

## N-acetyl hexose monosaccharides
TYPE_BASE=' carbohydrate monosaccharide pyranose aldose n-carbon=6 formal-charge=0 N-acetyl '
for i in V Y W ; do 
	## alpha D
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} alpha D-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}A$  ${RN} >> ${OF}
    	grep   ^.${i}A$  ${RN} >> ${SL}
	echo '"' >> ${OF}
	## beta D
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} beta D-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}B$  ${RN} >> ${OF}
    	grep   ^.${i}B$  ${RN} >> ${SL}
	echo '"' >> ${OF}
done
for i in v y w ; do 
	## alpha L
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} alpha L-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}A$  ${RN} >> ${OF}
    	grep   ^.${i}A$  ${RN} >> ${SL}
	echo '"' >> ${OF}
	## beta L
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} beta L-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}B$  ${RN} >> ${OF}
    	grep   ^.${i}B$  ${RN} >> ${SL}
	echo '"' >> ${OF}
done
## bacillosamine
TYPE_BASE=' carbohydrate monosaccharide pyranose aldose n-carbon=6 formal-charge=0 N-acetyl beta '
	# D
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} D-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.Bc$  ${RN} >> ${OF}
    	grep   ^.Bc$  ${RN} >> ${SL}
	echo '"' >> ${OF}
	# L
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} L-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.bc$  ${RN} >> ${OF}
    	grep   ^.bc$  ${RN} >> ${SL}
	echo '"' >> ${OF}
## glucosamine hexose monosaccharides
TYPE_BASE=' carbohydrate monosaccharide pyranose aldose n-carbon=6 formal-charge=0 amine D-isomer '
	# alpha
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} alpha \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.YN$  ${RN} >> ${OF}
    	grep   ^.YN$  ${RN} >> ${SL}
	echo '"' >> ${OF}
	# beta
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} beta \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.Yn$  ${RN} >> ${OF}
    	grep   ^.Yn$  ${RN} >> ${SL}
	echo '"' >> ${OF}
## glucosamine hexose monosaccharides, protonated
TYPE_BASE=' carbohydrate monosaccharide pyranose aldose n-carbon=6 formal-charge=+1 amine D-isomer protonated '
	# alpha
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} alpha \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.YNP$  ${RN} >> ${OF}
    	grep   ^.YNP$  ${RN} >> ${SL}
	echo '"' >> ${OF}
	# beta
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} beta \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.YnP$  ${RN} >> ${OF}
    	grep   ^.YnP$  ${RN} >> ${SL}
	echo '"' >> ${OF}
## N-sulfo-glucosamine hexose monosaccharides
TYPE_BASE=' carbohydrate monosaccharide pyranose aldose n-carbon=6 formal-charge=0 N-sulfo '
	# alpha
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} alpha D-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.YS$  ${RN} >> ${OF}
    	grep   ^.YS$  ${RN} >> ${SL}
	echo '"' >> ${OF}
	# beta
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} beta D-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.Ys$  ${RN} >> ${OF}
    	grep   ^.Ys$  ${RN} >> ${SL}
	echo '"' >> ${OF}
	# alpha
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} alpha L-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.yS$  ${RN} >> ${OF}
    	grep   ^.yS$  ${RN} >> ${SL}
	echo '"' >> ${OF}
	# beta
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} beta L-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep  ^.ys$  ${RN} >> ${OF}
    	grep  ^.ys$  ${RN} >> ${SL}
	echo '"' >> ${OF}
## uronates (acids)
TYPE_BASE=' carbohydrate monosaccharide pyranose aldose n-carbon=6 formal-charge=-1 uronate '
for i in O Z U ; do 
	## alpha D
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} alpha D-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}A$  ${RN} >> ${OF}
    	grep   ^.${i}A$  ${RN} >> ${SL}
	echo '"' >> ${OF}
	## beta D
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} beta D-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}B$  ${RN} >> ${OF}
    	grep   ^.${i}B$  ${RN} >> ${SL}
	echo '"' >> ${OF}
done
for i in o z u ; do 
	## alpha L
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} alpha L-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}A$  ${RN} >> ${OF}
    	grep   ^.${i}A$  ${RN} >> ${SL}
	echo '"' >> ${OF}
	## beta L
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} beta L-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}B$  ${RN} >> ${OF}
    	grep   ^.${i}B$  ${RN} >> ${SL}
	echo '"' >> ${OF}
done
## protonated uronates
TYPE_BASE=' carbohydrate monosaccharide pyranose aldose n-carbon=6 alpha L-isomer formal-charge=0 uronate protonated '
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} \" " >> ${OF}
	echo 'NAMES[${i}]=" YuAP "' >> ${OF}
    	echo 'YuAP' >> ${SL}
TYPE_BASE=' carbohydrate monosaccharide pyranose aldose n-carbon=6 beta D-isomer formal-charge=0 uronate protonated '
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} \" " >> ${OF}
	echo 'NAMES[${i}]=" 0ZBP "' >> ${OF}
    	echo '0ZBP' >> ${SL}

## unsaturated uronates
TYPE_BASE=' carbohydrate monosaccharide pyranose aldose n-carbon=6 formal-charge=-1 uronate unsaturated-uronate ' 
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} \" " >> ${OF}
	echo 'NAMES[${i}]=" 045 245 "' >> ${OF}
    	echo  "045
245" >> ${SL}

## Plain pentose monosaccharides
TYPE_BASE=' carbohydrate monosaccharide pyranose aldose n-carbon=5 formal-charge=0 '
for i in A D R X ; do 
	## alpha D
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} alpha D-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}A$  ${RN} >> ${OF}
    	grep   ^.${i}A$  ${RN} >> ${SL}
	echo '"' >> ${OF}
	## beta D
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} beta D-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}B$  ${RN} >> ${OF}
    	grep   ^.${i}B$  ${RN} >> ${SL}
	echo '"' >> ${OF}
done
for i in a d r x ; do 
	## alpha L
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} alpha L-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}A$  ${RN} >> ${OF}
    	grep   ^.${i}A$  ${RN} >> ${SL}
	echo '"' >> ${OF}
	## beta L
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} beta L-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}B$  ${RN} >> ${OF}
    	grep   ^.${i}B$  ${RN} >> ${SL}
	echo '"' >> ${OF}
done
TYPE_BASE=' carbohydrate monosaccharide furanose aldose n-carbon=5 formal-charge=0 '
for i in A D R X ; do 
	## alpha D
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} alpha D-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}D$  ${RN} >> ${OF}
    	grep   ^.${i}D$  ${RN} >> ${SL}
	echo '"' >> ${OF}
	## beta D
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} beta D-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}U$  ${RN} >> ${OF}
    	grep   ^.${i}U$  ${RN} >> ${SL}
	echo '"' >> ${OF}
done
for i in a d r x ; do 
	## alpha L
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} alpha L-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}D$  ${RN} >> ${OF}
    	grep   ^.${i}D$  ${RN} >> ${SL}
	echo '"' >> ${OF}
	## beta L
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} beta L-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}U$  ${RN} >> ${OF}
    	grep   ^.${i}U$  ${RN} >> ${SL}
	echo '"' >> ${OF}
done
## Deoxy pentose monosaccharides
## Tyvelose, Abequose
TYPE_BASE=' carbohydrate monosaccharide pyranose aldose n-carbon=5 formal-charge=0 deoxy '
for i in AE TV ; do 
	# alpha
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} alpha D-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}$  ${RN} >> ${OF}
    	grep   ^.${i}$  ${RN} >> ${SL}
	echo '"' >> ${OF}
done
for i in Ae Tv ; do 
	# beta
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} beta D-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}$  ${RN} >> ${OF}
    	grep   ^.${i}$  ${RN} >> ${SL}
	echo '"' >> ${OF}
done
for i in tV ; do 
	# alpha
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} alpha L-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}$  ${RN} >> ${OF}
    	grep   ^.${i}$  ${RN} >> ${SL}
	echo '"' >> ${OF}
done
for i in tv ; do 
	# beta
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} beta L-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}$  ${RN} >> ${OF}
    	grep   ^.${i}$  ${RN} >> ${SL}
	echo '"' >> ${OF}
done

#####################
## Ketoses
#####################

## Plain hexose monosaccharides
TYPE_BASE=' carbohydrate monosaccharide pyranose ketose n-carbon=6 formal-charge=0 '
for i in C P B J ; do 
	## alpha D
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} alpha D-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}A$  ${RN} >> ${OF}
    	grep   ^.${i}A$  ${RN} >> ${SL}
	echo '"' >> ${OF}
	## beta D
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} beta D-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}B$  ${RN} >> ${OF}
    	grep   ^.${i}B$  ${RN} >> ${SL}
	echo '"' >> ${OF}
done
for i in c p b j ; do 
	## alpha L
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} alpha L-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}A$  ${RN} >> ${OF}
    	grep   ^.${i}A$  ${RN} >> ${SL}
	echo '"' >> ${OF}
	## beta L
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} beta L-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}B$  ${RN} >> ${OF}
    	grep   ^.${i}B$  ${RN} >> ${SL}
	echo '"' >> ${OF}
done
TYPE_BASE=' carbohydrate monosaccharide furanose ketose n-carbon=6 formal-charge=0 '
for i in C P B J ; do 
	## alpha D
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} alpha D-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}D$  ${RN} >> ${OF}
    	grep   ^.${i}D$  ${RN} >> ${SL}
	echo '"' >> ${OF}
	## beta D
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} beta D-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}U$  ${RN} >> ${OF}
    	grep   ^.${i}U$  ${RN} >> ${SL}
	echo '"' >> ${OF}
done
for i in c p b j ; do 
	## alpha L
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} alpha L-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}D$  ${RN} >> ${OF}
    	grep   ^.${i}D$  ${RN} >> ${SL}
	echo '"' >> ${OF}
	## beta L
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} beta L-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}U$  ${RN} >> ${OF}
    	grep   ^.${i}U$  ${RN} >> ${SL}
	echo '"' >> ${OF}
done

#####################
## Uloses
#####################
## Pyranose only
## KDO
TYPE_BASE=' carbohydrate monosaccharide pyranose ketose n-carbon=8 formal-charge=-1 alpha D-isomer deoxy ulosonate '
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} \" " >> ${OF}
	echo 'NAMES[${i}]=" KDO "' >> ${OF}
	echo 'KDO' >> ${SL}
## KDN 
TYPE_BASE=' carbohydrate monosaccharide pyranose ketose n-carbon=9 formal-charge=-1 alpha D-isomer deoxy ulosonate '
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} \" " >> ${OF}
	echo 'NAMES[${i}]=" KDN "' >> ${OF}
	echo 'KDN' >> ${SL}
## Neu5Ac Neu5Gc
TYPE_BASE=' carbohydrate monosaccharide pyranose ketose n-carbon=9 formal-charge=-1 alpha deoxy ulosonate '
for i in SA GL ; do 
	## alpha D
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} D-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}$  ${RN} >> ${OF}
    	grep   ^.${i}$  ${RN} >> ${SL}
	echo '"' >> ${OF}
done
for i in sA gL ; do 
	## alpha L
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} L-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.${i}$  ${RN} >> ${OF}
    	grep   ^.${i}$  ${RN} >> ${SL}
	echo '"' >> ${OF}
done
TYPE_BASE=' carbohydrate monosaccharide pyranose ketose n-carbon=9 formal-charge=-1 beta deoxy ulosonate '
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} D-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.SB$  ${RN} >> ${OF}
    	grep   ^.SB$  ${RN} >> ${SL}
	echo '"' >> ${OF}
TYPE_BASE=' carbohydrate monosaccharide pyranose ketose n-carbon=9 formal-charge=-1 beta deoxy ulosonate '
	echo 'i=$((i+1))' >> ${OF}
	echo "TYPES[\${i}]=\" ${TYPE_BASE} L-isomer \" " >> ${OF}
	echo 'NAMES[${i}]="' >> ${OF}
    	grep   ^.sB$  ${RN} >> ${OF}
    	grep   ^.sB$  ${RN} >> ${SL}
	echo '"' >> ${OF}
