#!/bin/sh

cat "infos/haltestellen" | sed -e 's/^/"Karlsruhe, /' -e 's/$/"/' | while read l; do 
	echo "\
sessionID=0\
&requestID=0\
&language=de\
&command=\
&execInst=\
&stateless=1\
&itdLPxx_frames=\
&useRealtime=1\
&depType=stopEvents\
&includeCompleteStopSeq=1\
&ptOptionsActive=1\
&locationServerActive=1\
&convertStopsPTKernel2LocationServer=1\
&convertAddressesITKernel2LocationServer=1\
&convertCoord2LocationServer=1\
&convertCrossingsITKernel2LocationServer=1\
&convertPOIsITKernel2LocationServer=1\
&anySigWhenPerfectNoOtherMatches=1\
&anyMaxSizeHitList=350\
&w_objPrefAm=2\
&w_regPrefAl=8\
&prMinQu=1\
&selectAssignedStops=1\
&useProxFootSearch=0\
&type_dm=any\
&nameDefaultText_dm=Ort, Haltestelle oder Adresse oder wichtiger Punkt\
&nameInfo_dm=invalid\
&placeInfo_dm=invalid\
&typeInfo_dm=invalid\
&placeOMC_dm=\
&nameState_dm=empty\
&placeState_dm=empty\
&nameX_dm=\
&nameY_dm=\
&nameDisplay_dm=\
&typeDisplay_dm=\
&itdLPxx_id_dm=:dm\
&anyObjFilter_dm=2\
&name_dm=$l"
done | sed 's/^/http:\/\/www.efa-bw.de\/nvbw\/XSLT_DM_REQUEST?/'

