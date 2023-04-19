([confiscation_nt_lv3-defeasibly-dot] of derived-attribute-rule
   (pos-name confiscation_nt_lv3-defeasibly-dot-gen390)
   (depends-on declare to_confiscate_nt_lv3 unauthorized_tobacco_distribution_lv3 to_confiscate_nt_lv3)
   (implies to_confiscate_nt_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [confiscation_nt_lv3] ) ) ) ?gen347 <- ( to_confiscate_nt_lv3 ( value 1 ) ( positive 1 ) ( positive-derivator confiscation_nt_lv3 $? ) ) ( test ( eq ( class ?gen347 ) to_confiscate_nt_lv3 ) ) ( not ( and ?gen354 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ( positive ?gen353 & : ( >= ?gen353 1 ) ) ) ?gen347 <- ( to_confiscate_nt_lv3 ( negative ~ 2 ) ( positive-overruled $?gen349 & : ( not ( member$ confiscation_nt_lv3 $?gen349 ) ) ) ) ) ) => ?gen347 <- ( to_confiscate_nt_lv3 ( positive 0 ) )"))

([confiscation_nt_lv3-defeasibly] of derived-attribute-rule
   (pos-name confiscation_nt_lv3-defeasibly-gen392)
   (depends-on declare unauthorized_tobacco_distribution_lv3 to_confiscate_nt_lv3)
   (implies to_confiscate_nt_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [confiscation_nt_lv3] ) ) ) ?gen354 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ( positive ?gen353 & : ( >= ?gen353 1 ) ) ) ?gen347 <- ( to_confiscate_nt_lv3 ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen349 & : ( not ( member$ confiscation_nt_lv3 $?gen349 ) ) ) ) ( test ( eq ( class ?gen347 ) to_confiscate_nt_lv3 ) ) => ?gen347 <- ( to_confiscate_nt_lv3 ( positive 1 ) ( positive-derivator confiscation_nt_lv3 ?gen354 ) )"))

([confiscation_nt_lv3-overruled-dot] of derived-attribute-rule
   (pos-name confiscation_nt_lv3-overruled-dot-gen394)
   (depends-on declare to_confiscate_nt_lv3 unauthorized_tobacco_distribution_lv3 to_confiscate_nt_lv3)
   (implies to_confiscate_nt_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [confiscation_nt_lv3] ) ) ) ?gen347 <- ( to_confiscate_nt_lv3 ( value 1 ) ( negative-support $?gen350 ) ( negative-overruled $?gen351 & : ( subseq-pos ( create$ confiscation_nt_lv3-overruled $?gen350 $$$ $?gen351 ) ) ) ) ( test ( eq ( class ?gen347 ) to_confiscate_nt_lv3 ) ) ( not ( and ?gen354 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ( positive ?gen353 & : ( >= ?gen353 1 ) ) ) ?gen347 <- ( to_confiscate_nt_lv3 ( positive-defeated $?gen349 & : ( not ( member$ confiscation_nt_lv3 $?gen349 ) ) ) ) ) ) => ( calc ( bind $?gen352 ( delete-member$ $?gen351 ( create$ confiscation_nt_lv3-overruled $?gen350 ) ) ) ) ?gen347 <- ( to_confiscate_nt_lv3 ( negative-overruled $?gen352 ) )"))

([confiscation_nt_lv3-overruled] of derived-attribute-rule
   (pos-name confiscation_nt_lv3-overruled-gen396)
   (depends-on declare unauthorized_tobacco_distribution_lv3 to_confiscate_nt_lv3)
   (implies to_confiscate_nt_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [confiscation_nt_lv3] ) ) ) ?gen354 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ( positive ?gen353 & : ( >= ?gen353 1 ) ) ) ?gen347 <- ( to_confiscate_nt_lv3 ( value 1 ) ( negative-support $?gen350 ) ( negative-overruled $?gen351 & : ( not ( subseq-pos ( create$ confiscation_nt_lv3-overruled $?gen350 $$$ $?gen351 ) ) ) ) ( positive-defeated $?gen349 & : ( not ( member$ confiscation_nt_lv3 $?gen349 ) ) ) ) ( test ( eq ( class ?gen347 ) to_confiscate_nt_lv3 ) ) => ( calc ( bind $?gen352 ( create$ confiscation_nt_lv3-overruled $?gen350 $?gen351 ) ) ) ?gen347 <- ( to_confiscate_nt_lv3 ( negative-overruled $?gen352 ) )"))

([confiscation_nt_lv3-support] of derived-attribute-rule
   (pos-name confiscation_nt_lv3-support-gen398)
   (depends-on declare unauthorized_tobacco_distribution_lv3 to_confiscate_nt_lv3)
   (implies to_confiscate_nt_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [confiscation_nt_lv3] ) ) ) ?gen346 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ) ?gen347 <- ( to_confiscate_nt_lv3 ( value 1 ) ( positive-support $?gen349 & : ( not ( subseq-pos ( create$ confiscation_nt_lv3 ?gen346 $$$ $?gen349 ) ) ) ) ) ( test ( eq ( class ?gen347 ) to_confiscate_nt_lv3 ) ) => ( calc ( bind $?gen352 ( create$ confiscation_nt_lv3 ?gen346 $?gen349 ) ) ) ?gen347 <- ( to_confiscate_nt_lv3 ( positive-support $?gen352 ) )"))

([imprisonment_max_nt_lv3-defeasibly-dot] of derived-attribute-rule
   (pos-name imprisonment_max_nt_lv3-defeasibly-dot-gen400)
   (depends-on declare to_imprison_max_nt_lv3 unauthorized_tobacco_distribution_lv3 to_imprison_max_nt_lv3)
   (implies to_imprison_max_nt_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [imprisonment_max_nt_lv3] ) ) ) ?gen338 <- ( to_imprison_max_nt_lv3 ( value 72 ) ( positive 1 ) ( positive-derivator imprisonment_max_nt_lv3 $? ) ) ( test ( eq ( class ?gen338 ) to_imprison_max_nt_lv3 ) ) ( not ( and ?gen345 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ( positive ?gen344 & : ( >= ?gen344 1 ) ) ) ?gen338 <- ( to_imprison_max_nt_lv3 ( negative ~ 2 ) ( positive-overruled $?gen340 & : ( not ( member$ imprisonment_max_nt_lv3 $?gen340 ) ) ) ) ) ) => ?gen338 <- ( to_imprison_max_nt_lv3 ( positive 0 ) )"))

([imprisonment_max_nt_lv3-defeasibly] of derived-attribute-rule
   (pos-name imprisonment_max_nt_lv3-defeasibly-gen402)
   (depends-on declare unauthorized_tobacco_distribution_lv3 to_imprison_max_nt_lv3)
   (implies to_imprison_max_nt_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [imprisonment_max_nt_lv3] ) ) ) ?gen345 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ( positive ?gen344 & : ( >= ?gen344 1 ) ) ) ?gen338 <- ( to_imprison_max_nt_lv3 ( value 72 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen340 & : ( not ( member$ imprisonment_max_nt_lv3 $?gen340 ) ) ) ) ( test ( eq ( class ?gen338 ) to_imprison_max_nt_lv3 ) ) => ?gen338 <- ( to_imprison_max_nt_lv3 ( positive 1 ) ( positive-derivator imprisonment_max_nt_lv3 ?gen345 ) )"))

([imprisonment_max_nt_lv3-overruled-dot] of derived-attribute-rule
   (pos-name imprisonment_max_nt_lv3-overruled-dot-gen404)
   (depends-on declare to_imprison_max_nt_lv3 unauthorized_tobacco_distribution_lv3 to_imprison_max_nt_lv3)
   (implies to_imprison_max_nt_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [imprisonment_max_nt_lv3] ) ) ) ?gen338 <- ( to_imprison_max_nt_lv3 ( value 72 ) ( negative-support $?gen341 ) ( negative-overruled $?gen342 & : ( subseq-pos ( create$ imprisonment_max_nt_lv3-overruled $?gen341 $$$ $?gen342 ) ) ) ) ( test ( eq ( class ?gen338 ) to_imprison_max_nt_lv3 ) ) ( not ( and ?gen345 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ( positive ?gen344 & : ( >= ?gen344 1 ) ) ) ?gen338 <- ( to_imprison_max_nt_lv3 ( positive-defeated $?gen340 & : ( not ( member$ imprisonment_max_nt_lv3 $?gen340 ) ) ) ) ) ) => ( calc ( bind $?gen343 ( delete-member$ $?gen342 ( create$ imprisonment_max_nt_lv3-overruled $?gen341 ) ) ) ) ?gen338 <- ( to_imprison_max_nt_lv3 ( negative-overruled $?gen343 ) )"))

([imprisonment_max_nt_lv3-overruled] of derived-attribute-rule
   (pos-name imprisonment_max_nt_lv3-overruled-gen406)
   (depends-on declare unauthorized_tobacco_distribution_lv3 to_imprison_max_nt_lv3)
   (implies to_imprison_max_nt_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [imprisonment_max_nt_lv3] ) ) ) ?gen345 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ( positive ?gen344 & : ( >= ?gen344 1 ) ) ) ?gen338 <- ( to_imprison_max_nt_lv3 ( value 72 ) ( negative-support $?gen341 ) ( negative-overruled $?gen342 & : ( not ( subseq-pos ( create$ imprisonment_max_nt_lv3-overruled $?gen341 $$$ $?gen342 ) ) ) ) ( positive-defeated $?gen340 & : ( not ( member$ imprisonment_max_nt_lv3 $?gen340 ) ) ) ) ( test ( eq ( class ?gen338 ) to_imprison_max_nt_lv3 ) ) => ( calc ( bind $?gen343 ( create$ imprisonment_max_nt_lv3-overruled $?gen341 $?gen342 ) ) ) ?gen338 <- ( to_imprison_max_nt_lv3 ( negative-overruled $?gen343 ) )"))

([imprisonment_max_nt_lv3-support] of derived-attribute-rule
   (pos-name imprisonment_max_nt_lv3-support-gen408)
   (depends-on declare unauthorized_tobacco_distribution_lv3 to_imprison_max_nt_lv3)
   (implies to_imprison_max_nt_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [imprisonment_max_nt_lv3] ) ) ) ?gen337 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ) ?gen338 <- ( to_imprison_max_nt_lv3 ( value 72 ) ( positive-support $?gen340 & : ( not ( subseq-pos ( create$ imprisonment_max_nt_lv3 ?gen337 $$$ $?gen340 ) ) ) ) ) ( test ( eq ( class ?gen338 ) to_imprison_max_nt_lv3 ) ) => ( calc ( bind $?gen343 ( create$ imprisonment_max_nt_lv3 ?gen337 $?gen340 ) ) ) ?gen338 <- ( to_imprison_max_nt_lv3 ( positive-support $?gen343 ) )"))

([imprisonment_min_nt_lv3-defeasibly-dot] of derived-attribute-rule
   (pos-name imprisonment_min_nt_lv3-defeasibly-dot-gen410)
   (depends-on declare to_imprison_min_nt_lv3 unauthorized_tobacco_distribution_lv3 to_imprison_min_nt_lv3)
   (implies to_imprison_min_nt_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [imprisonment_min_nt_lv3] ) ) ) ?gen329 <- ( to_imprison_min_nt_lv3 ( value 12 ) ( positive 1 ) ( positive-derivator imprisonment_min_nt_lv3 $? ) ) ( test ( eq ( class ?gen329 ) to_imprison_min_nt_lv3 ) ) ( not ( and ?gen336 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ( positive ?gen335 & : ( >= ?gen335 1 ) ) ) ?gen329 <- ( to_imprison_min_nt_lv3 ( negative ~ 2 ) ( positive-overruled $?gen331 & : ( not ( member$ imprisonment_min_nt_lv3 $?gen331 ) ) ) ) ) ) => ?gen329 <- ( to_imprison_min_nt_lv3 ( positive 0 ) )"))

([imprisonment_min_nt_lv3-defeasibly] of derived-attribute-rule
   (pos-name imprisonment_min_nt_lv3-defeasibly-gen412)
   (depends-on declare unauthorized_tobacco_distribution_lv3 to_imprison_min_nt_lv3)
   (implies to_imprison_min_nt_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [imprisonment_min_nt_lv3] ) ) ) ?gen336 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ( positive ?gen335 & : ( >= ?gen335 1 ) ) ) ?gen329 <- ( to_imprison_min_nt_lv3 ( value 12 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen331 & : ( not ( member$ imprisonment_min_nt_lv3 $?gen331 ) ) ) ) ( test ( eq ( class ?gen329 ) to_imprison_min_nt_lv3 ) ) => ?gen329 <- ( to_imprison_min_nt_lv3 ( positive 1 ) ( positive-derivator imprisonment_min_nt_lv3 ?gen336 ) )"))

([imprisonment_min_nt_lv3-overruled-dot] of derived-attribute-rule
   (pos-name imprisonment_min_nt_lv3-overruled-dot-gen414)
   (depends-on declare to_imprison_min_nt_lv3 unauthorized_tobacco_distribution_lv3 to_imprison_min_nt_lv3)
   (implies to_imprison_min_nt_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [imprisonment_min_nt_lv3] ) ) ) ?gen329 <- ( to_imprison_min_nt_lv3 ( value 12 ) ( negative-support $?gen332 ) ( negative-overruled $?gen333 & : ( subseq-pos ( create$ imprisonment_min_nt_lv3-overruled $?gen332 $$$ $?gen333 ) ) ) ) ( test ( eq ( class ?gen329 ) to_imprison_min_nt_lv3 ) ) ( not ( and ?gen336 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ( positive ?gen335 & : ( >= ?gen335 1 ) ) ) ?gen329 <- ( to_imprison_min_nt_lv3 ( positive-defeated $?gen331 & : ( not ( member$ imprisonment_min_nt_lv3 $?gen331 ) ) ) ) ) ) => ( calc ( bind $?gen334 ( delete-member$ $?gen333 ( create$ imprisonment_min_nt_lv3-overruled $?gen332 ) ) ) ) ?gen329 <- ( to_imprison_min_nt_lv3 ( negative-overruled $?gen334 ) )"))

([imprisonment_min_nt_lv3-overruled] of derived-attribute-rule
   (pos-name imprisonment_min_nt_lv3-overruled-gen416)
   (depends-on declare unauthorized_tobacco_distribution_lv3 to_imprison_min_nt_lv3)
   (implies to_imprison_min_nt_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [imprisonment_min_nt_lv3] ) ) ) ?gen336 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ( positive ?gen335 & : ( >= ?gen335 1 ) ) ) ?gen329 <- ( to_imprison_min_nt_lv3 ( value 12 ) ( negative-support $?gen332 ) ( negative-overruled $?gen333 & : ( not ( subseq-pos ( create$ imprisonment_min_nt_lv3-overruled $?gen332 $$$ $?gen333 ) ) ) ) ( positive-defeated $?gen331 & : ( not ( member$ imprisonment_min_nt_lv3 $?gen331 ) ) ) ) ( test ( eq ( class ?gen329 ) to_imprison_min_nt_lv3 ) ) => ( calc ( bind $?gen334 ( create$ imprisonment_min_nt_lv3-overruled $?gen332 $?gen333 ) ) ) ?gen329 <- ( to_imprison_min_nt_lv3 ( negative-overruled $?gen334 ) )"))

([imprisonment_min_nt_lv3-support] of derived-attribute-rule
   (pos-name imprisonment_min_nt_lv3-support-gen418)
   (depends-on declare unauthorized_tobacco_distribution_lv3 to_imprison_min_nt_lv3)
   (implies to_imprison_min_nt_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [imprisonment_min_nt_lv3] ) ) ) ?gen328 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ) ?gen329 <- ( to_imprison_min_nt_lv3 ( value 12 ) ( positive-support $?gen331 & : ( not ( subseq-pos ( create$ imprisonment_min_nt_lv3 ?gen328 $$$ $?gen331 ) ) ) ) ) ( test ( eq ( class ?gen329 ) to_imprison_min_nt_lv3 ) ) => ( calc ( bind $?gen334 ( create$ imprisonment_min_nt_lv3 ?gen328 $?gen331 ) ) ) ?gen329 <- ( to_imprison_min_nt_lv3 ( positive-support $?gen334 ) )"))

([confiscation_nt_lv2p-defeasibly-dot] of derived-attribute-rule
   (pos-name confiscation_nt_lv2p-defeasibly-dot-gen420)
   (depends-on declare to_confiscate_nt_lv2p unauthorized_tobacco_distribution_lv2p to_confiscate_nt_lv2p)
   (implies to_confiscate_nt_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [confiscation_nt_lv2p] ) ) ) ?gen320 <- ( to_confiscate_nt_lv2p ( value 1 ) ( positive 1 ) ( positive-derivator confiscation_nt_lv2p $? ) ) ( test ( eq ( class ?gen320 ) to_confiscate_nt_lv2p ) ) ( not ( and ?gen327 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ( positive ?gen326 & : ( >= ?gen326 1 ) ) ) ?gen320 <- ( to_confiscate_nt_lv2p ( negative ~ 2 ) ( positive-overruled $?gen322 & : ( not ( member$ confiscation_nt_lv2p $?gen322 ) ) ) ) ) ) => ?gen320 <- ( to_confiscate_nt_lv2p ( positive 0 ) )"))

([confiscation_nt_lv2p-defeasibly] of derived-attribute-rule
   (pos-name confiscation_nt_lv2p-defeasibly-gen422)
   (depends-on declare unauthorized_tobacco_distribution_lv2p to_confiscate_nt_lv2p)
   (implies to_confiscate_nt_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [confiscation_nt_lv2p] ) ) ) ?gen327 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ( positive ?gen326 & : ( >= ?gen326 1 ) ) ) ?gen320 <- ( to_confiscate_nt_lv2p ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen322 & : ( not ( member$ confiscation_nt_lv2p $?gen322 ) ) ) ) ( test ( eq ( class ?gen320 ) to_confiscate_nt_lv2p ) ) => ?gen320 <- ( to_confiscate_nt_lv2p ( positive 1 ) ( positive-derivator confiscation_nt_lv2p ?gen327 ) )"))

([confiscation_nt_lv2p-overruled-dot] of derived-attribute-rule
   (pos-name confiscation_nt_lv2p-overruled-dot-gen424)
   (depends-on declare to_confiscate_nt_lv2p unauthorized_tobacco_distribution_lv2p to_confiscate_nt_lv2p)
   (implies to_confiscate_nt_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [confiscation_nt_lv2p] ) ) ) ?gen320 <- ( to_confiscate_nt_lv2p ( value 1 ) ( negative-support $?gen323 ) ( negative-overruled $?gen324 & : ( subseq-pos ( create$ confiscation_nt_lv2p-overruled $?gen323 $$$ $?gen324 ) ) ) ) ( test ( eq ( class ?gen320 ) to_confiscate_nt_lv2p ) ) ( not ( and ?gen327 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ( positive ?gen326 & : ( >= ?gen326 1 ) ) ) ?gen320 <- ( to_confiscate_nt_lv2p ( positive-defeated $?gen322 & : ( not ( member$ confiscation_nt_lv2p $?gen322 ) ) ) ) ) ) => ( calc ( bind $?gen325 ( delete-member$ $?gen324 ( create$ confiscation_nt_lv2p-overruled $?gen323 ) ) ) ) ?gen320 <- ( to_confiscate_nt_lv2p ( negative-overruled $?gen325 ) )"))

([confiscation_nt_lv2p-overruled] of derived-attribute-rule
   (pos-name confiscation_nt_lv2p-overruled-gen426)
   (depends-on declare unauthorized_tobacco_distribution_lv2p to_confiscate_nt_lv2p)
   (implies to_confiscate_nt_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [confiscation_nt_lv2p] ) ) ) ?gen327 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ( positive ?gen326 & : ( >= ?gen326 1 ) ) ) ?gen320 <- ( to_confiscate_nt_lv2p ( value 1 ) ( negative-support $?gen323 ) ( negative-overruled $?gen324 & : ( not ( subseq-pos ( create$ confiscation_nt_lv2p-overruled $?gen323 $$$ $?gen324 ) ) ) ) ( positive-defeated $?gen322 & : ( not ( member$ confiscation_nt_lv2p $?gen322 ) ) ) ) ( test ( eq ( class ?gen320 ) to_confiscate_nt_lv2p ) ) => ( calc ( bind $?gen325 ( create$ confiscation_nt_lv2p-overruled $?gen323 $?gen324 ) ) ) ?gen320 <- ( to_confiscate_nt_lv2p ( negative-overruled $?gen325 ) )"))

([confiscation_nt_lv2p-support] of derived-attribute-rule
   (pos-name confiscation_nt_lv2p-support-gen428)
   (depends-on declare unauthorized_tobacco_distribution_lv2p to_confiscate_nt_lv2p)
   (implies to_confiscate_nt_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [confiscation_nt_lv2p] ) ) ) ?gen319 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ) ?gen320 <- ( to_confiscate_nt_lv2p ( value 1 ) ( positive-support $?gen322 & : ( not ( subseq-pos ( create$ confiscation_nt_lv2p ?gen319 $$$ $?gen322 ) ) ) ) ) ( test ( eq ( class ?gen320 ) to_confiscate_nt_lv2p ) ) => ( calc ( bind $?gen325 ( create$ confiscation_nt_lv2p ?gen319 $?gen322 ) ) ) ?gen320 <- ( to_confiscate_nt_lv2p ( positive-support $?gen325 ) )"))

([imprisonment_max_nt_lv2p-defeasibly-dot] of derived-attribute-rule
   (pos-name imprisonment_max_nt_lv2p-defeasibly-dot-gen430)
   (depends-on declare to_imprison_max_nt_lv2p unauthorized_tobacco_distribution_lv2p to_imprison_max_nt_lv2p)
   (implies to_imprison_max_nt_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [imprisonment_max_nt_lv2p] ) ) ) ?gen311 <- ( to_imprison_max_nt_lv2p ( value 60 ) ( positive 1 ) ( positive-derivator imprisonment_max_nt_lv2p $? ) ) ( test ( eq ( class ?gen311 ) to_imprison_max_nt_lv2p ) ) ( not ( and ?gen318 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ( positive ?gen317 & : ( >= ?gen317 1 ) ) ) ?gen311 <- ( to_imprison_max_nt_lv2p ( negative ~ 2 ) ( positive-overruled $?gen313 & : ( not ( member$ imprisonment_max_nt_lv2p $?gen313 ) ) ) ) ) ) => ?gen311 <- ( to_imprison_max_nt_lv2p ( positive 0 ) )"))

([imprisonment_max_nt_lv2p-defeasibly] of derived-attribute-rule
   (pos-name imprisonment_max_nt_lv2p-defeasibly-gen432)
   (depends-on declare unauthorized_tobacco_distribution_lv2p to_imprison_max_nt_lv2p)
   (implies to_imprison_max_nt_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [imprisonment_max_nt_lv2p] ) ) ) ?gen318 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ( positive ?gen317 & : ( >= ?gen317 1 ) ) ) ?gen311 <- ( to_imprison_max_nt_lv2p ( value 60 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen313 & : ( not ( member$ imprisonment_max_nt_lv2p $?gen313 ) ) ) ) ( test ( eq ( class ?gen311 ) to_imprison_max_nt_lv2p ) ) => ?gen311 <- ( to_imprison_max_nt_lv2p ( positive 1 ) ( positive-derivator imprisonment_max_nt_lv2p ?gen318 ) )"))

([imprisonment_max_nt_lv2p-overruled-dot] of derived-attribute-rule
   (pos-name imprisonment_max_nt_lv2p-overruled-dot-gen434)
   (depends-on declare to_imprison_max_nt_lv2p unauthorized_tobacco_distribution_lv2p to_imprison_max_nt_lv2p)
   (implies to_imprison_max_nt_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [imprisonment_max_nt_lv2p] ) ) ) ?gen311 <- ( to_imprison_max_nt_lv2p ( value 60 ) ( negative-support $?gen314 ) ( negative-overruled $?gen315 & : ( subseq-pos ( create$ imprisonment_max_nt_lv2p-overruled $?gen314 $$$ $?gen315 ) ) ) ) ( test ( eq ( class ?gen311 ) to_imprison_max_nt_lv2p ) ) ( not ( and ?gen318 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ( positive ?gen317 & : ( >= ?gen317 1 ) ) ) ?gen311 <- ( to_imprison_max_nt_lv2p ( positive-defeated $?gen313 & : ( not ( member$ imprisonment_max_nt_lv2p $?gen313 ) ) ) ) ) ) => ( calc ( bind $?gen316 ( delete-member$ $?gen315 ( create$ imprisonment_max_nt_lv2p-overruled $?gen314 ) ) ) ) ?gen311 <- ( to_imprison_max_nt_lv2p ( negative-overruled $?gen316 ) )"))

([imprisonment_max_nt_lv2p-overruled] of derived-attribute-rule
   (pos-name imprisonment_max_nt_lv2p-overruled-gen436)
   (depends-on declare unauthorized_tobacco_distribution_lv2p to_imprison_max_nt_lv2p)
   (implies to_imprison_max_nt_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [imprisonment_max_nt_lv2p] ) ) ) ?gen318 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ( positive ?gen317 & : ( >= ?gen317 1 ) ) ) ?gen311 <- ( to_imprison_max_nt_lv2p ( value 60 ) ( negative-support $?gen314 ) ( negative-overruled $?gen315 & : ( not ( subseq-pos ( create$ imprisonment_max_nt_lv2p-overruled $?gen314 $$$ $?gen315 ) ) ) ) ( positive-defeated $?gen313 & : ( not ( member$ imprisonment_max_nt_lv2p $?gen313 ) ) ) ) ( test ( eq ( class ?gen311 ) to_imprison_max_nt_lv2p ) ) => ( calc ( bind $?gen316 ( create$ imprisonment_max_nt_lv2p-overruled $?gen314 $?gen315 ) ) ) ?gen311 <- ( to_imprison_max_nt_lv2p ( negative-overruled $?gen316 ) )"))

([imprisonment_max_nt_lv2p-support] of derived-attribute-rule
   (pos-name imprisonment_max_nt_lv2p-support-gen438)
   (depends-on declare unauthorized_tobacco_distribution_lv2p to_imprison_max_nt_lv2p)
   (implies to_imprison_max_nt_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [imprisonment_max_nt_lv2p] ) ) ) ?gen310 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ) ?gen311 <- ( to_imprison_max_nt_lv2p ( value 60 ) ( positive-support $?gen313 & : ( not ( subseq-pos ( create$ imprisonment_max_nt_lv2p ?gen310 $$$ $?gen313 ) ) ) ) ) ( test ( eq ( class ?gen311 ) to_imprison_max_nt_lv2p ) ) => ( calc ( bind $?gen316 ( create$ imprisonment_max_nt_lv2p ?gen310 $?gen313 ) ) ) ?gen311 <- ( to_imprison_max_nt_lv2p ( positive-support $?gen316 ) )"))

([imprisonment_min_nt_lv2p-defeasibly-dot] of derived-attribute-rule
   (pos-name imprisonment_min_nt_lv2p-defeasibly-dot-gen440)
   (depends-on declare to_imprison_min_nt_lv2p unauthorized_tobacco_distribution_lv2p to_imprison_min_nt_lv2p)
   (implies to_imprison_min_nt_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [imprisonment_min_nt_lv2p] ) ) ) ?gen302 <- ( to_imprison_min_nt_lv2p ( value 6 ) ( positive 1 ) ( positive-derivator imprisonment_min_nt_lv2p $? ) ) ( test ( eq ( class ?gen302 ) to_imprison_min_nt_lv2p ) ) ( not ( and ?gen309 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ( positive ?gen308 & : ( >= ?gen308 1 ) ) ) ?gen302 <- ( to_imprison_min_nt_lv2p ( negative ~ 2 ) ( positive-overruled $?gen304 & : ( not ( member$ imprisonment_min_nt_lv2p $?gen304 ) ) ) ) ) ) => ?gen302 <- ( to_imprison_min_nt_lv2p ( positive 0 ) )"))

([imprisonment_min_nt_lv2p-defeasibly] of derived-attribute-rule
   (pos-name imprisonment_min_nt_lv2p-defeasibly-gen442)
   (depends-on declare unauthorized_tobacco_distribution_lv2p to_imprison_min_nt_lv2p)
   (implies to_imprison_min_nt_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [imprisonment_min_nt_lv2p] ) ) ) ?gen309 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ( positive ?gen308 & : ( >= ?gen308 1 ) ) ) ?gen302 <- ( to_imprison_min_nt_lv2p ( value 6 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen304 & : ( not ( member$ imprisonment_min_nt_lv2p $?gen304 ) ) ) ) ( test ( eq ( class ?gen302 ) to_imprison_min_nt_lv2p ) ) => ?gen302 <- ( to_imprison_min_nt_lv2p ( positive 1 ) ( positive-derivator imprisonment_min_nt_lv2p ?gen309 ) )"))

([imprisonment_min_nt_lv2p-overruled-dot] of derived-attribute-rule
   (pos-name imprisonment_min_nt_lv2p-overruled-dot-gen444)
   (depends-on declare to_imprison_min_nt_lv2p unauthorized_tobacco_distribution_lv2p to_imprison_min_nt_lv2p)
   (implies to_imprison_min_nt_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [imprisonment_min_nt_lv2p] ) ) ) ?gen302 <- ( to_imprison_min_nt_lv2p ( value 6 ) ( negative-support $?gen305 ) ( negative-overruled $?gen306 & : ( subseq-pos ( create$ imprisonment_min_nt_lv2p-overruled $?gen305 $$$ $?gen306 ) ) ) ) ( test ( eq ( class ?gen302 ) to_imprison_min_nt_lv2p ) ) ( not ( and ?gen309 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ( positive ?gen308 & : ( >= ?gen308 1 ) ) ) ?gen302 <- ( to_imprison_min_nt_lv2p ( positive-defeated $?gen304 & : ( not ( member$ imprisonment_min_nt_lv2p $?gen304 ) ) ) ) ) ) => ( calc ( bind $?gen307 ( delete-member$ $?gen306 ( create$ imprisonment_min_nt_lv2p-overruled $?gen305 ) ) ) ) ?gen302 <- ( to_imprison_min_nt_lv2p ( negative-overruled $?gen307 ) )"))

([imprisonment_min_nt_lv2p-overruled] of derived-attribute-rule
   (pos-name imprisonment_min_nt_lv2p-overruled-gen446)
   (depends-on declare unauthorized_tobacco_distribution_lv2p to_imprison_min_nt_lv2p)
   (implies to_imprison_min_nt_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [imprisonment_min_nt_lv2p] ) ) ) ?gen309 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ( positive ?gen308 & : ( >= ?gen308 1 ) ) ) ?gen302 <- ( to_imprison_min_nt_lv2p ( value 6 ) ( negative-support $?gen305 ) ( negative-overruled $?gen306 & : ( not ( subseq-pos ( create$ imprisonment_min_nt_lv2p-overruled $?gen305 $$$ $?gen306 ) ) ) ) ( positive-defeated $?gen304 & : ( not ( member$ imprisonment_min_nt_lv2p $?gen304 ) ) ) ) ( test ( eq ( class ?gen302 ) to_imprison_min_nt_lv2p ) ) => ( calc ( bind $?gen307 ( create$ imprisonment_min_nt_lv2p-overruled $?gen305 $?gen306 ) ) ) ?gen302 <- ( to_imprison_min_nt_lv2p ( negative-overruled $?gen307 ) )"))

([imprisonment_min_nt_lv2p-support] of derived-attribute-rule
   (pos-name imprisonment_min_nt_lv2p-support-gen448)
   (depends-on declare unauthorized_tobacco_distribution_lv2p to_imprison_min_nt_lv2p)
   (implies to_imprison_min_nt_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [imprisonment_min_nt_lv2p] ) ) ) ?gen301 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ) ?gen302 <- ( to_imprison_min_nt_lv2p ( value 6 ) ( positive-support $?gen304 & : ( not ( subseq-pos ( create$ imprisonment_min_nt_lv2p ?gen301 $$$ $?gen304 ) ) ) ) ) ( test ( eq ( class ?gen302 ) to_imprison_min_nt_lv2p ) ) => ( calc ( bind $?gen307 ( create$ imprisonment_min_nt_lv2p ?gen301 $?gen304 ) ) ) ?gen302 <- ( to_imprison_min_nt_lv2p ( positive-support $?gen307 ) )"))

([confiscation_nt_lv2n-defeasibly-dot] of derived-attribute-rule
   (pos-name confiscation_nt_lv2n-defeasibly-dot-gen450)
   (depends-on declare to_confiscate_nt_lv2n unauthorized_tobacco_distribution_lv2n to_confiscate_nt_lv2n)
   (implies to_confiscate_nt_lv2n)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [confiscation_nt_lv2n] ) ) ) ?gen293 <- ( to_confiscate_nt_lv2n ( value 1 ) ( positive 1 ) ( positive-derivator confiscation_nt_lv2n $? ) ) ( test ( eq ( class ?gen293 ) to_confiscate_nt_lv2n ) ) ( not ( and ?gen300 <- ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ( positive ?gen299 & : ( >= ?gen299 1 ) ) ) ?gen293 <- ( to_confiscate_nt_lv2n ( negative ~ 2 ) ( positive-overruled $?gen295 & : ( not ( member$ confiscation_nt_lv2n $?gen295 ) ) ) ) ) ) => ?gen293 <- ( to_confiscate_nt_lv2n ( positive 0 ) )"))

([confiscation_nt_lv2n-defeasibly] of derived-attribute-rule
   (pos-name confiscation_nt_lv2n-defeasibly-gen452)
   (depends-on declare unauthorized_tobacco_distribution_lv2n to_confiscate_nt_lv2n)
   (implies to_confiscate_nt_lv2n)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [confiscation_nt_lv2n] ) ) ) ?gen300 <- ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ( positive ?gen299 & : ( >= ?gen299 1 ) ) ) ?gen293 <- ( to_confiscate_nt_lv2n ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen295 & : ( not ( member$ confiscation_nt_lv2n $?gen295 ) ) ) ) ( test ( eq ( class ?gen293 ) to_confiscate_nt_lv2n ) ) => ?gen293 <- ( to_confiscate_nt_lv2n ( positive 1 ) ( positive-derivator confiscation_nt_lv2n ?gen300 ) )"))

([confiscation_nt_lv2n-overruled-dot] of derived-attribute-rule
   (pos-name confiscation_nt_lv2n-overruled-dot-gen454)
   (depends-on declare to_confiscate_nt_lv2n unauthorized_tobacco_distribution_lv2n to_confiscate_nt_lv2n)
   (implies to_confiscate_nt_lv2n)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [confiscation_nt_lv2n] ) ) ) ?gen293 <- ( to_confiscate_nt_lv2n ( value 1 ) ( negative-support $?gen296 ) ( negative-overruled $?gen297 & : ( subseq-pos ( create$ confiscation_nt_lv2n-overruled $?gen296 $$$ $?gen297 ) ) ) ) ( test ( eq ( class ?gen293 ) to_confiscate_nt_lv2n ) ) ( not ( and ?gen300 <- ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ( positive ?gen299 & : ( >= ?gen299 1 ) ) ) ?gen293 <- ( to_confiscate_nt_lv2n ( positive-defeated $?gen295 & : ( not ( member$ confiscation_nt_lv2n $?gen295 ) ) ) ) ) ) => ( calc ( bind $?gen298 ( delete-member$ $?gen297 ( create$ confiscation_nt_lv2n-overruled $?gen296 ) ) ) ) ?gen293 <- ( to_confiscate_nt_lv2n ( negative-overruled $?gen298 ) )"))

([confiscation_nt_lv2n-overruled] of derived-attribute-rule
   (pos-name confiscation_nt_lv2n-overruled-gen456)
   (depends-on declare unauthorized_tobacco_distribution_lv2n to_confiscate_nt_lv2n)
   (implies to_confiscate_nt_lv2n)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [confiscation_nt_lv2n] ) ) ) ?gen300 <- ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ( positive ?gen299 & : ( >= ?gen299 1 ) ) ) ?gen293 <- ( to_confiscate_nt_lv2n ( value 1 ) ( negative-support $?gen296 ) ( negative-overruled $?gen297 & : ( not ( subseq-pos ( create$ confiscation_nt_lv2n-overruled $?gen296 $$$ $?gen297 ) ) ) ) ( positive-defeated $?gen295 & : ( not ( member$ confiscation_nt_lv2n $?gen295 ) ) ) ) ( test ( eq ( class ?gen293 ) to_confiscate_nt_lv2n ) ) => ( calc ( bind $?gen298 ( create$ confiscation_nt_lv2n-overruled $?gen296 $?gen297 ) ) ) ?gen293 <- ( to_confiscate_nt_lv2n ( negative-overruled $?gen298 ) )"))

([confiscation_nt_lv2n-support] of derived-attribute-rule
   (pos-name confiscation_nt_lv2n-support-gen458)
   (depends-on declare unauthorized_tobacco_distribution_lv2n to_confiscate_nt_lv2n)
   (implies to_confiscate_nt_lv2n)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [confiscation_nt_lv2n] ) ) ) ?gen292 <- ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ) ?gen293 <- ( to_confiscate_nt_lv2n ( value 1 ) ( positive-support $?gen295 & : ( not ( subseq-pos ( create$ confiscation_nt_lv2n ?gen292 $$$ $?gen295 ) ) ) ) ) ( test ( eq ( class ?gen293 ) to_confiscate_nt_lv2n ) ) => ( calc ( bind $?gen298 ( create$ confiscation_nt_lv2n ?gen292 $?gen295 ) ) ) ?gen293 <- ( to_confiscate_nt_lv2n ( positive-support $?gen298 ) )"))

([imprisonment_max_nt_lv2n-defeasibly-dot] of derived-attribute-rule
   (pos-name imprisonment_max_nt_lv2n-defeasibly-dot-gen460)
   (depends-on declare to_imprison_max_nt_lv2n unauthorized_tobacco_distribution_lv2n to_imprison_max_nt_lv2n)
   (implies to_imprison_max_nt_lv2n)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [imprisonment_max_nt_lv2n] ) ) ) ?gen284 <- ( to_imprison_max_nt_lv2n ( value 60 ) ( positive 1 ) ( positive-derivator imprisonment_max_nt_lv2n $? ) ) ( test ( eq ( class ?gen284 ) to_imprison_max_nt_lv2n ) ) ( not ( and ?gen291 <- ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ( positive ?gen290 & : ( >= ?gen290 1 ) ) ) ?gen284 <- ( to_imprison_max_nt_lv2n ( negative ~ 2 ) ( positive-overruled $?gen286 & : ( not ( member$ imprisonment_max_nt_lv2n $?gen286 ) ) ) ) ) ) => ?gen284 <- ( to_imprison_max_nt_lv2n ( positive 0 ) )"))

([imprisonment_max_nt_lv2n-defeasibly] of derived-attribute-rule
   (pos-name imprisonment_max_nt_lv2n-defeasibly-gen462)
   (depends-on declare unauthorized_tobacco_distribution_lv2n to_imprison_max_nt_lv2n)
   (implies to_imprison_max_nt_lv2n)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [imprisonment_max_nt_lv2n] ) ) ) ?gen291 <- ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ( positive ?gen290 & : ( >= ?gen290 1 ) ) ) ?gen284 <- ( to_imprison_max_nt_lv2n ( value 60 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen286 & : ( not ( member$ imprisonment_max_nt_lv2n $?gen286 ) ) ) ) ( test ( eq ( class ?gen284 ) to_imprison_max_nt_lv2n ) ) => ?gen284 <- ( to_imprison_max_nt_lv2n ( positive 1 ) ( positive-derivator imprisonment_max_nt_lv2n ?gen291 ) )"))

([imprisonment_max_nt_lv2n-overruled-dot] of derived-attribute-rule
   (pos-name imprisonment_max_nt_lv2n-overruled-dot-gen464)
   (depends-on declare to_imprison_max_nt_lv2n unauthorized_tobacco_distribution_lv2n to_imprison_max_nt_lv2n)
   (implies to_imprison_max_nt_lv2n)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [imprisonment_max_nt_lv2n] ) ) ) ?gen284 <- ( to_imprison_max_nt_lv2n ( value 60 ) ( negative-support $?gen287 ) ( negative-overruled $?gen288 & : ( subseq-pos ( create$ imprisonment_max_nt_lv2n-overruled $?gen287 $$$ $?gen288 ) ) ) ) ( test ( eq ( class ?gen284 ) to_imprison_max_nt_lv2n ) ) ( not ( and ?gen291 <- ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ( positive ?gen290 & : ( >= ?gen290 1 ) ) ) ?gen284 <- ( to_imprison_max_nt_lv2n ( positive-defeated $?gen286 & : ( not ( member$ imprisonment_max_nt_lv2n $?gen286 ) ) ) ) ) ) => ( calc ( bind $?gen289 ( delete-member$ $?gen288 ( create$ imprisonment_max_nt_lv2n-overruled $?gen287 ) ) ) ) ?gen284 <- ( to_imprison_max_nt_lv2n ( negative-overruled $?gen289 ) )"))

([imprisonment_max_nt_lv2n-overruled] of derived-attribute-rule
   (pos-name imprisonment_max_nt_lv2n-overruled-gen466)
   (depends-on declare unauthorized_tobacco_distribution_lv2n to_imprison_max_nt_lv2n)
   (implies to_imprison_max_nt_lv2n)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [imprisonment_max_nt_lv2n] ) ) ) ?gen291 <- ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ( positive ?gen290 & : ( >= ?gen290 1 ) ) ) ?gen284 <- ( to_imprison_max_nt_lv2n ( value 60 ) ( negative-support $?gen287 ) ( negative-overruled $?gen288 & : ( not ( subseq-pos ( create$ imprisonment_max_nt_lv2n-overruled $?gen287 $$$ $?gen288 ) ) ) ) ( positive-defeated $?gen286 & : ( not ( member$ imprisonment_max_nt_lv2n $?gen286 ) ) ) ) ( test ( eq ( class ?gen284 ) to_imprison_max_nt_lv2n ) ) => ( calc ( bind $?gen289 ( create$ imprisonment_max_nt_lv2n-overruled $?gen287 $?gen288 ) ) ) ?gen284 <- ( to_imprison_max_nt_lv2n ( negative-overruled $?gen289 ) )"))

([imprisonment_max_nt_lv2n-support] of derived-attribute-rule
   (pos-name imprisonment_max_nt_lv2n-support-gen468)
   (depends-on declare unauthorized_tobacco_distribution_lv2n to_imprison_max_nt_lv2n)
   (implies to_imprison_max_nt_lv2n)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [imprisonment_max_nt_lv2n] ) ) ) ?gen283 <- ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ) ?gen284 <- ( to_imprison_max_nt_lv2n ( value 60 ) ( positive-support $?gen286 & : ( not ( subseq-pos ( create$ imprisonment_max_nt_lv2n ?gen283 $$$ $?gen286 ) ) ) ) ) ( test ( eq ( class ?gen284 ) to_imprison_max_nt_lv2n ) ) => ( calc ( bind $?gen289 ( create$ imprisonment_max_nt_lv2n ?gen283 $?gen286 ) ) ) ?gen284 <- ( to_imprison_max_nt_lv2n ( positive-support $?gen289 ) )"))

([imprisonment_min_nt_lv2n-defeasibly-dot] of derived-attribute-rule
   (pos-name imprisonment_min_nt_lv2n-defeasibly-dot-gen470)
   (depends-on declare to_imprison_min_nt_lv2n unauthorized_tobacco_distribution_lv2n to_imprison_min_nt_lv2n)
   (implies to_imprison_min_nt_lv2n)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [imprisonment_min_nt_lv2n] ) ) ) ?gen275 <- ( to_imprison_min_nt_lv2n ( value 6 ) ( positive 1 ) ( positive-derivator imprisonment_min_nt_lv2n $? ) ) ( test ( eq ( class ?gen275 ) to_imprison_min_nt_lv2n ) ) ( not ( and ?gen282 <- ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ( positive ?gen281 & : ( >= ?gen281 1 ) ) ) ?gen275 <- ( to_imprison_min_nt_lv2n ( negative ~ 2 ) ( positive-overruled $?gen277 & : ( not ( member$ imprisonment_min_nt_lv2n $?gen277 ) ) ) ) ) ) => ?gen275 <- ( to_imprison_min_nt_lv2n ( positive 0 ) )"))

([imprisonment_min_nt_lv2n-defeasibly] of derived-attribute-rule
   (pos-name imprisonment_min_nt_lv2n-defeasibly-gen472)
   (depends-on declare unauthorized_tobacco_distribution_lv2n to_imprison_min_nt_lv2n)
   (implies to_imprison_min_nt_lv2n)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [imprisonment_min_nt_lv2n] ) ) ) ?gen282 <- ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ( positive ?gen281 & : ( >= ?gen281 1 ) ) ) ?gen275 <- ( to_imprison_min_nt_lv2n ( value 6 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen277 & : ( not ( member$ imprisonment_min_nt_lv2n $?gen277 ) ) ) ) ( test ( eq ( class ?gen275 ) to_imprison_min_nt_lv2n ) ) => ?gen275 <- ( to_imprison_min_nt_lv2n ( positive 1 ) ( positive-derivator imprisonment_min_nt_lv2n ?gen282 ) )"))

([imprisonment_min_nt_lv2n-overruled-dot] of derived-attribute-rule
   (pos-name imprisonment_min_nt_lv2n-overruled-dot-gen474)
   (depends-on declare to_imprison_min_nt_lv2n unauthorized_tobacco_distribution_lv2n to_imprison_min_nt_lv2n)
   (implies to_imprison_min_nt_lv2n)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [imprisonment_min_nt_lv2n] ) ) ) ?gen275 <- ( to_imprison_min_nt_lv2n ( value 6 ) ( negative-support $?gen278 ) ( negative-overruled $?gen279 & : ( subseq-pos ( create$ imprisonment_min_nt_lv2n-overruled $?gen278 $$$ $?gen279 ) ) ) ) ( test ( eq ( class ?gen275 ) to_imprison_min_nt_lv2n ) ) ( not ( and ?gen282 <- ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ( positive ?gen281 & : ( >= ?gen281 1 ) ) ) ?gen275 <- ( to_imprison_min_nt_lv2n ( positive-defeated $?gen277 & : ( not ( member$ imprisonment_min_nt_lv2n $?gen277 ) ) ) ) ) ) => ( calc ( bind $?gen280 ( delete-member$ $?gen279 ( create$ imprisonment_min_nt_lv2n-overruled $?gen278 ) ) ) ) ?gen275 <- ( to_imprison_min_nt_lv2n ( negative-overruled $?gen280 ) )"))

([imprisonment_min_nt_lv2n-overruled] of derived-attribute-rule
   (pos-name imprisonment_min_nt_lv2n-overruled-gen476)
   (depends-on declare unauthorized_tobacco_distribution_lv2n to_imprison_min_nt_lv2n)
   (implies to_imprison_min_nt_lv2n)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [imprisonment_min_nt_lv2n] ) ) ) ?gen282 <- ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ( positive ?gen281 & : ( >= ?gen281 1 ) ) ) ?gen275 <- ( to_imprison_min_nt_lv2n ( value 6 ) ( negative-support $?gen278 ) ( negative-overruled $?gen279 & : ( not ( subseq-pos ( create$ imprisonment_min_nt_lv2n-overruled $?gen278 $$$ $?gen279 ) ) ) ) ( positive-defeated $?gen277 & : ( not ( member$ imprisonment_min_nt_lv2n $?gen277 ) ) ) ) ( test ( eq ( class ?gen275 ) to_imprison_min_nt_lv2n ) ) => ( calc ( bind $?gen280 ( create$ imprisonment_min_nt_lv2n-overruled $?gen278 $?gen279 ) ) ) ?gen275 <- ( to_imprison_min_nt_lv2n ( negative-overruled $?gen280 ) )"))

([imprisonment_min_nt_lv2n-support] of derived-attribute-rule
   (pos-name imprisonment_min_nt_lv2n-support-gen478)
   (depends-on declare unauthorized_tobacco_distribution_lv2n to_imprison_min_nt_lv2n)
   (implies to_imprison_min_nt_lv2n)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [imprisonment_min_nt_lv2n] ) ) ) ?gen274 <- ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ) ?gen275 <- ( to_imprison_min_nt_lv2n ( value 6 ) ( positive-support $?gen277 & : ( not ( subseq-pos ( create$ imprisonment_min_nt_lv2n ?gen274 $$$ $?gen277 ) ) ) ) ) ( test ( eq ( class ?gen275 ) to_imprison_min_nt_lv2n ) ) => ( calc ( bind $?gen280 ( create$ imprisonment_min_nt_lv2n ?gen274 $?gen277 ) ) ) ?gen275 <- ( to_imprison_min_nt_lv2n ( positive-support $?gen280 ) )"))

([confiscation_nt_lv1-defeasibly-dot] of derived-attribute-rule
   (pos-name confiscation_nt_lv1-defeasibly-dot-gen480)
   (depends-on declare to_confiscate_nt_lv1 unauthorized_tobacco_distribution_lv1 to_confiscate_nt_lv1)
   (implies to_confiscate_nt_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [confiscation_nt_lv1] ) ) ) ?gen266 <- ( to_confiscate_nt_lv1 ( value 1 ) ( positive 1 ) ( positive-derivator confiscation_nt_lv1 $? ) ) ( test ( eq ( class ?gen266 ) to_confiscate_nt_lv1 ) ) ( not ( and ?gen273 <- ( unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) ( positive ?gen272 & : ( >= ?gen272 1 ) ) ) ?gen266 <- ( to_confiscate_nt_lv1 ( negative ~ 2 ) ( positive-overruled $?gen268 & : ( not ( member$ confiscation_nt_lv1 $?gen268 ) ) ) ) ) ) => ?gen266 <- ( to_confiscate_nt_lv1 ( positive 0 ) )"))

([confiscation_nt_lv1-defeasibly] of derived-attribute-rule
   (pos-name confiscation_nt_lv1-defeasibly-gen482)
   (depends-on declare unauthorized_tobacco_distribution_lv1 to_confiscate_nt_lv1)
   (implies to_confiscate_nt_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [confiscation_nt_lv1] ) ) ) ?gen273 <- ( unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) ( positive ?gen272 & : ( >= ?gen272 1 ) ) ) ?gen266 <- ( to_confiscate_nt_lv1 ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen268 & : ( not ( member$ confiscation_nt_lv1 $?gen268 ) ) ) ) ( test ( eq ( class ?gen266 ) to_confiscate_nt_lv1 ) ) => ?gen266 <- ( to_confiscate_nt_lv1 ( positive 1 ) ( positive-derivator confiscation_nt_lv1 ?gen273 ) )"))

([confiscation_nt_lv1-overruled-dot] of derived-attribute-rule
   (pos-name confiscation_nt_lv1-overruled-dot-gen484)
   (depends-on declare to_confiscate_nt_lv1 unauthorized_tobacco_distribution_lv1 to_confiscate_nt_lv1)
   (implies to_confiscate_nt_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [confiscation_nt_lv1] ) ) ) ?gen266 <- ( to_confiscate_nt_lv1 ( value 1 ) ( negative-support $?gen269 ) ( negative-overruled $?gen270 & : ( subseq-pos ( create$ confiscation_nt_lv1-overruled $?gen269 $$$ $?gen270 ) ) ) ) ( test ( eq ( class ?gen266 ) to_confiscate_nt_lv1 ) ) ( not ( and ?gen273 <- ( unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) ( positive ?gen272 & : ( >= ?gen272 1 ) ) ) ?gen266 <- ( to_confiscate_nt_lv1 ( positive-defeated $?gen268 & : ( not ( member$ confiscation_nt_lv1 $?gen268 ) ) ) ) ) ) => ( calc ( bind $?gen271 ( delete-member$ $?gen270 ( create$ confiscation_nt_lv1-overruled $?gen269 ) ) ) ) ?gen266 <- ( to_confiscate_nt_lv1 ( negative-overruled $?gen271 ) )"))

([confiscation_nt_lv1-overruled] of derived-attribute-rule
   (pos-name confiscation_nt_lv1-overruled-gen486)
   (depends-on declare unauthorized_tobacco_distribution_lv1 to_confiscate_nt_lv1)
   (implies to_confiscate_nt_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [confiscation_nt_lv1] ) ) ) ?gen273 <- ( unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) ( positive ?gen272 & : ( >= ?gen272 1 ) ) ) ?gen266 <- ( to_confiscate_nt_lv1 ( value 1 ) ( negative-support $?gen269 ) ( negative-overruled $?gen270 & : ( not ( subseq-pos ( create$ confiscation_nt_lv1-overruled $?gen269 $$$ $?gen270 ) ) ) ) ( positive-defeated $?gen268 & : ( not ( member$ confiscation_nt_lv1 $?gen268 ) ) ) ) ( test ( eq ( class ?gen266 ) to_confiscate_nt_lv1 ) ) => ( calc ( bind $?gen271 ( create$ confiscation_nt_lv1-overruled $?gen269 $?gen270 ) ) ) ?gen266 <- ( to_confiscate_nt_lv1 ( negative-overruled $?gen271 ) )"))

([confiscation_nt_lv1-support] of derived-attribute-rule
   (pos-name confiscation_nt_lv1-support-gen488)
   (depends-on declare unauthorized_tobacco_distribution_lv1 to_confiscate_nt_lv1)
   (implies to_confiscate_nt_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [confiscation_nt_lv1] ) ) ) ?gen265 <- ( unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) ) ?gen266 <- ( to_confiscate_nt_lv1 ( value 1 ) ( positive-support $?gen268 & : ( not ( subseq-pos ( create$ confiscation_nt_lv1 ?gen265 $$$ $?gen268 ) ) ) ) ) ( test ( eq ( class ?gen266 ) to_confiscate_nt_lv1 ) ) => ( calc ( bind $?gen271 ( create$ confiscation_nt_lv1 ?gen265 $?gen268 ) ) ) ?gen266 <- ( to_confiscate_nt_lv1 ( positive-support $?gen271 ) )"))

([imprisonment_max_nt_lv1-defeasibly-dot] of derived-attribute-rule
   (pos-name imprisonment_max_nt_lv1-defeasibly-dot-gen490)
   (depends-on declare to_imprison_max_nt_lv1 unauthorized_tobacco_distribution_lv1 to_imprison_max_nt_lv1)
   (implies to_imprison_max_nt_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [imprisonment_max_nt_lv1] ) ) ) ?gen257 <- ( to_imprison_max_nt_lv1 ( value 36 ) ( positive 1 ) ( positive-derivator imprisonment_max_nt_lv1 $? ) ) ( test ( eq ( class ?gen257 ) to_imprison_max_nt_lv1 ) ) ( not ( and ?gen264 <- ( unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) ( positive ?gen263 & : ( >= ?gen263 1 ) ) ) ?gen257 <- ( to_imprison_max_nt_lv1 ( negative ~ 2 ) ( positive-overruled $?gen259 & : ( not ( member$ imprisonment_max_nt_lv1 $?gen259 ) ) ) ) ) ) => ?gen257 <- ( to_imprison_max_nt_lv1 ( positive 0 ) )"))

([imprisonment_max_nt_lv1-defeasibly] of derived-attribute-rule
   (pos-name imprisonment_max_nt_lv1-defeasibly-gen492)
   (depends-on declare unauthorized_tobacco_distribution_lv1 to_imprison_max_nt_lv1)
   (implies to_imprison_max_nt_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [imprisonment_max_nt_lv1] ) ) ) ?gen264 <- ( unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) ( positive ?gen263 & : ( >= ?gen263 1 ) ) ) ?gen257 <- ( to_imprison_max_nt_lv1 ( value 36 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen259 & : ( not ( member$ imprisonment_max_nt_lv1 $?gen259 ) ) ) ) ( test ( eq ( class ?gen257 ) to_imprison_max_nt_lv1 ) ) => ?gen257 <- ( to_imprison_max_nt_lv1 ( positive 1 ) ( positive-derivator imprisonment_max_nt_lv1 ?gen264 ) )"))

([imprisonment_max_nt_lv1-overruled-dot] of derived-attribute-rule
   (pos-name imprisonment_max_nt_lv1-overruled-dot-gen494)
   (depends-on declare to_imprison_max_nt_lv1 unauthorized_tobacco_distribution_lv1 to_imprison_max_nt_lv1)
   (implies to_imprison_max_nt_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [imprisonment_max_nt_lv1] ) ) ) ?gen257 <- ( to_imprison_max_nt_lv1 ( value 36 ) ( negative-support $?gen260 ) ( negative-overruled $?gen261 & : ( subseq-pos ( create$ imprisonment_max_nt_lv1-overruled $?gen260 $$$ $?gen261 ) ) ) ) ( test ( eq ( class ?gen257 ) to_imprison_max_nt_lv1 ) ) ( not ( and ?gen264 <- ( unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) ( positive ?gen263 & : ( >= ?gen263 1 ) ) ) ?gen257 <- ( to_imprison_max_nt_lv1 ( positive-defeated $?gen259 & : ( not ( member$ imprisonment_max_nt_lv1 $?gen259 ) ) ) ) ) ) => ( calc ( bind $?gen262 ( delete-member$ $?gen261 ( create$ imprisonment_max_nt_lv1-overruled $?gen260 ) ) ) ) ?gen257 <- ( to_imprison_max_nt_lv1 ( negative-overruled $?gen262 ) )"))

([imprisonment_max_nt_lv1-overruled] of derived-attribute-rule
   (pos-name imprisonment_max_nt_lv1-overruled-gen496)
   (depends-on declare unauthorized_tobacco_distribution_lv1 to_imprison_max_nt_lv1)
   (implies to_imprison_max_nt_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [imprisonment_max_nt_lv1] ) ) ) ?gen264 <- ( unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) ( positive ?gen263 & : ( >= ?gen263 1 ) ) ) ?gen257 <- ( to_imprison_max_nt_lv1 ( value 36 ) ( negative-support $?gen260 ) ( negative-overruled $?gen261 & : ( not ( subseq-pos ( create$ imprisonment_max_nt_lv1-overruled $?gen260 $$$ $?gen261 ) ) ) ) ( positive-defeated $?gen259 & : ( not ( member$ imprisonment_max_nt_lv1 $?gen259 ) ) ) ) ( test ( eq ( class ?gen257 ) to_imprison_max_nt_lv1 ) ) => ( calc ( bind $?gen262 ( create$ imprisonment_max_nt_lv1-overruled $?gen260 $?gen261 ) ) ) ?gen257 <- ( to_imprison_max_nt_lv1 ( negative-overruled $?gen262 ) )"))

([imprisonment_max_nt_lv1-support] of derived-attribute-rule
   (pos-name imprisonment_max_nt_lv1-support-gen498)
   (depends-on declare unauthorized_tobacco_distribution_lv1 to_imprison_max_nt_lv1)
   (implies to_imprison_max_nt_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [imprisonment_max_nt_lv1] ) ) ) ?gen256 <- ( unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) ) ?gen257 <- ( to_imprison_max_nt_lv1 ( value 36 ) ( positive-support $?gen259 & : ( not ( subseq-pos ( create$ imprisonment_max_nt_lv1 ?gen256 $$$ $?gen259 ) ) ) ) ) ( test ( eq ( class ?gen257 ) to_imprison_max_nt_lv1 ) ) => ( calc ( bind $?gen262 ( create$ imprisonment_max_nt_lv1 ?gen256 $?gen259 ) ) ) ?gen257 <- ( to_imprison_max_nt_lv1 ( positive-support $?gen262 ) )"))

([imprisonment_min_nt_lv1-defeasibly-dot] of derived-attribute-rule
   (pos-name imprisonment_min_nt_lv1-defeasibly-dot-gen500)
   (depends-on declare to_imprison_min_nt_lv1 unauthorized_tobacco_distribution_lv1 to_imprison_min_nt_lv1)
   (implies to_imprison_min_nt_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [imprisonment_min_nt_lv1] ) ) ) ?gen248 <- ( to_imprison_min_nt_lv1 ( value 3 ) ( positive 1 ) ( positive-derivator imprisonment_min_nt_lv1 $? ) ) ( test ( eq ( class ?gen248 ) to_imprison_min_nt_lv1 ) ) ( not ( and ?gen255 <- ( unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) ( positive ?gen254 & : ( >= ?gen254 1 ) ) ) ?gen248 <- ( to_imprison_min_nt_lv1 ( negative ~ 2 ) ( positive-overruled $?gen250 & : ( not ( member$ imprisonment_min_nt_lv1 $?gen250 ) ) ) ) ) ) => ?gen248 <- ( to_imprison_min_nt_lv1 ( positive 0 ) )"))

([imprisonment_min_nt_lv1-defeasibly] of derived-attribute-rule
   (pos-name imprisonment_min_nt_lv1-defeasibly-gen502)
   (depends-on declare unauthorized_tobacco_distribution_lv1 to_imprison_min_nt_lv1)
   (implies to_imprison_min_nt_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [imprisonment_min_nt_lv1] ) ) ) ?gen255 <- ( unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) ( positive ?gen254 & : ( >= ?gen254 1 ) ) ) ?gen248 <- ( to_imprison_min_nt_lv1 ( value 3 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen250 & : ( not ( member$ imprisonment_min_nt_lv1 $?gen250 ) ) ) ) ( test ( eq ( class ?gen248 ) to_imprison_min_nt_lv1 ) ) => ?gen248 <- ( to_imprison_min_nt_lv1 ( positive 1 ) ( positive-derivator imprisonment_min_nt_lv1 ?gen255 ) )"))

([imprisonment_min_nt_lv1-overruled-dot] of derived-attribute-rule
   (pos-name imprisonment_min_nt_lv1-overruled-dot-gen504)
   (depends-on declare to_imprison_min_nt_lv1 unauthorized_tobacco_distribution_lv1 to_imprison_min_nt_lv1)
   (implies to_imprison_min_nt_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [imprisonment_min_nt_lv1] ) ) ) ?gen248 <- ( to_imprison_min_nt_lv1 ( value 3 ) ( negative-support $?gen251 ) ( negative-overruled $?gen252 & : ( subseq-pos ( create$ imprisonment_min_nt_lv1-overruled $?gen251 $$$ $?gen252 ) ) ) ) ( test ( eq ( class ?gen248 ) to_imprison_min_nt_lv1 ) ) ( not ( and ?gen255 <- ( unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) ( positive ?gen254 & : ( >= ?gen254 1 ) ) ) ?gen248 <- ( to_imprison_min_nt_lv1 ( positive-defeated $?gen250 & : ( not ( member$ imprisonment_min_nt_lv1 $?gen250 ) ) ) ) ) ) => ( calc ( bind $?gen253 ( delete-member$ $?gen252 ( create$ imprisonment_min_nt_lv1-overruled $?gen251 ) ) ) ) ?gen248 <- ( to_imprison_min_nt_lv1 ( negative-overruled $?gen253 ) )"))

([imprisonment_min_nt_lv1-overruled] of derived-attribute-rule
   (pos-name imprisonment_min_nt_lv1-overruled-gen506)
   (depends-on declare unauthorized_tobacco_distribution_lv1 to_imprison_min_nt_lv1)
   (implies to_imprison_min_nt_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [imprisonment_min_nt_lv1] ) ) ) ?gen255 <- ( unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) ( positive ?gen254 & : ( >= ?gen254 1 ) ) ) ?gen248 <- ( to_imprison_min_nt_lv1 ( value 3 ) ( negative-support $?gen251 ) ( negative-overruled $?gen252 & : ( not ( subseq-pos ( create$ imprisonment_min_nt_lv1-overruled $?gen251 $$$ $?gen252 ) ) ) ) ( positive-defeated $?gen250 & : ( not ( member$ imprisonment_min_nt_lv1 $?gen250 ) ) ) ) ( test ( eq ( class ?gen248 ) to_imprison_min_nt_lv1 ) ) => ( calc ( bind $?gen253 ( create$ imprisonment_min_nt_lv1-overruled $?gen251 $?gen252 ) ) ) ?gen248 <- ( to_imprison_min_nt_lv1 ( negative-overruled $?gen253 ) )"))

([imprisonment_min_nt_lv1-support] of derived-attribute-rule
   (pos-name imprisonment_min_nt_lv1-support-gen508)
   (depends-on declare unauthorized_tobacco_distribution_lv1 to_imprison_min_nt_lv1)
   (implies to_imprison_min_nt_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [imprisonment_min_nt_lv1] ) ) ) ?gen247 <- ( unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) ) ?gen248 <- ( to_imprison_min_nt_lv1 ( value 3 ) ( positive-support $?gen250 & : ( not ( subseq-pos ( create$ imprisonment_min_nt_lv1 ?gen247 $$$ $?gen250 ) ) ) ) ) ( test ( eq ( class ?gen248 ) to_imprison_min_nt_lv1 ) ) => ( calc ( bind $?gen253 ( create$ imprisonment_min_nt_lv1 ?gen247 $?gen250 ) ) ) ?gen248 <- ( to_imprison_min_nt_lv1 ( positive-support $?gen253 ) )"))

([prohibition_max_cl6_le_ri-defeasibly-dot] of derived-attribute-rule
   (pos-name prohibition_max_cl6_le_ri-defeasibly-dot-gen510)
   (depends-on declare to_prohibit_max_cl6_le_ri placed_on_market_rezani_duvan_legal_entity_responsible_individual to_prohibit_max_cl6_le_ri)
   (implies to_prohibit_max_cl6_le_ri)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [prohibition_max_cl6_le_ri] ) ) ) ?gen239 <- ( to_prohibit_max_cl6_le_ri ( value 12 ) ( positive 1 ) ( positive-derivator prohibition_max_cl6_le_ri $? ) ) ( test ( eq ( class ?gen239 ) to_prohibit_max_cl6_le_ri ) ) ( not ( and ?gen246 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ( positive ?gen245 & : ( >= ?gen245 1 ) ) ) ?gen239 <- ( to_prohibit_max_cl6_le_ri ( negative ~ 2 ) ( positive-overruled $?gen241 & : ( not ( member$ prohibition_max_cl6_le_ri $?gen241 ) ) ) ) ) ) => ?gen239 <- ( to_prohibit_max_cl6_le_ri ( positive 0 ) )"))

([prohibition_max_cl6_le_ri-defeasibly] of derived-attribute-rule
   (pos-name prohibition_max_cl6_le_ri-defeasibly-gen512)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity_responsible_individual to_prohibit_max_cl6_le_ri)
   (implies to_prohibit_max_cl6_le_ri)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [prohibition_max_cl6_le_ri] ) ) ) ?gen246 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ( positive ?gen245 & : ( >= ?gen245 1 ) ) ) ?gen239 <- ( to_prohibit_max_cl6_le_ri ( value 12 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen241 & : ( not ( member$ prohibition_max_cl6_le_ri $?gen241 ) ) ) ) ( test ( eq ( class ?gen239 ) to_prohibit_max_cl6_le_ri ) ) => ?gen239 <- ( to_prohibit_max_cl6_le_ri ( positive 1 ) ( positive-derivator prohibition_max_cl6_le_ri ?gen246 ) )"))

([prohibition_max_cl6_le_ri-overruled-dot] of derived-attribute-rule
   (pos-name prohibition_max_cl6_le_ri-overruled-dot-gen514)
   (depends-on declare to_prohibit_max_cl6_le_ri placed_on_market_rezani_duvan_legal_entity_responsible_individual to_prohibit_max_cl6_le_ri)
   (implies to_prohibit_max_cl6_le_ri)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [prohibition_max_cl6_le_ri] ) ) ) ?gen239 <- ( to_prohibit_max_cl6_le_ri ( value 12 ) ( negative-support $?gen242 ) ( negative-overruled $?gen243 & : ( subseq-pos ( create$ prohibition_max_cl6_le_ri-overruled $?gen242 $$$ $?gen243 ) ) ) ) ( test ( eq ( class ?gen239 ) to_prohibit_max_cl6_le_ri ) ) ( not ( and ?gen246 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ( positive ?gen245 & : ( >= ?gen245 1 ) ) ) ?gen239 <- ( to_prohibit_max_cl6_le_ri ( positive-defeated $?gen241 & : ( not ( member$ prohibition_max_cl6_le_ri $?gen241 ) ) ) ) ) ) => ( calc ( bind $?gen244 ( delete-member$ $?gen243 ( create$ prohibition_max_cl6_le_ri-overruled $?gen242 ) ) ) ) ?gen239 <- ( to_prohibit_max_cl6_le_ri ( negative-overruled $?gen244 ) )"))

([prohibition_max_cl6_le_ri-overruled] of derived-attribute-rule
   (pos-name prohibition_max_cl6_le_ri-overruled-gen516)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity_responsible_individual to_prohibit_max_cl6_le_ri)
   (implies to_prohibit_max_cl6_le_ri)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [prohibition_max_cl6_le_ri] ) ) ) ?gen246 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ( positive ?gen245 & : ( >= ?gen245 1 ) ) ) ?gen239 <- ( to_prohibit_max_cl6_le_ri ( value 12 ) ( negative-support $?gen242 ) ( negative-overruled $?gen243 & : ( not ( subseq-pos ( create$ prohibition_max_cl6_le_ri-overruled $?gen242 $$$ $?gen243 ) ) ) ) ( positive-defeated $?gen241 & : ( not ( member$ prohibition_max_cl6_le_ri $?gen241 ) ) ) ) ( test ( eq ( class ?gen239 ) to_prohibit_max_cl6_le_ri ) ) => ( calc ( bind $?gen244 ( create$ prohibition_max_cl6_le_ri-overruled $?gen242 $?gen243 ) ) ) ?gen239 <- ( to_prohibit_max_cl6_le_ri ( negative-overruled $?gen244 ) )"))

([prohibition_max_cl6_le_ri-support] of derived-attribute-rule
   (pos-name prohibition_max_cl6_le_ri-support-gen518)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity_responsible_individual to_prohibit_max_cl6_le_ri)
   (implies to_prohibit_max_cl6_le_ri)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [prohibition_max_cl6_le_ri] ) ) ) ?gen238 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ) ?gen239 <- ( to_prohibit_max_cl6_le_ri ( value 12 ) ( positive-support $?gen241 & : ( not ( subseq-pos ( create$ prohibition_max_cl6_le_ri ?gen238 $$$ $?gen241 ) ) ) ) ) ( test ( eq ( class ?gen239 ) to_prohibit_max_cl6_le_ri ) ) => ( calc ( bind $?gen244 ( create$ prohibition_max_cl6_le_ri ?gen238 $?gen241 ) ) ) ?gen239 <- ( to_prohibit_max_cl6_le_ri ( positive-support $?gen244 ) )"))

([prohibition_min_cl6_le_ri-defeasibly-dot] of derived-attribute-rule
   (pos-name prohibition_min_cl6_le_ri-defeasibly-dot-gen520)
   (depends-on declare to_prohibit_min_cl6_le_ri placed_on_market_rezani_duvan_legal_entity_responsible_individual to_prohibit_min_cl6_le_ri)
   (implies to_prohibit_min_cl6_le_ri)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [prohibition_min_cl6_le_ri] ) ) ) ?gen230 <- ( to_prohibit_min_cl6_le_ri ( value 0 ) ( positive 1 ) ( positive-derivator prohibition_min_cl6_le_ri $? ) ) ( test ( eq ( class ?gen230 ) to_prohibit_min_cl6_le_ri ) ) ( not ( and ?gen237 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ( positive ?gen236 & : ( >= ?gen236 1 ) ) ) ?gen230 <- ( to_prohibit_min_cl6_le_ri ( negative ~ 2 ) ( positive-overruled $?gen232 & : ( not ( member$ prohibition_min_cl6_le_ri $?gen232 ) ) ) ) ) ) => ?gen230 <- ( to_prohibit_min_cl6_le_ri ( positive 0 ) )"))

([prohibition_min_cl6_le_ri-defeasibly] of derived-attribute-rule
   (pos-name prohibition_min_cl6_le_ri-defeasibly-gen522)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity_responsible_individual to_prohibit_min_cl6_le_ri)
   (implies to_prohibit_min_cl6_le_ri)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [prohibition_min_cl6_le_ri] ) ) ) ?gen237 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ( positive ?gen236 & : ( >= ?gen236 1 ) ) ) ?gen230 <- ( to_prohibit_min_cl6_le_ri ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen232 & : ( not ( member$ prohibition_min_cl6_le_ri $?gen232 ) ) ) ) ( test ( eq ( class ?gen230 ) to_prohibit_min_cl6_le_ri ) ) => ?gen230 <- ( to_prohibit_min_cl6_le_ri ( positive 1 ) ( positive-derivator prohibition_min_cl6_le_ri ?gen237 ) )"))

([prohibition_min_cl6_le_ri-overruled-dot] of derived-attribute-rule
   (pos-name prohibition_min_cl6_le_ri-overruled-dot-gen524)
   (depends-on declare to_prohibit_min_cl6_le_ri placed_on_market_rezani_duvan_legal_entity_responsible_individual to_prohibit_min_cl6_le_ri)
   (implies to_prohibit_min_cl6_le_ri)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [prohibition_min_cl6_le_ri] ) ) ) ?gen230 <- ( to_prohibit_min_cl6_le_ri ( value 0 ) ( negative-support $?gen233 ) ( negative-overruled $?gen234 & : ( subseq-pos ( create$ prohibition_min_cl6_le_ri-overruled $?gen233 $$$ $?gen234 ) ) ) ) ( test ( eq ( class ?gen230 ) to_prohibit_min_cl6_le_ri ) ) ( not ( and ?gen237 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ( positive ?gen236 & : ( >= ?gen236 1 ) ) ) ?gen230 <- ( to_prohibit_min_cl6_le_ri ( positive-defeated $?gen232 & : ( not ( member$ prohibition_min_cl6_le_ri $?gen232 ) ) ) ) ) ) => ( calc ( bind $?gen235 ( delete-member$ $?gen234 ( create$ prohibition_min_cl6_le_ri-overruled $?gen233 ) ) ) ) ?gen230 <- ( to_prohibit_min_cl6_le_ri ( negative-overruled $?gen235 ) )"))

([prohibition_min_cl6_le_ri-overruled] of derived-attribute-rule
   (pos-name prohibition_min_cl6_le_ri-overruled-gen526)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity_responsible_individual to_prohibit_min_cl6_le_ri)
   (implies to_prohibit_min_cl6_le_ri)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [prohibition_min_cl6_le_ri] ) ) ) ?gen237 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ( positive ?gen236 & : ( >= ?gen236 1 ) ) ) ?gen230 <- ( to_prohibit_min_cl6_le_ri ( value 0 ) ( negative-support $?gen233 ) ( negative-overruled $?gen234 & : ( not ( subseq-pos ( create$ prohibition_min_cl6_le_ri-overruled $?gen233 $$$ $?gen234 ) ) ) ) ( positive-defeated $?gen232 & : ( not ( member$ prohibition_min_cl6_le_ri $?gen232 ) ) ) ) ( test ( eq ( class ?gen230 ) to_prohibit_min_cl6_le_ri ) ) => ( calc ( bind $?gen235 ( create$ prohibition_min_cl6_le_ri-overruled $?gen233 $?gen234 ) ) ) ?gen230 <- ( to_prohibit_min_cl6_le_ri ( negative-overruled $?gen235 ) )"))

([prohibition_min_cl6_le_ri-support] of derived-attribute-rule
   (pos-name prohibition_min_cl6_le_ri-support-gen528)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity_responsible_individual to_prohibit_min_cl6_le_ri)
   (implies to_prohibit_min_cl6_le_ri)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [prohibition_min_cl6_le_ri] ) ) ) ?gen229 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ) ?gen230 <- ( to_prohibit_min_cl6_le_ri ( value 0 ) ( positive-support $?gen232 & : ( not ( subseq-pos ( create$ prohibition_min_cl6_le_ri ?gen229 $$$ $?gen232 ) ) ) ) ) ( test ( eq ( class ?gen230 ) to_prohibit_min_cl6_le_ri ) ) => ( calc ( bind $?gen235 ( create$ prohibition_min_cl6_le_ri ?gen229 $?gen232 ) ) ) ?gen230 <- ( to_prohibit_min_cl6_le_ri ( positive-support $?gen235 ) )"))

([confiscation_cl6_le_ri-defeasibly-dot] of derived-attribute-rule
   (pos-name confiscation_cl6_le_ri-defeasibly-dot-gen530)
   (depends-on declare to_confiscate_cl6_le_ri placed_on_market_rezani_duvan_legal_entity_responsible_individual to_confiscate_cl6_le_ri)
   (implies to_confiscate_cl6_le_ri)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [confiscation_cl6_le_ri] ) ) ) ?gen221 <- ( to_confiscate_cl6_le_ri ( value 1 ) ( positive 1 ) ( positive-derivator confiscation_cl6_le_ri $? ) ) ( test ( eq ( class ?gen221 ) to_confiscate_cl6_le_ri ) ) ( not ( and ?gen228 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ( positive ?gen227 & : ( >= ?gen227 1 ) ) ) ?gen221 <- ( to_confiscate_cl6_le_ri ( negative ~ 2 ) ( positive-overruled $?gen223 & : ( not ( member$ confiscation_cl6_le_ri $?gen223 ) ) ) ) ) ) => ?gen221 <- ( to_confiscate_cl6_le_ri ( positive 0 ) )"))

([confiscation_cl6_le_ri-defeasibly] of derived-attribute-rule
   (pos-name confiscation_cl6_le_ri-defeasibly-gen532)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity_responsible_individual to_confiscate_cl6_le_ri)
   (implies to_confiscate_cl6_le_ri)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [confiscation_cl6_le_ri] ) ) ) ?gen228 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ( positive ?gen227 & : ( >= ?gen227 1 ) ) ) ?gen221 <- ( to_confiscate_cl6_le_ri ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen223 & : ( not ( member$ confiscation_cl6_le_ri $?gen223 ) ) ) ) ( test ( eq ( class ?gen221 ) to_confiscate_cl6_le_ri ) ) => ?gen221 <- ( to_confiscate_cl6_le_ri ( positive 1 ) ( positive-derivator confiscation_cl6_le_ri ?gen228 ) )"))

([confiscation_cl6_le_ri-overruled-dot] of derived-attribute-rule
   (pos-name confiscation_cl6_le_ri-overruled-dot-gen534)
   (depends-on declare to_confiscate_cl6_le_ri placed_on_market_rezani_duvan_legal_entity_responsible_individual to_confiscate_cl6_le_ri)
   (implies to_confiscate_cl6_le_ri)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [confiscation_cl6_le_ri] ) ) ) ?gen221 <- ( to_confiscate_cl6_le_ri ( value 1 ) ( negative-support $?gen224 ) ( negative-overruled $?gen225 & : ( subseq-pos ( create$ confiscation_cl6_le_ri-overruled $?gen224 $$$ $?gen225 ) ) ) ) ( test ( eq ( class ?gen221 ) to_confiscate_cl6_le_ri ) ) ( not ( and ?gen228 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ( positive ?gen227 & : ( >= ?gen227 1 ) ) ) ?gen221 <- ( to_confiscate_cl6_le_ri ( positive-defeated $?gen223 & : ( not ( member$ confiscation_cl6_le_ri $?gen223 ) ) ) ) ) ) => ( calc ( bind $?gen226 ( delete-member$ $?gen225 ( create$ confiscation_cl6_le_ri-overruled $?gen224 ) ) ) ) ?gen221 <- ( to_confiscate_cl6_le_ri ( negative-overruled $?gen226 ) )"))

([confiscation_cl6_le_ri-overruled] of derived-attribute-rule
   (pos-name confiscation_cl6_le_ri-overruled-gen536)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity_responsible_individual to_confiscate_cl6_le_ri)
   (implies to_confiscate_cl6_le_ri)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [confiscation_cl6_le_ri] ) ) ) ?gen228 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ( positive ?gen227 & : ( >= ?gen227 1 ) ) ) ?gen221 <- ( to_confiscate_cl6_le_ri ( value 1 ) ( negative-support $?gen224 ) ( negative-overruled $?gen225 & : ( not ( subseq-pos ( create$ confiscation_cl6_le_ri-overruled $?gen224 $$$ $?gen225 ) ) ) ) ( positive-defeated $?gen223 & : ( not ( member$ confiscation_cl6_le_ri $?gen223 ) ) ) ) ( test ( eq ( class ?gen221 ) to_confiscate_cl6_le_ri ) ) => ( calc ( bind $?gen226 ( create$ confiscation_cl6_le_ri-overruled $?gen224 $?gen225 ) ) ) ?gen221 <- ( to_confiscate_cl6_le_ri ( negative-overruled $?gen226 ) )"))

([confiscation_cl6_le_ri-support] of derived-attribute-rule
   (pos-name confiscation_cl6_le_ri-support-gen538)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity_responsible_individual to_confiscate_cl6_le_ri)
   (implies to_confiscate_cl6_le_ri)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [confiscation_cl6_le_ri] ) ) ) ?gen220 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ) ?gen221 <- ( to_confiscate_cl6_le_ri ( value 1 ) ( positive-support $?gen223 & : ( not ( subseq-pos ( create$ confiscation_cl6_le_ri ?gen220 $$$ $?gen223 ) ) ) ) ) ( test ( eq ( class ?gen221 ) to_confiscate_cl6_le_ri ) ) => ( calc ( bind $?gen226 ( create$ confiscation_cl6_le_ri ?gen220 $?gen223 ) ) ) ?gen221 <- ( to_confiscate_cl6_le_ri ( positive-support $?gen226 ) )"))

([pen_cl6_le_ri_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl6_le_ri_max-defeasibly-dot-gen540)
   (depends-on declare to_pay_max_cl6_le_ri placed_on_market_rezani_duvan_legal_entity_responsible_individual to_pay_max_cl6_le_ri)
   (implies to_pay_max_cl6_le_ri)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl6_le_ri_max] ) ) ) ?gen212 <- ( to_pay_max_cl6_le_ri ( value 2000 ) ( positive 1 ) ( positive-derivator pen_cl6_le_ri_max $? ) ) ( test ( eq ( class ?gen212 ) to_pay_max_cl6_le_ri ) ) ( not ( and ?gen219 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ( positive ?gen218 & : ( >= ?gen218 1 ) ) ) ?gen212 <- ( to_pay_max_cl6_le_ri ( negative ~ 2 ) ( positive-overruled $?gen214 & : ( not ( member$ pen_cl6_le_ri_max $?gen214 ) ) ) ) ) ) => ?gen212 <- ( to_pay_max_cl6_le_ri ( positive 0 ) )"))

([pen_cl6_le_ri_max-defeasibly] of derived-attribute-rule
   (pos-name pen_cl6_le_ri_max-defeasibly-gen542)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity_responsible_individual to_pay_max_cl6_le_ri)
   (implies to_pay_max_cl6_le_ri)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl6_le_ri_max] ) ) ) ?gen219 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ( positive ?gen218 & : ( >= ?gen218 1 ) ) ) ?gen212 <- ( to_pay_max_cl6_le_ri ( value 2000 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen214 & : ( not ( member$ pen_cl6_le_ri_max $?gen214 ) ) ) ) ( test ( eq ( class ?gen212 ) to_pay_max_cl6_le_ri ) ) => ?gen212 <- ( to_pay_max_cl6_le_ri ( positive 1 ) ( positive-derivator pen_cl6_le_ri_max ?gen219 ) )"))

([pen_cl6_le_ri_max-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl6_le_ri_max-overruled-dot-gen544)
   (depends-on declare to_pay_max_cl6_le_ri placed_on_market_rezani_duvan_legal_entity_responsible_individual to_pay_max_cl6_le_ri)
   (implies to_pay_max_cl6_le_ri)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl6_le_ri_max] ) ) ) ?gen212 <- ( to_pay_max_cl6_le_ri ( value 2000 ) ( negative-support $?gen215 ) ( negative-overruled $?gen216 & : ( subseq-pos ( create$ pen_cl6_le_ri_max-overruled $?gen215 $$$ $?gen216 ) ) ) ) ( test ( eq ( class ?gen212 ) to_pay_max_cl6_le_ri ) ) ( not ( and ?gen219 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ( positive ?gen218 & : ( >= ?gen218 1 ) ) ) ?gen212 <- ( to_pay_max_cl6_le_ri ( positive-defeated $?gen214 & : ( not ( member$ pen_cl6_le_ri_max $?gen214 ) ) ) ) ) ) => ( calc ( bind $?gen217 ( delete-member$ $?gen216 ( create$ pen_cl6_le_ri_max-overruled $?gen215 ) ) ) ) ?gen212 <- ( to_pay_max_cl6_le_ri ( negative-overruled $?gen217 ) )"))

([pen_cl6_le_ri_max-overruled] of derived-attribute-rule
   (pos-name pen_cl6_le_ri_max-overruled-gen546)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity_responsible_individual to_pay_max_cl6_le_ri)
   (implies to_pay_max_cl6_le_ri)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl6_le_ri_max] ) ) ) ?gen219 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ( positive ?gen218 & : ( >= ?gen218 1 ) ) ) ?gen212 <- ( to_pay_max_cl6_le_ri ( value 2000 ) ( negative-support $?gen215 ) ( negative-overruled $?gen216 & : ( not ( subseq-pos ( create$ pen_cl6_le_ri_max-overruled $?gen215 $$$ $?gen216 ) ) ) ) ( positive-defeated $?gen214 & : ( not ( member$ pen_cl6_le_ri_max $?gen214 ) ) ) ) ( test ( eq ( class ?gen212 ) to_pay_max_cl6_le_ri ) ) => ( calc ( bind $?gen217 ( create$ pen_cl6_le_ri_max-overruled $?gen215 $?gen216 ) ) ) ?gen212 <- ( to_pay_max_cl6_le_ri ( negative-overruled $?gen217 ) )"))

([pen_cl6_le_ri_max-support] of derived-attribute-rule
   (pos-name pen_cl6_le_ri_max-support-gen548)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity_responsible_individual to_pay_max_cl6_le_ri)
   (implies to_pay_max_cl6_le_ri)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl6_le_ri_max] ) ) ) ?gen211 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ) ?gen212 <- ( to_pay_max_cl6_le_ri ( value 2000 ) ( positive-support $?gen214 & : ( not ( subseq-pos ( create$ pen_cl6_le_ri_max ?gen211 $$$ $?gen214 ) ) ) ) ) ( test ( eq ( class ?gen212 ) to_pay_max_cl6_le_ri ) ) => ( calc ( bind $?gen217 ( create$ pen_cl6_le_ri_max ?gen211 $?gen214 ) ) ) ?gen212 <- ( to_pay_max_cl6_le_ri ( positive-support $?gen217 ) )"))

([pen_cl6_le_ri_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl6_le_ri_min-defeasibly-dot-gen550)
   (depends-on declare to_pay_min_cl6_le_ri placed_on_market_rezani_duvan_legal_entity_responsible_individual to_pay_min_cl6_le_ri)
   (implies to_pay_min_cl6_le_ri)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl6_le_ri_min] ) ) ) ?gen203 <- ( to_pay_min_cl6_le_ri ( value 1000 ) ( positive 1 ) ( positive-derivator pen_cl6_le_ri_min $? ) ) ( test ( eq ( class ?gen203 ) to_pay_min_cl6_le_ri ) ) ( not ( and ?gen210 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ( positive ?gen209 & : ( >= ?gen209 1 ) ) ) ?gen203 <- ( to_pay_min_cl6_le_ri ( negative ~ 2 ) ( positive-overruled $?gen205 & : ( not ( member$ pen_cl6_le_ri_min $?gen205 ) ) ) ) ) ) => ?gen203 <- ( to_pay_min_cl6_le_ri ( positive 0 ) )"))

([pen_cl6_le_ri_min-defeasibly] of derived-attribute-rule
   (pos-name pen_cl6_le_ri_min-defeasibly-gen552)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity_responsible_individual to_pay_min_cl6_le_ri)
   (implies to_pay_min_cl6_le_ri)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl6_le_ri_min] ) ) ) ?gen210 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ( positive ?gen209 & : ( >= ?gen209 1 ) ) ) ?gen203 <- ( to_pay_min_cl6_le_ri ( value 1000 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen205 & : ( not ( member$ pen_cl6_le_ri_min $?gen205 ) ) ) ) ( test ( eq ( class ?gen203 ) to_pay_min_cl6_le_ri ) ) => ?gen203 <- ( to_pay_min_cl6_le_ri ( positive 1 ) ( positive-derivator pen_cl6_le_ri_min ?gen210 ) )"))

([pen_cl6_le_ri_min-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl6_le_ri_min-overruled-dot-gen554)
   (depends-on declare to_pay_min_cl6_le_ri placed_on_market_rezani_duvan_legal_entity_responsible_individual to_pay_min_cl6_le_ri)
   (implies to_pay_min_cl6_le_ri)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl6_le_ri_min] ) ) ) ?gen203 <- ( to_pay_min_cl6_le_ri ( value 1000 ) ( negative-support $?gen206 ) ( negative-overruled $?gen207 & : ( subseq-pos ( create$ pen_cl6_le_ri_min-overruled $?gen206 $$$ $?gen207 ) ) ) ) ( test ( eq ( class ?gen203 ) to_pay_min_cl6_le_ri ) ) ( not ( and ?gen210 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ( positive ?gen209 & : ( >= ?gen209 1 ) ) ) ?gen203 <- ( to_pay_min_cl6_le_ri ( positive-defeated $?gen205 & : ( not ( member$ pen_cl6_le_ri_min $?gen205 ) ) ) ) ) ) => ( calc ( bind $?gen208 ( delete-member$ $?gen207 ( create$ pen_cl6_le_ri_min-overruled $?gen206 ) ) ) ) ?gen203 <- ( to_pay_min_cl6_le_ri ( negative-overruled $?gen208 ) )"))

([pen_cl6_le_ri_min-overruled] of derived-attribute-rule
   (pos-name pen_cl6_le_ri_min-overruled-gen556)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity_responsible_individual to_pay_min_cl6_le_ri)
   (implies to_pay_min_cl6_le_ri)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl6_le_ri_min] ) ) ) ?gen210 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ( positive ?gen209 & : ( >= ?gen209 1 ) ) ) ?gen203 <- ( to_pay_min_cl6_le_ri ( value 1000 ) ( negative-support $?gen206 ) ( negative-overruled $?gen207 & : ( not ( subseq-pos ( create$ pen_cl6_le_ri_min-overruled $?gen206 $$$ $?gen207 ) ) ) ) ( positive-defeated $?gen205 & : ( not ( member$ pen_cl6_le_ri_min $?gen205 ) ) ) ) ( test ( eq ( class ?gen203 ) to_pay_min_cl6_le_ri ) ) => ( calc ( bind $?gen208 ( create$ pen_cl6_le_ri_min-overruled $?gen206 $?gen207 ) ) ) ?gen203 <- ( to_pay_min_cl6_le_ri ( negative-overruled $?gen208 ) )"))

([pen_cl6_le_ri_min-support] of derived-attribute-rule
   (pos-name pen_cl6_le_ri_min-support-gen558)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity_responsible_individual to_pay_min_cl6_le_ri)
   (implies to_pay_min_cl6_le_ri)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl6_le_ri_min] ) ) ) ?gen202 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ) ?gen203 <- ( to_pay_min_cl6_le_ri ( value 1000 ) ( positive-support $?gen205 & : ( not ( subseq-pos ( create$ pen_cl6_le_ri_min ?gen202 $$$ $?gen205 ) ) ) ) ) ( test ( eq ( class ?gen203 ) to_pay_min_cl6_le_ri ) ) => ( calc ( bind $?gen208 ( create$ pen_cl6_le_ri_min ?gen202 $?gen205 ) ) ) ?gen203 <- ( to_pay_min_cl6_le_ri ( positive-support $?gen208 ) )"))

([prohibition_max_cl6_le-defeasibly-dot] of derived-attribute-rule
   (pos-name prohibition_max_cl6_le-defeasibly-dot-gen560)
   (depends-on declare to_prohibit_max_cl6_le placed_on_market_rezani_duvan_legal_entity to_prohibit_max_cl6_le)
   (implies to_prohibit_max_cl6_le)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [prohibition_max_cl6_le] ) ) ) ?gen194 <- ( to_prohibit_max_cl6_le ( value 12 ) ( positive 1 ) ( positive-derivator prohibition_max_cl6_le $? ) ) ( test ( eq ( class ?gen194 ) to_prohibit_max_cl6_le ) ) ( not ( and ?gen201 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ( positive ?gen200 & : ( >= ?gen200 1 ) ) ) ?gen194 <- ( to_prohibit_max_cl6_le ( negative ~ 2 ) ( positive-overruled $?gen196 & : ( not ( member$ prohibition_max_cl6_le $?gen196 ) ) ) ) ) ) => ?gen194 <- ( to_prohibit_max_cl6_le ( positive 0 ) )"))

([prohibition_max_cl6_le-defeasibly] of derived-attribute-rule
   (pos-name prohibition_max_cl6_le-defeasibly-gen562)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity to_prohibit_max_cl6_le)
   (implies to_prohibit_max_cl6_le)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [prohibition_max_cl6_le] ) ) ) ?gen201 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ( positive ?gen200 & : ( >= ?gen200 1 ) ) ) ?gen194 <- ( to_prohibit_max_cl6_le ( value 12 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen196 & : ( not ( member$ prohibition_max_cl6_le $?gen196 ) ) ) ) ( test ( eq ( class ?gen194 ) to_prohibit_max_cl6_le ) ) => ?gen194 <- ( to_prohibit_max_cl6_le ( positive 1 ) ( positive-derivator prohibition_max_cl6_le ?gen201 ) )"))

([prohibition_max_cl6_le-overruled-dot] of derived-attribute-rule
   (pos-name prohibition_max_cl6_le-overruled-dot-gen564)
   (depends-on declare to_prohibit_max_cl6_le placed_on_market_rezani_duvan_legal_entity to_prohibit_max_cl6_le)
   (implies to_prohibit_max_cl6_le)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [prohibition_max_cl6_le] ) ) ) ?gen194 <- ( to_prohibit_max_cl6_le ( value 12 ) ( negative-support $?gen197 ) ( negative-overruled $?gen198 & : ( subseq-pos ( create$ prohibition_max_cl6_le-overruled $?gen197 $$$ $?gen198 ) ) ) ) ( test ( eq ( class ?gen194 ) to_prohibit_max_cl6_le ) ) ( not ( and ?gen201 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ( positive ?gen200 & : ( >= ?gen200 1 ) ) ) ?gen194 <- ( to_prohibit_max_cl6_le ( positive-defeated $?gen196 & : ( not ( member$ prohibition_max_cl6_le $?gen196 ) ) ) ) ) ) => ( calc ( bind $?gen199 ( delete-member$ $?gen198 ( create$ prohibition_max_cl6_le-overruled $?gen197 ) ) ) ) ?gen194 <- ( to_prohibit_max_cl6_le ( negative-overruled $?gen199 ) )"))

([prohibition_max_cl6_le-overruled] of derived-attribute-rule
   (pos-name prohibition_max_cl6_le-overruled-gen566)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity to_prohibit_max_cl6_le)
   (implies to_prohibit_max_cl6_le)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [prohibition_max_cl6_le] ) ) ) ?gen201 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ( positive ?gen200 & : ( >= ?gen200 1 ) ) ) ?gen194 <- ( to_prohibit_max_cl6_le ( value 12 ) ( negative-support $?gen197 ) ( negative-overruled $?gen198 & : ( not ( subseq-pos ( create$ prohibition_max_cl6_le-overruled $?gen197 $$$ $?gen198 ) ) ) ) ( positive-defeated $?gen196 & : ( not ( member$ prohibition_max_cl6_le $?gen196 ) ) ) ) ( test ( eq ( class ?gen194 ) to_prohibit_max_cl6_le ) ) => ( calc ( bind $?gen199 ( create$ prohibition_max_cl6_le-overruled $?gen197 $?gen198 ) ) ) ?gen194 <- ( to_prohibit_max_cl6_le ( negative-overruled $?gen199 ) )"))

([prohibition_max_cl6_le-support] of derived-attribute-rule
   (pos-name prohibition_max_cl6_le-support-gen568)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity to_prohibit_max_cl6_le)
   (implies to_prohibit_max_cl6_le)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [prohibition_max_cl6_le] ) ) ) ?gen193 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ) ?gen194 <- ( to_prohibit_max_cl6_le ( value 12 ) ( positive-support $?gen196 & : ( not ( subseq-pos ( create$ prohibition_max_cl6_le ?gen193 $$$ $?gen196 ) ) ) ) ) ( test ( eq ( class ?gen194 ) to_prohibit_max_cl6_le ) ) => ( calc ( bind $?gen199 ( create$ prohibition_max_cl6_le ?gen193 $?gen196 ) ) ) ?gen194 <- ( to_prohibit_max_cl6_le ( positive-support $?gen199 ) )"))

([prohibition_min_cl6_le-defeasibly-dot] of derived-attribute-rule
   (pos-name prohibition_min_cl6_le-defeasibly-dot-gen570)
   (depends-on declare to_prohibit_min_cl6_le placed_on_market_rezani_duvan_legal_entity to_prohibit_min_cl6_le)
   (implies to_prohibit_min_cl6_le)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [prohibition_min_cl6_le] ) ) ) ?gen185 <- ( to_prohibit_min_cl6_le ( value 0 ) ( positive 1 ) ( positive-derivator prohibition_min_cl6_le $? ) ) ( test ( eq ( class ?gen185 ) to_prohibit_min_cl6_le ) ) ( not ( and ?gen192 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ( positive ?gen191 & : ( >= ?gen191 1 ) ) ) ?gen185 <- ( to_prohibit_min_cl6_le ( negative ~ 2 ) ( positive-overruled $?gen187 & : ( not ( member$ prohibition_min_cl6_le $?gen187 ) ) ) ) ) ) => ?gen185 <- ( to_prohibit_min_cl6_le ( positive 0 ) )"))

([prohibition_min_cl6_le-defeasibly] of derived-attribute-rule
   (pos-name prohibition_min_cl6_le-defeasibly-gen572)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity to_prohibit_min_cl6_le)
   (implies to_prohibit_min_cl6_le)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [prohibition_min_cl6_le] ) ) ) ?gen192 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ( positive ?gen191 & : ( >= ?gen191 1 ) ) ) ?gen185 <- ( to_prohibit_min_cl6_le ( value 0 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen187 & : ( not ( member$ prohibition_min_cl6_le $?gen187 ) ) ) ) ( test ( eq ( class ?gen185 ) to_prohibit_min_cl6_le ) ) => ?gen185 <- ( to_prohibit_min_cl6_le ( positive 1 ) ( positive-derivator prohibition_min_cl6_le ?gen192 ) )"))

([prohibition_min_cl6_le-overruled-dot] of derived-attribute-rule
   (pos-name prohibition_min_cl6_le-overruled-dot-gen574)
   (depends-on declare to_prohibit_min_cl6_le placed_on_market_rezani_duvan_legal_entity to_prohibit_min_cl6_le)
   (implies to_prohibit_min_cl6_le)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [prohibition_min_cl6_le] ) ) ) ?gen185 <- ( to_prohibit_min_cl6_le ( value 0 ) ( negative-support $?gen188 ) ( negative-overruled $?gen189 & : ( subseq-pos ( create$ prohibition_min_cl6_le-overruled $?gen188 $$$ $?gen189 ) ) ) ) ( test ( eq ( class ?gen185 ) to_prohibit_min_cl6_le ) ) ( not ( and ?gen192 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ( positive ?gen191 & : ( >= ?gen191 1 ) ) ) ?gen185 <- ( to_prohibit_min_cl6_le ( positive-defeated $?gen187 & : ( not ( member$ prohibition_min_cl6_le $?gen187 ) ) ) ) ) ) => ( calc ( bind $?gen190 ( delete-member$ $?gen189 ( create$ prohibition_min_cl6_le-overruled $?gen188 ) ) ) ) ?gen185 <- ( to_prohibit_min_cl6_le ( negative-overruled $?gen190 ) )"))

([prohibition_min_cl6_le-overruled] of derived-attribute-rule
   (pos-name prohibition_min_cl6_le-overruled-gen576)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity to_prohibit_min_cl6_le)
   (implies to_prohibit_min_cl6_le)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [prohibition_min_cl6_le] ) ) ) ?gen192 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ( positive ?gen191 & : ( >= ?gen191 1 ) ) ) ?gen185 <- ( to_prohibit_min_cl6_le ( value 0 ) ( negative-support $?gen188 ) ( negative-overruled $?gen189 & : ( not ( subseq-pos ( create$ prohibition_min_cl6_le-overruled $?gen188 $$$ $?gen189 ) ) ) ) ( positive-defeated $?gen187 & : ( not ( member$ prohibition_min_cl6_le $?gen187 ) ) ) ) ( test ( eq ( class ?gen185 ) to_prohibit_min_cl6_le ) ) => ( calc ( bind $?gen190 ( create$ prohibition_min_cl6_le-overruled $?gen188 $?gen189 ) ) ) ?gen185 <- ( to_prohibit_min_cl6_le ( negative-overruled $?gen190 ) )"))

([prohibition_min_cl6_le-support] of derived-attribute-rule
   (pos-name prohibition_min_cl6_le-support-gen578)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity to_prohibit_min_cl6_le)
   (implies to_prohibit_min_cl6_le)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [prohibition_min_cl6_le] ) ) ) ?gen184 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ) ?gen185 <- ( to_prohibit_min_cl6_le ( value 0 ) ( positive-support $?gen187 & : ( not ( subseq-pos ( create$ prohibition_min_cl6_le ?gen184 $$$ $?gen187 ) ) ) ) ) ( test ( eq ( class ?gen185 ) to_prohibit_min_cl6_le ) ) => ( calc ( bind $?gen190 ( create$ prohibition_min_cl6_le ?gen184 $?gen187 ) ) ) ?gen185 <- ( to_prohibit_min_cl6_le ( positive-support $?gen190 ) )"))

([confiscation_cl6_le-defeasibly-dot] of derived-attribute-rule
   (pos-name confiscation_cl6_le-defeasibly-dot-gen580)
   (depends-on declare to_confiscate_cl6_le placed_on_market_rezani_duvan_legal_entity to_confiscate_cl6_le)
   (implies to_confiscate_cl6_le)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [confiscation_cl6_le] ) ) ) ?gen176 <- ( to_confiscate_cl6_le ( value 1 ) ( positive 1 ) ( positive-derivator confiscation_cl6_le $? ) ) ( test ( eq ( class ?gen176 ) to_confiscate_cl6_le ) ) ( not ( and ?gen183 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ( positive ?gen182 & : ( >= ?gen182 1 ) ) ) ?gen176 <- ( to_confiscate_cl6_le ( negative ~ 2 ) ( positive-overruled $?gen178 & : ( not ( member$ confiscation_cl6_le $?gen178 ) ) ) ) ) ) => ?gen176 <- ( to_confiscate_cl6_le ( positive 0 ) )"))

([confiscation_cl6_le-defeasibly] of derived-attribute-rule
   (pos-name confiscation_cl6_le-defeasibly-gen582)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity to_confiscate_cl6_le)
   (implies to_confiscate_cl6_le)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [confiscation_cl6_le] ) ) ) ?gen183 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ( positive ?gen182 & : ( >= ?gen182 1 ) ) ) ?gen176 <- ( to_confiscate_cl6_le ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen178 & : ( not ( member$ confiscation_cl6_le $?gen178 ) ) ) ) ( test ( eq ( class ?gen176 ) to_confiscate_cl6_le ) ) => ?gen176 <- ( to_confiscate_cl6_le ( positive 1 ) ( positive-derivator confiscation_cl6_le ?gen183 ) )"))

([confiscation_cl6_le-overruled-dot] of derived-attribute-rule
   (pos-name confiscation_cl6_le-overruled-dot-gen584)
   (depends-on declare to_confiscate_cl6_le placed_on_market_rezani_duvan_legal_entity to_confiscate_cl6_le)
   (implies to_confiscate_cl6_le)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [confiscation_cl6_le] ) ) ) ?gen176 <- ( to_confiscate_cl6_le ( value 1 ) ( negative-support $?gen179 ) ( negative-overruled $?gen180 & : ( subseq-pos ( create$ confiscation_cl6_le-overruled $?gen179 $$$ $?gen180 ) ) ) ) ( test ( eq ( class ?gen176 ) to_confiscate_cl6_le ) ) ( not ( and ?gen183 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ( positive ?gen182 & : ( >= ?gen182 1 ) ) ) ?gen176 <- ( to_confiscate_cl6_le ( positive-defeated $?gen178 & : ( not ( member$ confiscation_cl6_le $?gen178 ) ) ) ) ) ) => ( calc ( bind $?gen181 ( delete-member$ $?gen180 ( create$ confiscation_cl6_le-overruled $?gen179 ) ) ) ) ?gen176 <- ( to_confiscate_cl6_le ( negative-overruled $?gen181 ) )"))

([confiscation_cl6_le-overruled] of derived-attribute-rule
   (pos-name confiscation_cl6_le-overruled-gen586)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity to_confiscate_cl6_le)
   (implies to_confiscate_cl6_le)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [confiscation_cl6_le] ) ) ) ?gen183 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ( positive ?gen182 & : ( >= ?gen182 1 ) ) ) ?gen176 <- ( to_confiscate_cl6_le ( value 1 ) ( negative-support $?gen179 ) ( negative-overruled $?gen180 & : ( not ( subseq-pos ( create$ confiscation_cl6_le-overruled $?gen179 $$$ $?gen180 ) ) ) ) ( positive-defeated $?gen178 & : ( not ( member$ confiscation_cl6_le $?gen178 ) ) ) ) ( test ( eq ( class ?gen176 ) to_confiscate_cl6_le ) ) => ( calc ( bind $?gen181 ( create$ confiscation_cl6_le-overruled $?gen179 $?gen180 ) ) ) ?gen176 <- ( to_confiscate_cl6_le ( negative-overruled $?gen181 ) )"))

([confiscation_cl6_le-support] of derived-attribute-rule
   (pos-name confiscation_cl6_le-support-gen588)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity to_confiscate_cl6_le)
   (implies to_confiscate_cl6_le)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [confiscation_cl6_le] ) ) ) ?gen175 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ) ?gen176 <- ( to_confiscate_cl6_le ( value 1 ) ( positive-support $?gen178 & : ( not ( subseq-pos ( create$ confiscation_cl6_le ?gen175 $$$ $?gen178 ) ) ) ) ) ( test ( eq ( class ?gen176 ) to_confiscate_cl6_le ) ) => ( calc ( bind $?gen181 ( create$ confiscation_cl6_le ?gen175 $?gen178 ) ) ) ?gen176 <- ( to_confiscate_cl6_le ( positive-support $?gen181 ) )"))

([pen_cl6_le_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl6_le_max-defeasibly-dot-gen590)
   (depends-on declare to_pay_max_cl6_le placed_on_market_rezani_duvan_legal_entity to_pay_max_cl6_le)
   (implies to_pay_max_cl6_le)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl6_le_max] ) ) ) ?gen167 <- ( to_pay_max_cl6_le ( value 20000 ) ( positive 1 ) ( positive-derivator pen_cl6_le_max $? ) ) ( test ( eq ( class ?gen167 ) to_pay_max_cl6_le ) ) ( not ( and ?gen174 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ( positive ?gen173 & : ( >= ?gen173 1 ) ) ) ?gen167 <- ( to_pay_max_cl6_le ( negative ~ 2 ) ( positive-overruled $?gen169 & : ( not ( member$ pen_cl6_le_max $?gen169 ) ) ) ) ) ) => ?gen167 <- ( to_pay_max_cl6_le ( positive 0 ) )"))

([pen_cl6_le_max-defeasibly] of derived-attribute-rule
   (pos-name pen_cl6_le_max-defeasibly-gen592)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity to_pay_max_cl6_le)
   (implies to_pay_max_cl6_le)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl6_le_max] ) ) ) ?gen174 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ( positive ?gen173 & : ( >= ?gen173 1 ) ) ) ?gen167 <- ( to_pay_max_cl6_le ( value 20000 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen169 & : ( not ( member$ pen_cl6_le_max $?gen169 ) ) ) ) ( test ( eq ( class ?gen167 ) to_pay_max_cl6_le ) ) => ?gen167 <- ( to_pay_max_cl6_le ( positive 1 ) ( positive-derivator pen_cl6_le_max ?gen174 ) )"))

([pen_cl6_le_max-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl6_le_max-overruled-dot-gen594)
   (depends-on declare to_pay_max_cl6_le placed_on_market_rezani_duvan_legal_entity to_pay_max_cl6_le)
   (implies to_pay_max_cl6_le)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl6_le_max] ) ) ) ?gen167 <- ( to_pay_max_cl6_le ( value 20000 ) ( negative-support $?gen170 ) ( negative-overruled $?gen171 & : ( subseq-pos ( create$ pen_cl6_le_max-overruled $?gen170 $$$ $?gen171 ) ) ) ) ( test ( eq ( class ?gen167 ) to_pay_max_cl6_le ) ) ( not ( and ?gen174 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ( positive ?gen173 & : ( >= ?gen173 1 ) ) ) ?gen167 <- ( to_pay_max_cl6_le ( positive-defeated $?gen169 & : ( not ( member$ pen_cl6_le_max $?gen169 ) ) ) ) ) ) => ( calc ( bind $?gen172 ( delete-member$ $?gen171 ( create$ pen_cl6_le_max-overruled $?gen170 ) ) ) ) ?gen167 <- ( to_pay_max_cl6_le ( negative-overruled $?gen172 ) )"))

([pen_cl6_le_max-overruled] of derived-attribute-rule
   (pos-name pen_cl6_le_max-overruled-gen596)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity to_pay_max_cl6_le)
   (implies to_pay_max_cl6_le)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl6_le_max] ) ) ) ?gen174 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ( positive ?gen173 & : ( >= ?gen173 1 ) ) ) ?gen167 <- ( to_pay_max_cl6_le ( value 20000 ) ( negative-support $?gen170 ) ( negative-overruled $?gen171 & : ( not ( subseq-pos ( create$ pen_cl6_le_max-overruled $?gen170 $$$ $?gen171 ) ) ) ) ( positive-defeated $?gen169 & : ( not ( member$ pen_cl6_le_max $?gen169 ) ) ) ) ( test ( eq ( class ?gen167 ) to_pay_max_cl6_le ) ) => ( calc ( bind $?gen172 ( create$ pen_cl6_le_max-overruled $?gen170 $?gen171 ) ) ) ?gen167 <- ( to_pay_max_cl6_le ( negative-overruled $?gen172 ) )"))

([pen_cl6_le_max-support] of derived-attribute-rule
   (pos-name pen_cl6_le_max-support-gen598)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity to_pay_max_cl6_le)
   (implies to_pay_max_cl6_le)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl6_le_max] ) ) ) ?gen166 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ) ?gen167 <- ( to_pay_max_cl6_le ( value 20000 ) ( positive-support $?gen169 & : ( not ( subseq-pos ( create$ pen_cl6_le_max ?gen166 $$$ $?gen169 ) ) ) ) ) ( test ( eq ( class ?gen167 ) to_pay_max_cl6_le ) ) => ( calc ( bind $?gen172 ( create$ pen_cl6_le_max ?gen166 $?gen169 ) ) ) ?gen167 <- ( to_pay_max_cl6_le ( positive-support $?gen172 ) )"))

([pen_cl6_le_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl6_le_min-defeasibly-dot-gen600)
   (depends-on declare to_pay_min_cl6_le placed_on_market_rezani_duvan_legal_entity to_pay_min_cl6_le)
   (implies to_pay_min_cl6_le)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl6_le_min] ) ) ) ?gen158 <- ( to_pay_min_cl6_le ( value 10000 ) ( positive 1 ) ( positive-derivator pen_cl6_le_min $? ) ) ( test ( eq ( class ?gen158 ) to_pay_min_cl6_le ) ) ( not ( and ?gen165 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ( positive ?gen164 & : ( >= ?gen164 1 ) ) ) ?gen158 <- ( to_pay_min_cl6_le ( negative ~ 2 ) ( positive-overruled $?gen160 & : ( not ( member$ pen_cl6_le_min $?gen160 ) ) ) ) ) ) => ?gen158 <- ( to_pay_min_cl6_le ( positive 0 ) )"))

([pen_cl6_le_min-defeasibly] of derived-attribute-rule
   (pos-name pen_cl6_le_min-defeasibly-gen602)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity to_pay_min_cl6_le)
   (implies to_pay_min_cl6_le)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl6_le_min] ) ) ) ?gen165 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ( positive ?gen164 & : ( >= ?gen164 1 ) ) ) ?gen158 <- ( to_pay_min_cl6_le ( value 10000 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen160 & : ( not ( member$ pen_cl6_le_min $?gen160 ) ) ) ) ( test ( eq ( class ?gen158 ) to_pay_min_cl6_le ) ) => ?gen158 <- ( to_pay_min_cl6_le ( positive 1 ) ( positive-derivator pen_cl6_le_min ?gen165 ) )"))

([pen_cl6_le_min-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl6_le_min-overruled-dot-gen604)
   (depends-on declare to_pay_min_cl6_le placed_on_market_rezani_duvan_legal_entity to_pay_min_cl6_le)
   (implies to_pay_min_cl6_le)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl6_le_min] ) ) ) ?gen158 <- ( to_pay_min_cl6_le ( value 10000 ) ( negative-support $?gen161 ) ( negative-overruled $?gen162 & : ( subseq-pos ( create$ pen_cl6_le_min-overruled $?gen161 $$$ $?gen162 ) ) ) ) ( test ( eq ( class ?gen158 ) to_pay_min_cl6_le ) ) ( not ( and ?gen165 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ( positive ?gen164 & : ( >= ?gen164 1 ) ) ) ?gen158 <- ( to_pay_min_cl6_le ( positive-defeated $?gen160 & : ( not ( member$ pen_cl6_le_min $?gen160 ) ) ) ) ) ) => ( calc ( bind $?gen163 ( delete-member$ $?gen162 ( create$ pen_cl6_le_min-overruled $?gen161 ) ) ) ) ?gen158 <- ( to_pay_min_cl6_le ( negative-overruled $?gen163 ) )"))

([pen_cl6_le_min-overruled] of derived-attribute-rule
   (pos-name pen_cl6_le_min-overruled-gen606)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity to_pay_min_cl6_le)
   (implies to_pay_min_cl6_le)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl6_le_min] ) ) ) ?gen165 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ( positive ?gen164 & : ( >= ?gen164 1 ) ) ) ?gen158 <- ( to_pay_min_cl6_le ( value 10000 ) ( negative-support $?gen161 ) ( negative-overruled $?gen162 & : ( not ( subseq-pos ( create$ pen_cl6_le_min-overruled $?gen161 $$$ $?gen162 ) ) ) ) ( positive-defeated $?gen160 & : ( not ( member$ pen_cl6_le_min $?gen160 ) ) ) ) ( test ( eq ( class ?gen158 ) to_pay_min_cl6_le ) ) => ( calc ( bind $?gen163 ( create$ pen_cl6_le_min-overruled $?gen161 $?gen162 ) ) ) ?gen158 <- ( to_pay_min_cl6_le ( negative-overruled $?gen163 ) )"))

([pen_cl6_le_min-support] of derived-attribute-rule
   (pos-name pen_cl6_le_min-support-gen608)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity to_pay_min_cl6_le)
   (implies to_pay_min_cl6_le)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl6_le_min] ) ) ) ?gen157 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ) ?gen158 <- ( to_pay_min_cl6_le ( value 10000 ) ( positive-support $?gen160 & : ( not ( subseq-pos ( create$ pen_cl6_le_min ?gen157 $$$ $?gen160 ) ) ) ) ) ( test ( eq ( class ?gen158 ) to_pay_min_cl6_le ) ) => ( calc ( bind $?gen163 ( create$ pen_cl6_le_min ?gen157 $?gen160 ) ) ) ?gen158 <- ( to_pay_min_cl6_le ( positive-support $?gen163 ) )"))

([confiscation_cl6_ind-defeasibly-dot] of derived-attribute-rule
   (pos-name confiscation_cl6_ind-defeasibly-dot-gen610)
   (depends-on declare to_confiscate_cl6_ind placed_on_market_rezani_duvan_individual to_confiscate_cl6_ind)
   (implies to_confiscate_cl6_ind)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [confiscation_cl6_ind] ) ) ) ?gen149 <- ( to_confiscate_cl6_ind ( value 1 ) ( positive 1 ) ( positive-derivator confiscation_cl6_ind $? ) ) ( test ( eq ( class ?gen149 ) to_confiscate_cl6_ind ) ) ( not ( and ?gen156 <- ( placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) ( positive ?gen155 & : ( >= ?gen155 1 ) ) ) ?gen149 <- ( to_confiscate_cl6_ind ( negative ~ 2 ) ( positive-overruled $?gen151 & : ( not ( member$ confiscation_cl6_ind $?gen151 ) ) ) ) ) ) => ?gen149 <- ( to_confiscate_cl6_ind ( positive 0 ) )"))

([confiscation_cl6_ind-defeasibly] of derived-attribute-rule
   (pos-name confiscation_cl6_ind-defeasibly-gen612)
   (depends-on declare placed_on_market_rezani_duvan_individual to_confiscate_cl6_ind)
   (implies to_confiscate_cl6_ind)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [confiscation_cl6_ind] ) ) ) ?gen156 <- ( placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) ( positive ?gen155 & : ( >= ?gen155 1 ) ) ) ?gen149 <- ( to_confiscate_cl6_ind ( value 1 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen151 & : ( not ( member$ confiscation_cl6_ind $?gen151 ) ) ) ) ( test ( eq ( class ?gen149 ) to_confiscate_cl6_ind ) ) => ?gen149 <- ( to_confiscate_cl6_ind ( positive 1 ) ( positive-derivator confiscation_cl6_ind ?gen156 ) )"))

([confiscation_cl6_ind-overruled-dot] of derived-attribute-rule
   (pos-name confiscation_cl6_ind-overruled-dot-gen614)
   (depends-on declare to_confiscate_cl6_ind placed_on_market_rezani_duvan_individual to_confiscate_cl6_ind)
   (implies to_confiscate_cl6_ind)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [confiscation_cl6_ind] ) ) ) ?gen149 <- ( to_confiscate_cl6_ind ( value 1 ) ( negative-support $?gen152 ) ( negative-overruled $?gen153 & : ( subseq-pos ( create$ confiscation_cl6_ind-overruled $?gen152 $$$ $?gen153 ) ) ) ) ( test ( eq ( class ?gen149 ) to_confiscate_cl6_ind ) ) ( not ( and ?gen156 <- ( placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) ( positive ?gen155 & : ( >= ?gen155 1 ) ) ) ?gen149 <- ( to_confiscate_cl6_ind ( positive-defeated $?gen151 & : ( not ( member$ confiscation_cl6_ind $?gen151 ) ) ) ) ) ) => ( calc ( bind $?gen154 ( delete-member$ $?gen153 ( create$ confiscation_cl6_ind-overruled $?gen152 ) ) ) ) ?gen149 <- ( to_confiscate_cl6_ind ( negative-overruled $?gen154 ) )"))

([confiscation_cl6_ind-overruled] of derived-attribute-rule
   (pos-name confiscation_cl6_ind-overruled-gen616)
   (depends-on declare placed_on_market_rezani_duvan_individual to_confiscate_cl6_ind)
   (implies to_confiscate_cl6_ind)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [confiscation_cl6_ind] ) ) ) ?gen156 <- ( placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) ( positive ?gen155 & : ( >= ?gen155 1 ) ) ) ?gen149 <- ( to_confiscate_cl6_ind ( value 1 ) ( negative-support $?gen152 ) ( negative-overruled $?gen153 & : ( not ( subseq-pos ( create$ confiscation_cl6_ind-overruled $?gen152 $$$ $?gen153 ) ) ) ) ( positive-defeated $?gen151 & : ( not ( member$ confiscation_cl6_ind $?gen151 ) ) ) ) ( test ( eq ( class ?gen149 ) to_confiscate_cl6_ind ) ) => ( calc ( bind $?gen154 ( create$ confiscation_cl6_ind-overruled $?gen152 $?gen153 ) ) ) ?gen149 <- ( to_confiscate_cl6_ind ( negative-overruled $?gen154 ) )"))

([confiscation_cl6_ind-support] of derived-attribute-rule
   (pos-name confiscation_cl6_ind-support-gen618)
   (depends-on declare placed_on_market_rezani_duvan_individual to_confiscate_cl6_ind)
   (implies to_confiscate_cl6_ind)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [confiscation_cl6_ind] ) ) ) ?gen148 <- ( placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) ) ?gen149 <- ( to_confiscate_cl6_ind ( value 1 ) ( positive-support $?gen151 & : ( not ( subseq-pos ( create$ confiscation_cl6_ind ?gen148 $$$ $?gen151 ) ) ) ) ) ( test ( eq ( class ?gen149 ) to_confiscate_cl6_ind ) ) => ( calc ( bind $?gen154 ( create$ confiscation_cl6_ind ?gen148 $?gen151 ) ) ) ?gen149 <- ( to_confiscate_cl6_ind ( positive-support $?gen154 ) )"))

([pen_cl6_ind_max-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl6_ind_max-defeasibly-dot-gen620)
   (depends-on declare to_pay_max_cl6_ind placed_on_market_rezani_duvan_individual to_pay_max_cl6_ind)
   (implies to_pay_max_cl6_ind)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl6_ind_max] ) ) ) ?gen140 <- ( to_pay_max_cl6_ind ( value 1000 ) ( positive 1 ) ( positive-derivator pen_cl6_ind_max $? ) ) ( test ( eq ( class ?gen140 ) to_pay_max_cl6_ind ) ) ( not ( and ?gen147 <- ( placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) ( positive ?gen146 & : ( >= ?gen146 1 ) ) ) ?gen140 <- ( to_pay_max_cl6_ind ( negative ~ 2 ) ( positive-overruled $?gen142 & : ( not ( member$ pen_cl6_ind_max $?gen142 ) ) ) ) ) ) => ?gen140 <- ( to_pay_max_cl6_ind ( positive 0 ) )"))

([pen_cl6_ind_max-defeasibly] of derived-attribute-rule
   (pos-name pen_cl6_ind_max-defeasibly-gen622)
   (depends-on declare placed_on_market_rezani_duvan_individual to_pay_max_cl6_ind)
   (implies to_pay_max_cl6_ind)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl6_ind_max] ) ) ) ?gen147 <- ( placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) ( positive ?gen146 & : ( >= ?gen146 1 ) ) ) ?gen140 <- ( to_pay_max_cl6_ind ( value 1000 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen142 & : ( not ( member$ pen_cl6_ind_max $?gen142 ) ) ) ) ( test ( eq ( class ?gen140 ) to_pay_max_cl6_ind ) ) => ?gen140 <- ( to_pay_max_cl6_ind ( positive 1 ) ( positive-derivator pen_cl6_ind_max ?gen147 ) )"))

([pen_cl6_ind_max-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl6_ind_max-overruled-dot-gen624)
   (depends-on declare to_pay_max_cl6_ind placed_on_market_rezani_duvan_individual to_pay_max_cl6_ind)
   (implies to_pay_max_cl6_ind)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl6_ind_max] ) ) ) ?gen140 <- ( to_pay_max_cl6_ind ( value 1000 ) ( negative-support $?gen143 ) ( negative-overruled $?gen144 & : ( subseq-pos ( create$ pen_cl6_ind_max-overruled $?gen143 $$$ $?gen144 ) ) ) ) ( test ( eq ( class ?gen140 ) to_pay_max_cl6_ind ) ) ( not ( and ?gen147 <- ( placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) ( positive ?gen146 & : ( >= ?gen146 1 ) ) ) ?gen140 <- ( to_pay_max_cl6_ind ( positive-defeated $?gen142 & : ( not ( member$ pen_cl6_ind_max $?gen142 ) ) ) ) ) ) => ( calc ( bind $?gen145 ( delete-member$ $?gen144 ( create$ pen_cl6_ind_max-overruled $?gen143 ) ) ) ) ?gen140 <- ( to_pay_max_cl6_ind ( negative-overruled $?gen145 ) )"))

([pen_cl6_ind_max-overruled] of derived-attribute-rule
   (pos-name pen_cl6_ind_max-overruled-gen626)
   (depends-on declare placed_on_market_rezani_duvan_individual to_pay_max_cl6_ind)
   (implies to_pay_max_cl6_ind)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl6_ind_max] ) ) ) ?gen147 <- ( placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) ( positive ?gen146 & : ( >= ?gen146 1 ) ) ) ?gen140 <- ( to_pay_max_cl6_ind ( value 1000 ) ( negative-support $?gen143 ) ( negative-overruled $?gen144 & : ( not ( subseq-pos ( create$ pen_cl6_ind_max-overruled $?gen143 $$$ $?gen144 ) ) ) ) ( positive-defeated $?gen142 & : ( not ( member$ pen_cl6_ind_max $?gen142 ) ) ) ) ( test ( eq ( class ?gen140 ) to_pay_max_cl6_ind ) ) => ( calc ( bind $?gen145 ( create$ pen_cl6_ind_max-overruled $?gen143 $?gen144 ) ) ) ?gen140 <- ( to_pay_max_cl6_ind ( negative-overruled $?gen145 ) )"))

([pen_cl6_ind_max-support] of derived-attribute-rule
   (pos-name pen_cl6_ind_max-support-gen628)
   (depends-on declare placed_on_market_rezani_duvan_individual to_pay_max_cl6_ind)
   (implies to_pay_max_cl6_ind)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl6_ind_max] ) ) ) ?gen139 <- ( placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) ) ?gen140 <- ( to_pay_max_cl6_ind ( value 1000 ) ( positive-support $?gen142 & : ( not ( subseq-pos ( create$ pen_cl6_ind_max ?gen139 $$$ $?gen142 ) ) ) ) ) ( test ( eq ( class ?gen140 ) to_pay_max_cl6_ind ) ) => ( calc ( bind $?gen145 ( create$ pen_cl6_ind_max ?gen139 $?gen142 ) ) ) ?gen140 <- ( to_pay_max_cl6_ind ( positive-support $?gen145 ) )"))

([pen_cl6_ind_min-defeasibly-dot] of derived-attribute-rule
   (pos-name pen_cl6_ind_min-defeasibly-dot-gen630)
   (depends-on declare to_pay_min_cl6_ind placed_on_market_rezani_duvan_individual to_pay_min_cl6_ind)
   (implies to_pay_min_cl6_ind)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [pen_cl6_ind_min] ) ) ) ?gen131 <- ( to_pay_min_cl6_ind ( value 50 ) ( positive 1 ) ( positive-derivator pen_cl6_ind_min $? ) ) ( test ( eq ( class ?gen131 ) to_pay_min_cl6_ind ) ) ( not ( and ?gen138 <- ( placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) ( positive ?gen137 & : ( >= ?gen137 1 ) ) ) ?gen131 <- ( to_pay_min_cl6_ind ( negative ~ 2 ) ( positive-overruled $?gen133 & : ( not ( member$ pen_cl6_ind_min $?gen133 ) ) ) ) ) ) => ?gen131 <- ( to_pay_min_cl6_ind ( positive 0 ) )"))

([pen_cl6_ind_min-defeasibly] of derived-attribute-rule
   (pos-name pen_cl6_ind_min-defeasibly-gen632)
   (depends-on declare placed_on_market_rezani_duvan_individual to_pay_min_cl6_ind)
   (implies to_pay_min_cl6_ind)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [pen_cl6_ind_min] ) ) ) ?gen138 <- ( placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) ( positive ?gen137 & : ( >= ?gen137 1 ) ) ) ?gen131 <- ( to_pay_min_cl6_ind ( value 50 ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen133 & : ( not ( member$ pen_cl6_ind_min $?gen133 ) ) ) ) ( test ( eq ( class ?gen131 ) to_pay_min_cl6_ind ) ) => ?gen131 <- ( to_pay_min_cl6_ind ( positive 1 ) ( positive-derivator pen_cl6_ind_min ?gen138 ) )"))

([pen_cl6_ind_min-overruled-dot] of derived-attribute-rule
   (pos-name pen_cl6_ind_min-overruled-dot-gen634)
   (depends-on declare to_pay_min_cl6_ind placed_on_market_rezani_duvan_individual to_pay_min_cl6_ind)
   (implies to_pay_min_cl6_ind)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [pen_cl6_ind_min] ) ) ) ?gen131 <- ( to_pay_min_cl6_ind ( value 50 ) ( negative-support $?gen134 ) ( negative-overruled $?gen135 & : ( subseq-pos ( create$ pen_cl6_ind_min-overruled $?gen134 $$$ $?gen135 ) ) ) ) ( test ( eq ( class ?gen131 ) to_pay_min_cl6_ind ) ) ( not ( and ?gen138 <- ( placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) ( positive ?gen137 & : ( >= ?gen137 1 ) ) ) ?gen131 <- ( to_pay_min_cl6_ind ( positive-defeated $?gen133 & : ( not ( member$ pen_cl6_ind_min $?gen133 ) ) ) ) ) ) => ( calc ( bind $?gen136 ( delete-member$ $?gen135 ( create$ pen_cl6_ind_min-overruled $?gen134 ) ) ) ) ?gen131 <- ( to_pay_min_cl6_ind ( negative-overruled $?gen136 ) )"))

([pen_cl6_ind_min-overruled] of derived-attribute-rule
   (pos-name pen_cl6_ind_min-overruled-gen636)
   (depends-on declare placed_on_market_rezani_duvan_individual to_pay_min_cl6_ind)
   (implies to_pay_min_cl6_ind)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [pen_cl6_ind_min] ) ) ) ?gen138 <- ( placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) ( positive ?gen137 & : ( >= ?gen137 1 ) ) ) ?gen131 <- ( to_pay_min_cl6_ind ( value 50 ) ( negative-support $?gen134 ) ( negative-overruled $?gen135 & : ( not ( subseq-pos ( create$ pen_cl6_ind_min-overruled $?gen134 $$$ $?gen135 ) ) ) ) ( positive-defeated $?gen133 & : ( not ( member$ pen_cl6_ind_min $?gen133 ) ) ) ) ( test ( eq ( class ?gen131 ) to_pay_min_cl6_ind ) ) => ( calc ( bind $?gen136 ( create$ pen_cl6_ind_min-overruled $?gen134 $?gen135 ) ) ) ?gen131 <- ( to_pay_min_cl6_ind ( negative-overruled $?gen136 ) )"))

([pen_cl6_ind_min-support] of derived-attribute-rule
   (pos-name pen_cl6_ind_min-support-gen638)
   (depends-on declare placed_on_market_rezani_duvan_individual to_pay_min_cl6_ind)
   (implies to_pay_min_cl6_ind)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [pen_cl6_ind_min] ) ) ) ?gen130 <- ( placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) ) ?gen131 <- ( to_pay_min_cl6_ind ( value 50 ) ( positive-support $?gen133 & : ( not ( subseq-pos ( create$ pen_cl6_ind_min ?gen130 $$$ $?gen133 ) ) ) ) ) ( test ( eq ( class ?gen131 ) to_pay_min_cl6_ind ) ) => ( calc ( bind $?gen136 ( create$ pen_cl6_ind_min ?gen130 $?gen133 ) ) ) ?gen131 <- ( to_pay_min_cl6_ind ( positive-support $?gen136 ) )"))

([rulent5-defeasibly-dot] of derived-attribute-rule
   (pos-name rulent5-defeasibly-dot-gen640)
   (depends-on declare unauthorized_tobacco_distribution_lv2p unauthorized_tobacco_distribution_lv3 unauthorized_tobacco_distribution_lv2p)
   (implies unauthorized_tobacco_distribution_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rulent5] ) ) ) ?gen122 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ( negative 1 ) ( negative-derivator rulent5 $? ) ) ( test ( eq ( class ?gen122 ) unauthorized_tobacco_distribution_lv2p ) ) ( not ( and ?gen129 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ( positive ?gen128 & : ( >= ?gen128 1 ) ) ) ?gen122 <- ( unauthorized_tobacco_distribution_lv2p ( positive ~ 2 ) ( negative-overruled $?gen124 & : ( not ( member$ rulent5 $?gen124 ) ) ) ) ) ) => ?gen122 <- ( unauthorized_tobacco_distribution_lv2p ( negative 0 ) )"))

([rulent5-defeasibly] of derived-attribute-rule
   (pos-name rulent5-defeasibly-gen642)
   (depends-on declare unauthorized_tobacco_distribution_lv3 unauthorized_tobacco_distribution_lv2p)
   (implies unauthorized_tobacco_distribution_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rulent5] ) ) ) ?gen129 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ( positive ?gen128 & : ( >= ?gen128 1 ) ) ) ?gen122 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ( negative 0 ) ( positive ~ 2 ) ( negative-overruled $?gen124 & : ( not ( member$ rulent5 $?gen124 ) ) ) ) ( test ( eq ( class ?gen122 ) unauthorized_tobacco_distribution_lv2p ) ) => ?gen122 <- ( unauthorized_tobacco_distribution_lv2p ( negative 1 ) ( negative-derivator rulent5 ?gen129 ) )"))

([rulent5-overruled-dot] of derived-attribute-rule
   (pos-name rulent5-overruled-dot-gen644)
   (depends-on declare unauthorized_tobacco_distribution_lv2p unauthorized_tobacco_distribution_lv3 unauthorized_tobacco_distribution_lv2p)
   (implies unauthorized_tobacco_distribution_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rulent5] ) ) ) ?gen122 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ( positive-support $?gen125 ) ( positive-overruled $?gen126 & : ( subseq-pos ( create$ rulent5-overruled $?gen125 $$$ $?gen126 ) ) ) ) ( test ( eq ( class ?gen122 ) unauthorized_tobacco_distribution_lv2p ) ) ( not ( and ?gen129 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ( positive ?gen128 & : ( >= ?gen128 1 ) ) ) ?gen122 <- ( unauthorized_tobacco_distribution_lv2p ( negative-defeated $?gen124 & : ( not ( member$ rulent5 $?gen124 ) ) ) ) ) ) => ( calc ( bind $?gen127 ( delete-member$ $?gen126 ( create$ rulent5-overruled $?gen125 ) ) ) ) ?gen122 <- ( unauthorized_tobacco_distribution_lv2p ( positive-overruled $?gen127 ) )"))

([rulent5-overruled] of derived-attribute-rule
   (pos-name rulent5-overruled-gen646)
   (depends-on declare unauthorized_tobacco_distribution_lv3 unauthorized_tobacco_distribution_lv2p)
   (implies unauthorized_tobacco_distribution_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rulent5] ) ) ) ?gen129 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ( positive ?gen128 & : ( >= ?gen128 1 ) ) ) ?gen122 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ( positive-support $?gen125 ) ( positive-overruled $?gen126 & : ( not ( subseq-pos ( create$ rulent5-overruled $?gen125 $$$ $?gen126 ) ) ) ) ( negative-defeated $?gen124 & : ( not ( member$ rulent5 $?gen124 ) ) ) ) ( test ( eq ( class ?gen122 ) unauthorized_tobacco_distribution_lv2p ) ) => ( calc ( bind $?gen127 ( create$ rulent5-overruled $?gen125 $?gen126 ) ) ) ?gen122 <- ( unauthorized_tobacco_distribution_lv2p ( positive-overruled $?gen127 ) )"))

([rulent5-support] of derived-attribute-rule
   (pos-name rulent5-support-gen648)
   (depends-on declare unauthorized_tobacco_distribution_lv3 unauthorized_tobacco_distribution_lv2p)
   (implies unauthorized_tobacco_distribution_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rulent5] ) ) ) ?gen121 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ) ?gen122 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ( negative-support $?gen124 & : ( not ( subseq-pos ( create$ rulent5 ?gen121 $$$ $?gen124 ) ) ) ) ) ( test ( eq ( class ?gen122 ) unauthorized_tobacco_distribution_lv2p ) ) => ( calc ( bind $?gen127 ( create$ rulent5 ?gen121 $?gen124 ) ) ) ?gen122 <- ( unauthorized_tobacco_distribution_lv2p ( negative-support $?gen127 ) )"))

([rulent4-defeated-dot] of derived-attribute-rule
   (pos-name rulent4-defeated-dot-gen650)
   (depends-on declare unauthorized_tobacco_distribution_lv3 lc:case)
   (implies unauthorized_tobacco_distribution_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rulent4] ) ) ) ?gen113 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ( negative-defeated $?gen116 & : ( subseq-pos ( create$ rulent4-defeated rulent1 rulent2 rulent3 $$$ $?gen116 ) ) ) ) ( test ( eq ( class ?gen113 ) unauthorized_tobacco_distribution_lv3 ) ) ( not ( and ?gen120 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ( positive ?gen119 & : ( >= ?gen119 1 ) ) ) ( test ( > ?Profit 30000 ) ) ) ) => ( calc ( bind $?gen115 ( delete-member$ $?gen116 ( create$ rulent4-defeated rulent1 rulent2 rulent3 ) ) ) ) ?gen113 <- ( unauthorized_tobacco_distribution_lv3 ( negative-defeated $?gen115 ) )"))

([rulent4-defeated] of derived-attribute-rule
   (pos-name rulent4-defeated-gen652)
   (depends-on declare lc:case unauthorized_tobacco_distribution_lv3)
   (implies unauthorized_tobacco_distribution_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rulent4] ) ) ) ?gen120 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ( positive ?gen119 & : ( >= ?gen119 1 ) ) ) ( test ( > ?Profit 30000 ) ) ?gen113 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ( negative-defeated $?gen116 & : ( not ( subseq-pos ( create$ rulent4-defeated rulent1 rulent2 rulent3 $$$ $?gen116 ) ) ) ) ) ( test ( eq ( class ?gen113 ) unauthorized_tobacco_distribution_lv3 ) ) => ( calc ( bind $?gen115 ( create$ rulent4-defeated rulent1 rulent2 rulent3 $?gen116 ) ) ) ?gen113 <- ( unauthorized_tobacco_distribution_lv3 ( negative-defeated $?gen115 ) )"))

([rulent4-defeasibly-dot] of derived-attribute-rule
   (pos-name rulent4-defeasibly-dot-gen654)
   (depends-on declare unauthorized_tobacco_distribution_lv3 lc:case unauthorized_tobacco_distribution_lv3)
   (implies unauthorized_tobacco_distribution_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rulent4] ) ) ) ?gen113 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rulent4 $? ) ) ( test ( eq ( class ?gen113 ) unauthorized_tobacco_distribution_lv3 ) ) ( not ( and ?gen120 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ( positive ?gen119 & : ( >= ?gen119 1 ) ) ) ( test ( > ?Profit 30000 ) ) ?gen113 <- ( unauthorized_tobacco_distribution_lv3 ( negative ~ 2 ) ( positive-overruled $?gen115 & : ( not ( member$ rulent4 $?gen115 ) ) ) ) ) ) => ?gen113 <- ( unauthorized_tobacco_distribution_lv3 ( positive 0 ) )"))

([rulent4-defeasibly] of derived-attribute-rule
   (pos-name rulent4-defeasibly-gen656)
   (depends-on declare lc:case unauthorized_tobacco_distribution_lv3)
   (implies unauthorized_tobacco_distribution_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rulent4] ) ) ) ?gen120 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ( positive ?gen119 & : ( >= ?gen119 1 ) ) ) ( test ( > ?Profit 30000 ) ) ?gen113 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen115 & : ( not ( member$ rulent4 $?gen115 ) ) ) ) ( test ( eq ( class ?gen113 ) unauthorized_tobacco_distribution_lv3 ) ) => ?gen113 <- ( unauthorized_tobacco_distribution_lv3 ( positive 1 ) ( positive-derivator rulent4 ?gen120 ) )"))

([rulent4-overruled-dot] of derived-attribute-rule
   (pos-name rulent4-overruled-dot-gen658)
   (depends-on declare unauthorized_tobacco_distribution_lv3 lc:case unauthorized_tobacco_distribution_lv3)
   (implies unauthorized_tobacco_distribution_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rulent4] ) ) ) ?gen113 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ( negative-support $?gen116 ) ( negative-overruled $?gen117 & : ( subseq-pos ( create$ rulent4-overruled $?gen116 $$$ $?gen117 ) ) ) ) ( test ( eq ( class ?gen113 ) unauthorized_tobacco_distribution_lv3 ) ) ( not ( and ?gen120 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ( positive ?gen119 & : ( >= ?gen119 1 ) ) ) ( test ( > ?Profit 30000 ) ) ?gen113 <- ( unauthorized_tobacco_distribution_lv3 ( positive-defeated $?gen115 & : ( not ( member$ rulent4 $?gen115 ) ) ) ) ) ) => ( calc ( bind $?gen118 ( delete-member$ $?gen117 ( create$ rulent4-overruled $?gen116 ) ) ) ) ?gen113 <- ( unauthorized_tobacco_distribution_lv3 ( negative-overruled $?gen118 ) )"))

([rulent4-overruled] of derived-attribute-rule
   (pos-name rulent4-overruled-gen660)
   (depends-on declare lc:case unauthorized_tobacco_distribution_lv3)
   (implies unauthorized_tobacco_distribution_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rulent4] ) ) ) ?gen120 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ( positive ?gen119 & : ( >= ?gen119 1 ) ) ) ( test ( > ?Profit 30000 ) ) ?gen113 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ( negative-support $?gen116 ) ( negative-overruled $?gen117 & : ( not ( subseq-pos ( create$ rulent4-overruled $?gen116 $$$ $?gen117 ) ) ) ) ( positive-defeated $?gen115 & : ( not ( member$ rulent4 $?gen115 ) ) ) ) ( test ( eq ( class ?gen113 ) unauthorized_tobacco_distribution_lv3 ) ) => ( calc ( bind $?gen118 ( create$ rulent4-overruled $?gen116 $?gen117 ) ) ) ?gen113 <- ( unauthorized_tobacco_distribution_lv3 ( negative-overruled $?gen118 ) )"))

([rulent4-support] of derived-attribute-rule
   (pos-name rulent4-support-gen662)
   (depends-on declare lc:case unauthorized_tobacco_distribution_lv3)
   (implies unauthorized_tobacco_distribution_lv3)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rulent4] ) ) ) ?gen111 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ) ( test ( > ?Profit 30000 ) ) ?gen113 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ( positive-support $?gen115 & : ( not ( subseq-pos ( create$ rulent4 ?gen111 $$$ $?gen115 ) ) ) ) ) ( test ( eq ( class ?gen113 ) unauthorized_tobacco_distribution_lv3 ) ) => ( calc ( bind $?gen118 ( create$ rulent4 ?gen111 $?gen115 ) ) ) ?gen113 <- ( unauthorized_tobacco_distribution_lv3 ( positive-support $?gen118 ) )"))

([rulent3-defeated-dot] of derived-attribute-rule
   (pos-name rulent3-defeated-dot-gen664)
   (depends-on declare unauthorized_tobacco_distribution_lv2p lc:case)
   (implies unauthorized_tobacco_distribution_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rulent3] ) ) ) ?gen103 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ( negative-defeated $?gen106 & : ( subseq-pos ( create$ rulent3-defeated rulent1 rulent2 $$$ $?gen106 ) ) ) ) ( test ( eq ( class ?gen103 ) unauthorized_tobacco_distribution_lv2p ) ) ( not ( and ?gen110 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ( positive ?gen109 & : ( >= ?gen109 1 ) ) ) ( test ( > ?Profit 3000 ) ) ) ) => ( calc ( bind $?gen105 ( delete-member$ $?gen106 ( create$ rulent3-defeated rulent1 rulent2 ) ) ) ) ?gen103 <- ( unauthorized_tobacco_distribution_lv2p ( negative-defeated $?gen105 ) )"))

([rulent3-defeated] of derived-attribute-rule
   (pos-name rulent3-defeated-gen666)
   (depends-on declare lc:case unauthorized_tobacco_distribution_lv2p)
   (implies unauthorized_tobacco_distribution_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rulent3] ) ) ) ?gen110 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ( positive ?gen109 & : ( >= ?gen109 1 ) ) ) ( test ( > ?Profit 3000 ) ) ?gen103 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ( negative-defeated $?gen106 & : ( not ( subseq-pos ( create$ rulent3-defeated rulent1 rulent2 $$$ $?gen106 ) ) ) ) ) ( test ( eq ( class ?gen103 ) unauthorized_tobacco_distribution_lv2p ) ) => ( calc ( bind $?gen105 ( create$ rulent3-defeated rulent1 rulent2 $?gen106 ) ) ) ?gen103 <- ( unauthorized_tobacco_distribution_lv2p ( negative-defeated $?gen105 ) )"))

([rulent3-defeasibly-dot] of derived-attribute-rule
   (pos-name rulent3-defeasibly-dot-gen668)
   (depends-on declare unauthorized_tobacco_distribution_lv2p lc:case unauthorized_tobacco_distribution_lv2p)
   (implies unauthorized_tobacco_distribution_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rulent3] ) ) ) ?gen103 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rulent3 $? ) ) ( test ( eq ( class ?gen103 ) unauthorized_tobacco_distribution_lv2p ) ) ( not ( and ?gen110 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ( positive ?gen109 & : ( >= ?gen109 1 ) ) ) ( test ( > ?Profit 3000 ) ) ?gen103 <- ( unauthorized_tobacco_distribution_lv2p ( negative ~ 2 ) ( positive-overruled $?gen105 & : ( not ( member$ rulent3 $?gen105 ) ) ) ) ) ) => ?gen103 <- ( unauthorized_tobacco_distribution_lv2p ( positive 0 ) )"))

([rulent3-defeasibly] of derived-attribute-rule
   (pos-name rulent3-defeasibly-gen670)
   (depends-on declare lc:case unauthorized_tobacco_distribution_lv2p)
   (implies unauthorized_tobacco_distribution_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rulent3] ) ) ) ?gen110 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ( positive ?gen109 & : ( >= ?gen109 1 ) ) ) ( test ( > ?Profit 3000 ) ) ?gen103 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen105 & : ( not ( member$ rulent3 $?gen105 ) ) ) ) ( test ( eq ( class ?gen103 ) unauthorized_tobacco_distribution_lv2p ) ) => ?gen103 <- ( unauthorized_tobacco_distribution_lv2p ( positive 1 ) ( positive-derivator rulent3 ?gen110 ) )"))

([rulent3-overruled-dot] of derived-attribute-rule
   (pos-name rulent3-overruled-dot-gen672)
   (depends-on declare unauthorized_tobacco_distribution_lv2p lc:case unauthorized_tobacco_distribution_lv2p)
   (implies unauthorized_tobacco_distribution_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rulent3] ) ) ) ?gen103 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ( negative-support $?gen106 ) ( negative-overruled $?gen107 & : ( subseq-pos ( create$ rulent3-overruled $?gen106 $$$ $?gen107 ) ) ) ) ( test ( eq ( class ?gen103 ) unauthorized_tobacco_distribution_lv2p ) ) ( not ( and ?gen110 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ( positive ?gen109 & : ( >= ?gen109 1 ) ) ) ( test ( > ?Profit 3000 ) ) ?gen103 <- ( unauthorized_tobacco_distribution_lv2p ( positive-defeated $?gen105 & : ( not ( member$ rulent3 $?gen105 ) ) ) ) ) ) => ( calc ( bind $?gen108 ( delete-member$ $?gen107 ( create$ rulent3-overruled $?gen106 ) ) ) ) ?gen103 <- ( unauthorized_tobacco_distribution_lv2p ( negative-overruled $?gen108 ) )"))

([rulent3-overruled] of derived-attribute-rule
   (pos-name rulent3-overruled-gen674)
   (depends-on declare lc:case unauthorized_tobacco_distribution_lv2p)
   (implies unauthorized_tobacco_distribution_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rulent3] ) ) ) ?gen110 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ( positive ?gen109 & : ( >= ?gen109 1 ) ) ) ( test ( > ?Profit 3000 ) ) ?gen103 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ( negative-support $?gen106 ) ( negative-overruled $?gen107 & : ( not ( subseq-pos ( create$ rulent3-overruled $?gen106 $$$ $?gen107 ) ) ) ) ( positive-defeated $?gen105 & : ( not ( member$ rulent3 $?gen105 ) ) ) ) ( test ( eq ( class ?gen103 ) unauthorized_tobacco_distribution_lv2p ) ) => ( calc ( bind $?gen108 ( create$ rulent3-overruled $?gen106 $?gen107 ) ) ) ?gen103 <- ( unauthorized_tobacco_distribution_lv2p ( negative-overruled $?gen108 ) )"))

([rulent3-support] of derived-attribute-rule
   (pos-name rulent3-support-gen676)
   (depends-on declare lc:case unauthorized_tobacco_distribution_lv2p)
   (implies unauthorized_tobacco_distribution_lv2p)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rulent3] ) ) ) ?gen101 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ) ( test ( > ?Profit 3000 ) ) ?gen103 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ( positive-support $?gen105 & : ( not ( subseq-pos ( create$ rulent3 ?gen101 $$$ $?gen105 ) ) ) ) ) ( test ( eq ( class ?gen103 ) unauthorized_tobacco_distribution_lv2p ) ) => ( calc ( bind $?gen108 ( create$ rulent3 ?gen101 $?gen105 ) ) ) ?gen103 <- ( unauthorized_tobacco_distribution_lv2p ( positive-support $?gen108 ) )"))

([rulent2-defeated-dot] of derived-attribute-rule
   (pos-name rulent2-defeated-dot-gen678)
   (depends-on declare unauthorized_tobacco_distribution_lv2n lc:case lc:case)
   (implies unauthorized_tobacco_distribution_lv2n)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -3 [rulent2] ) ) ) ?gen91 <- ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ( negative-defeated $?gen94 & : ( subseq-pos ( create$ rulent2-defeated rulent1 $$$ $?gen94 ) ) ) ) ( test ( eq ( class ?gen91 ) unauthorized_tobacco_distribution_lv2n ) ) ( not ( and ?gen98 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ( positive ?gen97 & : ( >= ?gen97 1 ) ) ) ( test ( < ?Profit 3000 ) ) ?gen100 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:organized_reseller_network \"yes\" ) ( positive ?gen99 & : ( >= ?gen99 1 ) ) ) ) ) => ( calc ( bind $?gen93 ( delete-member$ $?gen94 ( create$ rulent2-defeated rulent1 ) ) ) ) ?gen91 <- ( unauthorized_tobacco_distribution_lv2n ( negative-defeated $?gen93 ) )"))

([rulent2-defeated] of derived-attribute-rule
   (pos-name rulent2-defeated-gen680)
   (depends-on declare lc:case lc:case unauthorized_tobacco_distribution_lv2n)
   (implies unauthorized_tobacco_distribution_lv2n)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 3 [rulent2] ) ) ) ?gen98 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ( positive ?gen97 & : ( >= ?gen97 1 ) ) ) ( test ( < ?Profit 3000 ) ) ?gen100 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:organized_reseller_network \"yes\" ) ( positive ?gen99 & : ( >= ?gen99 1 ) ) ) ?gen91 <- ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ( negative-defeated $?gen94 & : ( not ( subseq-pos ( create$ rulent2-defeated rulent1 $$$ $?gen94 ) ) ) ) ) ( test ( eq ( class ?gen91 ) unauthorized_tobacco_distribution_lv2n ) ) => ( calc ( bind $?gen93 ( create$ rulent2-defeated rulent1 $?gen94 ) ) ) ?gen91 <- ( unauthorized_tobacco_distribution_lv2n ( negative-defeated $?gen93 ) )"))

([rulent2-defeasibly-dot] of derived-attribute-rule
   (pos-name rulent2-defeasibly-dot-gen682)
   (depends-on declare unauthorized_tobacco_distribution_lv2n lc:case lc:case unauthorized_tobacco_distribution_lv2n)
   (implies unauthorized_tobacco_distribution_lv2n)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rulent2] ) ) ) ?gen91 <- ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rulent2 $? ) ) ( test ( eq ( class ?gen91 ) unauthorized_tobacco_distribution_lv2n ) ) ( not ( and ?gen98 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ( positive ?gen97 & : ( >= ?gen97 1 ) ) ) ( test ( < ?Profit 3000 ) ) ?gen100 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:organized_reseller_network \"yes\" ) ( positive ?gen99 & : ( >= ?gen99 1 ) ) ) ?gen91 <- ( unauthorized_tobacco_distribution_lv2n ( negative ~ 2 ) ( positive-overruled $?gen93 & : ( not ( member$ rulent2 $?gen93 ) ) ) ) ) ) => ?gen91 <- ( unauthorized_tobacco_distribution_lv2n ( positive 0 ) )"))

([rulent2-defeasibly] of derived-attribute-rule
   (pos-name rulent2-defeasibly-gen684)
   (depends-on declare lc:case lc:case unauthorized_tobacco_distribution_lv2n)
   (implies unauthorized_tobacco_distribution_lv2n)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rulent2] ) ) ) ?gen98 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ( positive ?gen97 & : ( >= ?gen97 1 ) ) ) ( test ( < ?Profit 3000 ) ) ?gen100 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:organized_reseller_network \"yes\" ) ( positive ?gen99 & : ( >= ?gen99 1 ) ) ) ?gen91 <- ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen93 & : ( not ( member$ rulent2 $?gen93 ) ) ) ) ( test ( eq ( class ?gen91 ) unauthorized_tobacco_distribution_lv2n ) ) => ?gen91 <- ( unauthorized_tobacco_distribution_lv2n ( positive 1 ) ( positive-derivator rulent2 ?gen98 ?gen100 ) )"))

([rulent2-overruled-dot] of derived-attribute-rule
   (pos-name rulent2-overruled-dot-gen686)
   (depends-on declare unauthorized_tobacco_distribution_lv2n lc:case lc:case unauthorized_tobacco_distribution_lv2n)
   (implies unauthorized_tobacco_distribution_lv2n)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rulent2] ) ) ) ?gen91 <- ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ( negative-support $?gen94 ) ( negative-overruled $?gen95 & : ( subseq-pos ( create$ rulent2-overruled $?gen94 $$$ $?gen95 ) ) ) ) ( test ( eq ( class ?gen91 ) unauthorized_tobacco_distribution_lv2n ) ) ( not ( and ?gen98 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ( positive ?gen97 & : ( >= ?gen97 1 ) ) ) ( test ( < ?Profit 3000 ) ) ?gen100 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:organized_reseller_network \"yes\" ) ( positive ?gen99 & : ( >= ?gen99 1 ) ) ) ?gen91 <- ( unauthorized_tobacco_distribution_lv2n ( positive-defeated $?gen93 & : ( not ( member$ rulent2 $?gen93 ) ) ) ) ) ) => ( calc ( bind $?gen96 ( delete-member$ $?gen95 ( create$ rulent2-overruled $?gen94 ) ) ) ) ?gen91 <- ( unauthorized_tobacco_distribution_lv2n ( negative-overruled $?gen96 ) )"))

([rulent2-overruled] of derived-attribute-rule
   (pos-name rulent2-overruled-gen688)
   (depends-on declare lc:case lc:case unauthorized_tobacco_distribution_lv2n)
   (implies unauthorized_tobacco_distribution_lv2n)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rulent2] ) ) ) ?gen98 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ( positive ?gen97 & : ( >= ?gen97 1 ) ) ) ( test ( < ?Profit 3000 ) ) ?gen100 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:organized_reseller_network \"yes\" ) ( positive ?gen99 & : ( >= ?gen99 1 ) ) ) ?gen91 <- ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ( negative-support $?gen94 ) ( negative-overruled $?gen95 & : ( not ( subseq-pos ( create$ rulent2-overruled $?gen94 $$$ $?gen95 ) ) ) ) ( positive-defeated $?gen93 & : ( not ( member$ rulent2 $?gen93 ) ) ) ) ( test ( eq ( class ?gen91 ) unauthorized_tobacco_distribution_lv2n ) ) => ( calc ( bind $?gen96 ( create$ rulent2-overruled $?gen94 $?gen95 ) ) ) ?gen91 <- ( unauthorized_tobacco_distribution_lv2n ( negative-overruled $?gen96 ) )"))

([rulent2-support] of derived-attribute-rule
   (pos-name rulent2-support-gen690)
   (depends-on declare lc:case lc:case unauthorized_tobacco_distribution_lv2n)
   (implies unauthorized_tobacco_distribution_lv2n)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rulent2] ) ) ) ?gen88 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ) ( test ( < ?Profit 3000 ) ) ?gen90 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:organized_reseller_network \"yes\" ) ) ?gen91 <- ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ( positive-support $?gen93 & : ( not ( subseq-pos ( create$ rulent2 ?gen88 ?gen90 $$$ $?gen93 ) ) ) ) ) ( test ( eq ( class ?gen91 ) unauthorized_tobacco_distribution_lv2n ) ) => ( calc ( bind $?gen96 ( create$ rulent2 ?gen88 ?gen90 $?gen93 ) ) ) ?gen91 <- ( unauthorized_tobacco_distribution_lv2n ( positive-support $?gen96 ) )"))

([rulent1-defeasibly-dot] of derived-attribute-rule
   (pos-name rulent1-defeasibly-dot-gen692)
   (depends-on declare unauthorized_tobacco_distribution_lv1 lc:case lc:case unauthorized_tobacco_distribution_lv1)
   (implies unauthorized_tobacco_distribution_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rulent1] ) ) ) ?gen78 <- ( unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rulent1 $? ) ) ( test ( eq ( class ?gen78 ) unauthorized_tobacco_distribution_lv1 ) ) ( not ( and ?gen85 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:organized_reseller_network \"no\" ) ( positive ?gen84 & : ( >= ?gen84 1 ) ) ) ?gen87 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ( positive ?gen86 & : ( >= ?gen86 1 ) ) ) ( test ( < ?Profit 3000 ) ) ?gen78 <- ( unauthorized_tobacco_distribution_lv1 ( negative ~ 2 ) ( positive-overruled $?gen80 & : ( not ( member$ rulent1 $?gen80 ) ) ) ) ) ) => ?gen78 <- ( unauthorized_tobacco_distribution_lv1 ( positive 0 ) )"))

([rulent1-defeasibly] of derived-attribute-rule
   (pos-name rulent1-defeasibly-gen694)
   (depends-on declare lc:case lc:case unauthorized_tobacco_distribution_lv1)
   (implies unauthorized_tobacco_distribution_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rulent1] ) ) ) ?gen85 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:organized_reseller_network \"no\" ) ( positive ?gen84 & : ( >= ?gen84 1 ) ) ) ?gen87 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ( positive ?gen86 & : ( >= ?gen86 1 ) ) ) ( test ( < ?Profit 3000 ) ) ?gen78 <- ( unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen80 & : ( not ( member$ rulent1 $?gen80 ) ) ) ) ( test ( eq ( class ?gen78 ) unauthorized_tobacco_distribution_lv1 ) ) => ?gen78 <- ( unauthorized_tobacco_distribution_lv1 ( positive 1 ) ( positive-derivator rulent1 ?gen85 ?gen87 ) )"))

([rulent1-overruled-dot] of derived-attribute-rule
   (pos-name rulent1-overruled-dot-gen696)
   (depends-on declare unauthorized_tobacco_distribution_lv1 lc:case lc:case unauthorized_tobacco_distribution_lv1)
   (implies unauthorized_tobacco_distribution_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rulent1] ) ) ) ?gen78 <- ( unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) ( negative-support $?gen81 ) ( negative-overruled $?gen82 & : ( subseq-pos ( create$ rulent1-overruled $?gen81 $$$ $?gen82 ) ) ) ) ( test ( eq ( class ?gen78 ) unauthorized_tobacco_distribution_lv1 ) ) ( not ( and ?gen85 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:organized_reseller_network \"no\" ) ( positive ?gen84 & : ( >= ?gen84 1 ) ) ) ?gen87 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ( positive ?gen86 & : ( >= ?gen86 1 ) ) ) ( test ( < ?Profit 3000 ) ) ?gen78 <- ( unauthorized_tobacco_distribution_lv1 ( positive-defeated $?gen80 & : ( not ( member$ rulent1 $?gen80 ) ) ) ) ) ) => ( calc ( bind $?gen83 ( delete-member$ $?gen82 ( create$ rulent1-overruled $?gen81 ) ) ) ) ?gen78 <- ( unauthorized_tobacco_distribution_lv1 ( negative-overruled $?gen83 ) )"))

([rulent1-overruled] of derived-attribute-rule
   (pos-name rulent1-overruled-gen698)
   (depends-on declare lc:case lc:case unauthorized_tobacco_distribution_lv1)
   (implies unauthorized_tobacco_distribution_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rulent1] ) ) ) ?gen85 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:organized_reseller_network \"no\" ) ( positive ?gen84 & : ( >= ?gen84 1 ) ) ) ?gen87 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ( positive ?gen86 & : ( >= ?gen86 1 ) ) ) ( test ( < ?Profit 3000 ) ) ?gen78 <- ( unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) ( negative-support $?gen81 ) ( negative-overruled $?gen82 & : ( not ( subseq-pos ( create$ rulent1-overruled $?gen81 $$$ $?gen82 ) ) ) ) ( positive-defeated $?gen80 & : ( not ( member$ rulent1 $?gen80 ) ) ) ) ( test ( eq ( class ?gen78 ) unauthorized_tobacco_distribution_lv1 ) ) => ( calc ( bind $?gen83 ( create$ rulent1-overruled $?gen81 $?gen82 ) ) ) ?gen78 <- ( unauthorized_tobacco_distribution_lv1 ( negative-overruled $?gen83 ) )"))

([rulent1-support] of derived-attribute-rule
   (pos-name rulent1-support-gen700)
   (depends-on declare lc:case lc:case unauthorized_tobacco_distribution_lv1)
   (implies unauthorized_tobacco_distribution_lv1)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rulent1] ) ) ) ?gen75 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:organized_reseller_network \"no\" ) ) ?gen76 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ) ( test ( < ?Profit 3000 ) ) ?gen78 <- ( unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) ( positive-support $?gen80 & : ( not ( subseq-pos ( create$ rulent1 ?gen75 ?gen76 $$$ $?gen80 ) ) ) ) ) ( test ( eq ( class ?gen78 ) unauthorized_tobacco_distribution_lv1 ) ) => ( calc ( bind $?gen83 ( create$ rulent1 ?gen75 ?gen76 $?gen80 ) ) ) ?gen78 <- ( unauthorized_tobacco_distribution_lv1 ( positive-support $?gen83 ) )"))

([rule14-defeasibly-dot] of derived-attribute-rule
   (pos-name rule14-defeasibly-dot-gen702)
   (depends-on declare unauthorized_retail_distribution lc:case lc:case unauthorized_retail_distribution)
   (implies unauthorized_retail_distribution)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule14] ) ) ) ?gen65 <- ( unauthorized_retail_distribution ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule14 $? ) ) ( test ( eq ( class ?gen65 ) unauthorized_retail_distribution ) ) ( not ( and ?gen72 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_done_retail_distribution \"yes\" ) ( positive ?gen71 & : ( >= ?gen71 1 ) ) ) ?gen74 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_retail_distribution_permit \"no\" ) ( positive ?gen73 & : ( >= ?gen73 1 ) ) ) ?gen65 <- ( unauthorized_retail_distribution ( negative ~ 2 ) ( positive-overruled $?gen67 & : ( not ( member$ rule14 $?gen67 ) ) ) ) ) ) => ?gen65 <- ( unauthorized_retail_distribution ( positive 0 ) )"))

([rule14-defeasibly] of derived-attribute-rule
   (pos-name rule14-defeasibly-gen704)
   (depends-on declare lc:case lc:case unauthorized_retail_distribution)
   (implies unauthorized_retail_distribution)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule14] ) ) ) ?gen72 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_done_retail_distribution \"yes\" ) ( positive ?gen71 & : ( >= ?gen71 1 ) ) ) ?gen74 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_retail_distribution_permit \"no\" ) ( positive ?gen73 & : ( >= ?gen73 1 ) ) ) ?gen65 <- ( unauthorized_retail_distribution ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen67 & : ( not ( member$ rule14 $?gen67 ) ) ) ) ( test ( eq ( class ?gen65 ) unauthorized_retail_distribution ) ) => ?gen65 <- ( unauthorized_retail_distribution ( positive 1 ) ( positive-derivator rule14 ?gen72 ?gen74 ) )"))

([rule14-overruled-dot] of derived-attribute-rule
   (pos-name rule14-overruled-dot-gen706)
   (depends-on declare unauthorized_retail_distribution lc:case lc:case unauthorized_retail_distribution)
   (implies unauthorized_retail_distribution)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule14] ) ) ) ?gen65 <- ( unauthorized_retail_distribution ( defendant ?Defendant ) ( negative-support $?gen68 ) ( negative-overruled $?gen69 & : ( subseq-pos ( create$ rule14-overruled $?gen68 $$$ $?gen69 ) ) ) ) ( test ( eq ( class ?gen65 ) unauthorized_retail_distribution ) ) ( not ( and ?gen72 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_done_retail_distribution \"yes\" ) ( positive ?gen71 & : ( >= ?gen71 1 ) ) ) ?gen74 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_retail_distribution_permit \"no\" ) ( positive ?gen73 & : ( >= ?gen73 1 ) ) ) ?gen65 <- ( unauthorized_retail_distribution ( positive-defeated $?gen67 & : ( not ( member$ rule14 $?gen67 ) ) ) ) ) ) => ( calc ( bind $?gen70 ( delete-member$ $?gen69 ( create$ rule14-overruled $?gen68 ) ) ) ) ?gen65 <- ( unauthorized_retail_distribution ( negative-overruled $?gen70 ) )"))

([rule14-overruled] of derived-attribute-rule
   (pos-name rule14-overruled-gen708)
   (depends-on declare lc:case lc:case unauthorized_retail_distribution)
   (implies unauthorized_retail_distribution)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule14] ) ) ) ?gen72 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_done_retail_distribution \"yes\" ) ( positive ?gen71 & : ( >= ?gen71 1 ) ) ) ?gen74 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_retail_distribution_permit \"no\" ) ( positive ?gen73 & : ( >= ?gen73 1 ) ) ) ?gen65 <- ( unauthorized_retail_distribution ( defendant ?Defendant ) ( negative-support $?gen68 ) ( negative-overruled $?gen69 & : ( not ( subseq-pos ( create$ rule14-overruled $?gen68 $$$ $?gen69 ) ) ) ) ( positive-defeated $?gen67 & : ( not ( member$ rule14 $?gen67 ) ) ) ) ( test ( eq ( class ?gen65 ) unauthorized_retail_distribution ) ) => ( calc ( bind $?gen70 ( create$ rule14-overruled $?gen68 $?gen69 ) ) ) ?gen65 <- ( unauthorized_retail_distribution ( negative-overruled $?gen70 ) )"))

([rule14-support] of derived-attribute-rule
   (pos-name rule14-support-gen710)
   (depends-on declare lc:case lc:case unauthorized_retail_distribution)
   (implies unauthorized_retail_distribution)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule14] ) ) ) ?gen63 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_done_retail_distribution \"yes\" ) ) ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_retail_distribution_permit \"no\" ) ) ?gen65 <- ( unauthorized_retail_distribution ( defendant ?Defendant ) ( positive-support $?gen67 & : ( not ( subseq-pos ( create$ rule14 ?gen63 ?gen64 $$$ $?gen67 ) ) ) ) ) ( test ( eq ( class ?gen65 ) unauthorized_retail_distribution ) ) => ( calc ( bind $?gen70 ( create$ rule14 ?gen63 ?gen64 $?gen67 ) ) ) ?gen65 <- ( unauthorized_retail_distribution ( positive-support $?gen70 ) )"))

([rule12-defeasibly-dot] of derived-attribute-rule
   (pos-name rule12-defeasibly-dot-gen712)
   (depends-on declare unauthorized_wholesale_distribution lc:case lc:case unauthorized_wholesale_distribution)
   (implies unauthorized_wholesale_distribution)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule12] ) ) ) ?gen53 <- ( unauthorized_wholesale_distribution ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule12 $? ) ) ( test ( eq ( class ?gen53 ) unauthorized_wholesale_distribution ) ) ( not ( and ?gen60 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_done_wholesale_distribution \"yes\" ) ( positive ?gen59 & : ( >= ?gen59 1 ) ) ) ?gen62 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_wholesale_distribution_permit \"no\" ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen53 <- ( unauthorized_wholesale_distribution ( negative ~ 2 ) ( positive-overruled $?gen55 & : ( not ( member$ rule12 $?gen55 ) ) ) ) ) ) => ?gen53 <- ( unauthorized_wholesale_distribution ( positive 0 ) )"))

([rule12-defeasibly] of derived-attribute-rule
   (pos-name rule12-defeasibly-gen714)
   (depends-on declare lc:case lc:case unauthorized_wholesale_distribution)
   (implies unauthorized_wholesale_distribution)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule12] ) ) ) ?gen60 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_done_wholesale_distribution \"yes\" ) ( positive ?gen59 & : ( >= ?gen59 1 ) ) ) ?gen62 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_wholesale_distribution_permit \"no\" ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen53 <- ( unauthorized_wholesale_distribution ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen55 & : ( not ( member$ rule12 $?gen55 ) ) ) ) ( test ( eq ( class ?gen53 ) unauthorized_wholesale_distribution ) ) => ?gen53 <- ( unauthorized_wholesale_distribution ( positive 1 ) ( positive-derivator rule12 ?gen60 ?gen62 ) )"))

([rule12-overruled-dot] of derived-attribute-rule
   (pos-name rule12-overruled-dot-gen716)
   (depends-on declare unauthorized_wholesale_distribution lc:case lc:case unauthorized_wholesale_distribution)
   (implies unauthorized_wholesale_distribution)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule12] ) ) ) ?gen53 <- ( unauthorized_wholesale_distribution ( defendant ?Defendant ) ( negative-support $?gen56 ) ( negative-overruled $?gen57 & : ( subseq-pos ( create$ rule12-overruled $?gen56 $$$ $?gen57 ) ) ) ) ( test ( eq ( class ?gen53 ) unauthorized_wholesale_distribution ) ) ( not ( and ?gen60 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_done_wholesale_distribution \"yes\" ) ( positive ?gen59 & : ( >= ?gen59 1 ) ) ) ?gen62 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_wholesale_distribution_permit \"no\" ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen53 <- ( unauthorized_wholesale_distribution ( positive-defeated $?gen55 & : ( not ( member$ rule12 $?gen55 ) ) ) ) ) ) => ( calc ( bind $?gen58 ( delete-member$ $?gen57 ( create$ rule12-overruled $?gen56 ) ) ) ) ?gen53 <- ( unauthorized_wholesale_distribution ( negative-overruled $?gen58 ) )"))

([rule12-overruled] of derived-attribute-rule
   (pos-name rule12-overruled-gen718)
   (depends-on declare lc:case lc:case unauthorized_wholesale_distribution)
   (implies unauthorized_wholesale_distribution)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule12] ) ) ) ?gen60 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_done_wholesale_distribution \"yes\" ) ( positive ?gen59 & : ( >= ?gen59 1 ) ) ) ?gen62 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_wholesale_distribution_permit \"no\" ) ( positive ?gen61 & : ( >= ?gen61 1 ) ) ) ?gen53 <- ( unauthorized_wholesale_distribution ( defendant ?Defendant ) ( negative-support $?gen56 ) ( negative-overruled $?gen57 & : ( not ( subseq-pos ( create$ rule12-overruled $?gen56 $$$ $?gen57 ) ) ) ) ( positive-defeated $?gen55 & : ( not ( member$ rule12 $?gen55 ) ) ) ) ( test ( eq ( class ?gen53 ) unauthorized_wholesale_distribution ) ) => ( calc ( bind $?gen58 ( create$ rule12-overruled $?gen56 $?gen57 ) ) ) ?gen53 <- ( unauthorized_wholesale_distribution ( negative-overruled $?gen58 ) )"))

([rule12-support] of derived-attribute-rule
   (pos-name rule12-support-gen720)
   (depends-on declare lc:case lc:case unauthorized_wholesale_distribution)
   (implies unauthorized_wholesale_distribution)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule12] ) ) ) ?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_done_wholesale_distribution \"yes\" ) ) ?gen52 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_wholesale_distribution_permit \"no\" ) ) ?gen53 <- ( unauthorized_wholesale_distribution ( defendant ?Defendant ) ( positive-support $?gen55 & : ( not ( subseq-pos ( create$ rule12 ?gen51 ?gen52 $$$ $?gen55 ) ) ) ) ) ( test ( eq ( class ?gen53 ) unauthorized_wholesale_distribution ) ) => ( calc ( bind $?gen58 ( create$ rule12 ?gen51 ?gen52 $?gen55 ) ) ) ?gen53 <- ( unauthorized_wholesale_distribution ( positive-support $?gen58 ) )"))

([rule63-defeasibly-dot] of derived-attribute-rule
   (pos-name rule63-defeasibly-dot-gen722)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity_responsible_individual lc:case lc:case placed_on_market_rezani_duvan_legal_entity_responsible_individual)
   (implies placed_on_market_rezani_duvan_legal_entity_responsible_individual)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule63] ) ) ) ?gen41 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule63 $? ) ) ( test ( eq ( class ?gen41 ) placed_on_market_rezani_duvan_legal_entity_responsible_individual ) ) ( not ( and ?gen48 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity_responsible_individual\" ) ( positive ?gen47 & : ( >= ?gen47 1 ) ) ) ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:placed_on_market_rezani_duvan \"yes\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen41 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( negative ~ 2 ) ( positive-overruled $?gen43 & : ( not ( member$ rule63 $?gen43 ) ) ) ) ) ) => ?gen41 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( positive 0 ) )"))

([rule63-defeasibly] of derived-attribute-rule
   (pos-name rule63-defeasibly-gen724)
   (depends-on declare lc:case lc:case placed_on_market_rezani_duvan_legal_entity_responsible_individual)
   (implies placed_on_market_rezani_duvan_legal_entity_responsible_individual)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule63] ) ) ) ?gen48 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity_responsible_individual\" ) ( positive ?gen47 & : ( >= ?gen47 1 ) ) ) ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:placed_on_market_rezani_duvan \"yes\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen41 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen43 & : ( not ( member$ rule63 $?gen43 ) ) ) ) ( test ( eq ( class ?gen41 ) placed_on_market_rezani_duvan_legal_entity_responsible_individual ) ) => ?gen41 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( positive 1 ) ( positive-derivator rule63 ?gen48 ?gen50 ) )"))

([rule63-overruled-dot] of derived-attribute-rule
   (pos-name rule63-overruled-dot-gen726)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity_responsible_individual lc:case lc:case placed_on_market_rezani_duvan_legal_entity_responsible_individual)
   (implies placed_on_market_rezani_duvan_legal_entity_responsible_individual)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule63] ) ) ) ?gen41 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ( negative-support $?gen44 ) ( negative-overruled $?gen45 & : ( subseq-pos ( create$ rule63-overruled $?gen44 $$$ $?gen45 ) ) ) ) ( test ( eq ( class ?gen41 ) placed_on_market_rezani_duvan_legal_entity_responsible_individual ) ) ( not ( and ?gen48 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity_responsible_individual\" ) ( positive ?gen47 & : ( >= ?gen47 1 ) ) ) ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:placed_on_market_rezani_duvan \"yes\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen41 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( positive-defeated $?gen43 & : ( not ( member$ rule63 $?gen43 ) ) ) ) ) ) => ( calc ( bind $?gen46 ( delete-member$ $?gen45 ( create$ rule63-overruled $?gen44 ) ) ) ) ?gen41 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( negative-overruled $?gen46 ) )"))

([rule63-overruled] of derived-attribute-rule
   (pos-name rule63-overruled-gen728)
   (depends-on declare lc:case lc:case placed_on_market_rezani_duvan_legal_entity_responsible_individual)
   (implies placed_on_market_rezani_duvan_legal_entity_responsible_individual)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule63] ) ) ) ?gen48 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity_responsible_individual\" ) ( positive ?gen47 & : ( >= ?gen47 1 ) ) ) ?gen50 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:placed_on_market_rezani_duvan \"yes\" ) ( positive ?gen49 & : ( >= ?gen49 1 ) ) ) ?gen41 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ( negative-support $?gen44 ) ( negative-overruled $?gen45 & : ( not ( subseq-pos ( create$ rule63-overruled $?gen44 $$$ $?gen45 ) ) ) ) ( positive-defeated $?gen43 & : ( not ( member$ rule63 $?gen43 ) ) ) ) ( test ( eq ( class ?gen41 ) placed_on_market_rezani_duvan_legal_entity_responsible_individual ) ) => ( calc ( bind $?gen46 ( create$ rule63-overruled $?gen44 $?gen45 ) ) ) ?gen41 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( negative-overruled $?gen46 ) )"))

([rule63-support] of derived-attribute-rule
   (pos-name rule63-support-gen730)
   (depends-on declare lc:case lc:case placed_on_market_rezani_duvan_legal_entity_responsible_individual)
   (implies placed_on_market_rezani_duvan_legal_entity_responsible_individual)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule63] ) ) ) ?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity_responsible_individual\" ) ) ?gen40 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:placed_on_market_rezani_duvan \"yes\" ) ) ?gen41 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ( positive-support $?gen43 & : ( not ( subseq-pos ( create$ rule63 ?gen39 ?gen40 $$$ $?gen43 ) ) ) ) ) ( test ( eq ( class ?gen41 ) placed_on_market_rezani_duvan_legal_entity_responsible_individual ) ) => ( calc ( bind $?gen46 ( create$ rule63 ?gen39 ?gen40 $?gen43 ) ) ) ?gen41 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( positive-support $?gen46 ) )"))

([rule62-defeasibly-dot] of derived-attribute-rule
   (pos-name rule62-defeasibly-dot-gen732)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity lc:case lc:case placed_on_market_rezani_duvan_legal_entity)
   (implies placed_on_market_rezani_duvan_legal_entity)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule62] ) ) ) ?gen29 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule62 $? ) ) ( test ( eq ( class ?gen29 ) placed_on_market_rezani_duvan_legal_entity ) ) ( not ( and ?gen36 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:placed_on_market_rezani_duvan \"yes\" ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( placed_on_market_rezani_duvan_legal_entity ( negative ~ 2 ) ( positive-overruled $?gen31 & : ( not ( member$ rule62 $?gen31 ) ) ) ) ) ) => ?gen29 <- ( placed_on_market_rezani_duvan_legal_entity ( positive 0 ) )"))

([rule62-defeasibly] of derived-attribute-rule
   (pos-name rule62-defeasibly-gen734)
   (depends-on declare lc:case lc:case placed_on_market_rezani_duvan_legal_entity)
   (implies placed_on_market_rezani_duvan_legal_entity)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule62] ) ) ) ?gen36 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:placed_on_market_rezani_duvan \"yes\" ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen31 & : ( not ( member$ rule62 $?gen31 ) ) ) ) ( test ( eq ( class ?gen29 ) placed_on_market_rezani_duvan_legal_entity ) ) => ?gen29 <- ( placed_on_market_rezani_duvan_legal_entity ( positive 1 ) ( positive-derivator rule62 ?gen36 ?gen38 ) )"))

([rule62-overruled-dot] of derived-attribute-rule
   (pos-name rule62-overruled-dot-gen736)
   (depends-on declare placed_on_market_rezani_duvan_legal_entity lc:case lc:case placed_on_market_rezani_duvan_legal_entity)
   (implies placed_on_market_rezani_duvan_legal_entity)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule62] ) ) ) ?gen29 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ( negative-support $?gen32 ) ( negative-overruled $?gen33 & : ( subseq-pos ( create$ rule62-overruled $?gen32 $$$ $?gen33 ) ) ) ) ( test ( eq ( class ?gen29 ) placed_on_market_rezani_duvan_legal_entity ) ) ( not ( and ?gen36 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:placed_on_market_rezani_duvan \"yes\" ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( placed_on_market_rezani_duvan_legal_entity ( positive-defeated $?gen31 & : ( not ( member$ rule62 $?gen31 ) ) ) ) ) ) => ( calc ( bind $?gen34 ( delete-member$ $?gen33 ( create$ rule62-overruled $?gen32 ) ) ) ) ?gen29 <- ( placed_on_market_rezani_duvan_legal_entity ( negative-overruled $?gen34 ) )"))

([rule62-overruled] of derived-attribute-rule
   (pos-name rule62-overruled-gen738)
   (depends-on declare lc:case lc:case placed_on_market_rezani_duvan_legal_entity)
   (implies placed_on_market_rezani_duvan_legal_entity)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule62] ) ) ) ?gen36 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity\" ) ( positive ?gen35 & : ( >= ?gen35 1 ) ) ) ?gen38 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:placed_on_market_rezani_duvan \"yes\" ) ( positive ?gen37 & : ( >= ?gen37 1 ) ) ) ?gen29 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ( negative-support $?gen32 ) ( negative-overruled $?gen33 & : ( not ( subseq-pos ( create$ rule62-overruled $?gen32 $$$ $?gen33 ) ) ) ) ( positive-defeated $?gen31 & : ( not ( member$ rule62 $?gen31 ) ) ) ) ( test ( eq ( class ?gen29 ) placed_on_market_rezani_duvan_legal_entity ) ) => ( calc ( bind $?gen34 ( create$ rule62-overruled $?gen32 $?gen33 ) ) ) ?gen29 <- ( placed_on_market_rezani_duvan_legal_entity ( negative-overruled $?gen34 ) )"))

([rule62-support] of derived-attribute-rule
   (pos-name rule62-support-gen740)
   (depends-on declare lc:case lc:case placed_on_market_rezani_duvan_legal_entity)
   (implies placed_on_market_rezani_duvan_legal_entity)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule62] ) ) ) ?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity\" ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:placed_on_market_rezani_duvan \"yes\" ) ) ?gen29 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ( positive-support $?gen31 & : ( not ( subseq-pos ( create$ rule62 ?gen27 ?gen28 $$$ $?gen31 ) ) ) ) ) ( test ( eq ( class ?gen29 ) placed_on_market_rezani_duvan_legal_entity ) ) => ( calc ( bind $?gen34 ( create$ rule62 ?gen27 ?gen28 $?gen31 ) ) ) ?gen29 <- ( placed_on_market_rezani_duvan_legal_entity ( positive-support $?gen34 ) )"))

([rule61-defeasibly-dot] of derived-attribute-rule
   (pos-name rule61-defeasibly-dot-gen742)
   (depends-on declare placed_on_market_rezani_duvan_individual lc:case lc:case placed_on_market_rezani_duvan_individual)
   (implies placed_on_market_rezani_duvan_individual)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -1 [rule61] ) ) ) ?gen17 <- ( placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) ( positive 1 ) ( positive-derivator rule61 $? ) ) ( test ( eq ( class ?gen17 ) placed_on_market_rezani_duvan_individual ) ) ( not ( and ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:placed_on_market_rezani_duvan \"yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( placed_on_market_rezani_duvan_individual ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule61 $?gen19 ) ) ) ) ) ) => ?gen17 <- ( placed_on_market_rezani_duvan_individual ( positive 0 ) )"))

([rule61-defeasibly] of derived-attribute-rule
   (pos-name rule61-defeasibly-gen744)
   (depends-on declare lc:case lc:case placed_on_market_rezani_duvan_individual)
   (implies placed_on_market_rezani_duvan_individual)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 1 [rule61] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:placed_on_market_rezani_duvan \"yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) ( positive 0 ) ( negative ~ 2 ) ( positive-overruled $?gen19 & : ( not ( member$ rule61 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) placed_on_market_rezani_duvan_individual ) ) => ?gen17 <- ( placed_on_market_rezani_duvan_individual ( positive 1 ) ( positive-derivator rule61 ?gen24 ?gen26 ) )"))

([rule61-overruled-dot] of derived-attribute-rule
   (pos-name rule61-overruled-dot-gen746)
   (depends-on declare placed_on_market_rezani_duvan_individual lc:case lc:case placed_on_market_rezani_duvan_individual)
   (implies placed_on_market_rezani_duvan_individual)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority -2 [rule61] ) ) ) ?gen17 <- ( placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( subseq-pos ( create$ rule61-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( test ( eq ( class ?gen17 ) placed_on_market_rezani_duvan_individual ) ) ( not ( and ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:placed_on_market_rezani_duvan \"yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( placed_on_market_rezani_duvan_individual ( positive-defeated $?gen19 & : ( not ( member$ rule61 $?gen19 ) ) ) ) ) ) => ( calc ( bind $?gen22 ( delete-member$ $?gen21 ( create$ rule61-overruled $?gen20 ) ) ) ) ?gen17 <- ( placed_on_market_rezani_duvan_individual ( negative-overruled $?gen22 ) )"))

([rule61-overruled] of derived-attribute-rule
   (pos-name rule61-overruled-gen748)
   (depends-on declare lc:case lc:case placed_on_market_rezani_duvan_individual)
   (implies placed_on_market_rezani_duvan_individual)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 2 [rule61] ) ) ) ?gen24 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ( positive ?gen23 & : ( >= ?gen23 1 ) ) ) ?gen26 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:placed_on_market_rezani_duvan \"yes\" ) ( positive ?gen25 & : ( >= ?gen25 1 ) ) ) ?gen17 <- ( placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) ( negative-support $?gen20 ) ( negative-overruled $?gen21 & : ( not ( subseq-pos ( create$ rule61-overruled $?gen20 $$$ $?gen21 ) ) ) ) ( positive-defeated $?gen19 & : ( not ( member$ rule61 $?gen19 ) ) ) ) ( test ( eq ( class ?gen17 ) placed_on_market_rezani_duvan_individual ) ) => ( calc ( bind $?gen22 ( create$ rule61-overruled $?gen20 $?gen21 ) ) ) ?gen17 <- ( placed_on_market_rezani_duvan_individual ( negative-overruled $?gen22 ) )"))

([rule61-support] of derived-attribute-rule
   (pos-name rule61-support-gen750)
   (depends-on declare lc:case lc:case placed_on_market_rezani_duvan_individual)
   (implies placed_on_market_rezani_duvan_individual)
   (del-name nil)
   (derived-attribute-rule "( declare ( priority ( calc-defeasible-priority 5 [rule61] ) ) ) ?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:placed_on_market_rezani_duvan \"yes\" ) ) ?gen17 <- ( placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) ( positive-support $?gen19 & : ( not ( subseq-pos ( create$ rule61 ?gen15 ?gen16 $$$ $?gen19 ) ) ) ) ) ( test ( eq ( class ?gen17 ) placed_on_market_rezani_duvan_individual ) ) => ( calc ( bind $?gen22 ( create$ rule61 ?gen15 ?gen16 $?gen19 ) ) ) ?gen17 <- ( placed_on_market_rezani_duvan_individual ( positive-support $?gen22 ) )"))

([confiscation_nt_lv3-deductive] of ntm-deductive-rule
   (pos-name confiscation_nt_lv3-deductive-gen389)
   (depends-on unauthorized_tobacco_distribution_lv3 to_confiscate_nt_lv3)
   (implies to_confiscate_nt_lv3)
   (deductive-rule "?gen346 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ) ( not ( to_confiscate_nt_lv3 ( value 1 ) ) ) => ( to_confiscate_nt_lv3 ( value 1 ) )")
   (production-rule "( defrule confiscation_nt_lv3-deductive-gen389 ( declare ( salience ( calc-salience to_confiscate_nt_lv3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen346 ) ( is-a unauthorized_tobacco_distribution_lv3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_confiscate_nt_lv3 ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_confiscate_nt_lv3 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_confiscate_nt_lv3 1 ) ) ) ( make-instance ?oid of to_confiscate_nt_lv3 ( value 1 ) ) )")
   (derived-class to_confiscate_nt_lv3))

([imprisonment_max_nt_lv3-deductive] of ntm-deductive-rule
   (pos-name imprisonment_max_nt_lv3-deductive-gen388)
   (depends-on unauthorized_tobacco_distribution_lv3 to_imprison_max_nt_lv3)
   (implies to_imprison_max_nt_lv3)
   (deductive-rule "?gen337 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ) ( not ( to_imprison_max_nt_lv3 ( value 72 ) ) ) => ( to_imprison_max_nt_lv3 ( value 72 ) )")
   (production-rule "( defrule imprisonment_max_nt_lv3-deductive-gen388 ( declare ( salience ( calc-salience to_imprison_max_nt_lv3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen337 ) ( is-a unauthorized_tobacco_distribution_lv3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_imprison_max_nt_lv3 ) ( value 72 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_imprison_max_nt_lv3 72 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_imprison_max_nt_lv3 72 ) ) ) ( make-instance ?oid of to_imprison_max_nt_lv3 ( value 72 ) ) )")
   (derived-class to_imprison_max_nt_lv3))

([imprisonment_min_nt_lv3-deductive] of ntm-deductive-rule
   (pos-name imprisonment_min_nt_lv3-deductive-gen387)
   (depends-on unauthorized_tobacco_distribution_lv3 to_imprison_min_nt_lv3)
   (implies to_imprison_min_nt_lv3)
   (deductive-rule "?gen328 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ) ( not ( to_imprison_min_nt_lv3 ( value 12 ) ) ) => ( to_imprison_min_nt_lv3 ( value 12 ) )")
   (production-rule "( defrule imprisonment_min_nt_lv3-deductive-gen387 ( declare ( salience ( calc-salience to_imprison_min_nt_lv3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen328 ) ( is-a unauthorized_tobacco_distribution_lv3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_imprison_min_nt_lv3 ) ( value 12 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_imprison_min_nt_lv3 12 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_imprison_min_nt_lv3 12 ) ) ) ( make-instance ?oid of to_imprison_min_nt_lv3 ( value 12 ) ) )")
   (derived-class to_imprison_min_nt_lv3))

([confiscation_nt_lv2p-deductive] of ntm-deductive-rule
   (pos-name confiscation_nt_lv2p-deductive-gen386)
   (depends-on unauthorized_tobacco_distribution_lv2p to_confiscate_nt_lv2p)
   (implies to_confiscate_nt_lv2p)
   (deductive-rule "?gen319 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ) ( not ( to_confiscate_nt_lv2p ( value 1 ) ) ) => ( to_confiscate_nt_lv2p ( value 1 ) )")
   (production-rule "( defrule confiscation_nt_lv2p-deductive-gen386 ( declare ( salience ( calc-salience to_confiscate_nt_lv2p ) ) ) ( run-deductive-rules ) ( object ( name ?gen319 ) ( is-a unauthorized_tobacco_distribution_lv2p ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_confiscate_nt_lv2p ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_confiscate_nt_lv2p 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_confiscate_nt_lv2p 1 ) ) ) ( make-instance ?oid of to_confiscate_nt_lv2p ( value 1 ) ) )")
   (derived-class to_confiscate_nt_lv2p))

([imprisonment_max_nt_lv2p-deductive] of ntm-deductive-rule
   (pos-name imprisonment_max_nt_lv2p-deductive-gen385)
   (depends-on unauthorized_tobacco_distribution_lv2p to_imprison_max_nt_lv2p)
   (implies to_imprison_max_nt_lv2p)
   (deductive-rule "?gen310 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ) ( not ( to_imprison_max_nt_lv2p ( value 60 ) ) ) => ( to_imprison_max_nt_lv2p ( value 60 ) )")
   (production-rule "( defrule imprisonment_max_nt_lv2p-deductive-gen385 ( declare ( salience ( calc-salience to_imprison_max_nt_lv2p ) ) ) ( run-deductive-rules ) ( object ( name ?gen310 ) ( is-a unauthorized_tobacco_distribution_lv2p ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_imprison_max_nt_lv2p ) ( value 60 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_imprison_max_nt_lv2p 60 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_imprison_max_nt_lv2p 60 ) ) ) ( make-instance ?oid of to_imprison_max_nt_lv2p ( value 60 ) ) )")
   (derived-class to_imprison_max_nt_lv2p))

([imprisonment_min_nt_lv2p-deductive] of ntm-deductive-rule
   (pos-name imprisonment_min_nt_lv2p-deductive-gen384)
   (depends-on unauthorized_tobacco_distribution_lv2p to_imprison_min_nt_lv2p)
   (implies to_imprison_min_nt_lv2p)
   (deductive-rule "?gen301 <- ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ) ( not ( to_imprison_min_nt_lv2p ( value 6 ) ) ) => ( to_imprison_min_nt_lv2p ( value 6 ) )")
   (production-rule "( defrule imprisonment_min_nt_lv2p-deductive-gen384 ( declare ( salience ( calc-salience to_imprison_min_nt_lv2p ) ) ) ( run-deductive-rules ) ( object ( name ?gen301 ) ( is-a unauthorized_tobacco_distribution_lv2p ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_imprison_min_nt_lv2p ) ( value 6 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_imprison_min_nt_lv2p 6 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_imprison_min_nt_lv2p 6 ) ) ) ( make-instance ?oid of to_imprison_min_nt_lv2p ( value 6 ) ) )")
   (derived-class to_imprison_min_nt_lv2p))

([confiscation_nt_lv2n-deductive] of ntm-deductive-rule
   (pos-name confiscation_nt_lv2n-deductive-gen383)
   (depends-on unauthorized_tobacco_distribution_lv2n to_confiscate_nt_lv2n)
   (implies to_confiscate_nt_lv2n)
   (deductive-rule "?gen292 <- ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ) ( not ( to_confiscate_nt_lv2n ( value 1 ) ) ) => ( to_confiscate_nt_lv2n ( value 1 ) )")
   (production-rule "( defrule confiscation_nt_lv2n-deductive-gen383 ( declare ( salience ( calc-salience to_confiscate_nt_lv2n ) ) ) ( run-deductive-rules ) ( object ( name ?gen292 ) ( is-a unauthorized_tobacco_distribution_lv2n ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_confiscate_nt_lv2n ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_confiscate_nt_lv2n 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_confiscate_nt_lv2n 1 ) ) ) ( make-instance ?oid of to_confiscate_nt_lv2n ( value 1 ) ) )")
   (derived-class to_confiscate_nt_lv2n))

([imprisonment_max_nt_lv2n-deductive] of ntm-deductive-rule
   (pos-name imprisonment_max_nt_lv2n-deductive-gen382)
   (depends-on unauthorized_tobacco_distribution_lv2n to_imprison_max_nt_lv2n)
   (implies to_imprison_max_nt_lv2n)
   (deductive-rule "?gen283 <- ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ) ( not ( to_imprison_max_nt_lv2n ( value 60 ) ) ) => ( to_imprison_max_nt_lv2n ( value 60 ) )")
   (production-rule "( defrule imprisonment_max_nt_lv2n-deductive-gen382 ( declare ( salience ( calc-salience to_imprison_max_nt_lv2n ) ) ) ( run-deductive-rules ) ( object ( name ?gen283 ) ( is-a unauthorized_tobacco_distribution_lv2n ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_imprison_max_nt_lv2n ) ( value 60 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_imprison_max_nt_lv2n 60 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_imprison_max_nt_lv2n 60 ) ) ) ( make-instance ?oid of to_imprison_max_nt_lv2n ( value 60 ) ) )")
   (derived-class to_imprison_max_nt_lv2n))

([imprisonment_min_nt_lv2n-deductive] of ntm-deductive-rule
   (pos-name imprisonment_min_nt_lv2n-deductive-gen381)
   (depends-on unauthorized_tobacco_distribution_lv2n to_imprison_min_nt_lv2n)
   (implies to_imprison_min_nt_lv2n)
   (deductive-rule "?gen274 <- ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ) ( not ( to_imprison_min_nt_lv2n ( value 6 ) ) ) => ( to_imprison_min_nt_lv2n ( value 6 ) )")
   (production-rule "( defrule imprisonment_min_nt_lv2n-deductive-gen381 ( declare ( salience ( calc-salience to_imprison_min_nt_lv2n ) ) ) ( run-deductive-rules ) ( object ( name ?gen274 ) ( is-a unauthorized_tobacco_distribution_lv2n ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_imprison_min_nt_lv2n ) ( value 6 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_imprison_min_nt_lv2n 6 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_imprison_min_nt_lv2n 6 ) ) ) ( make-instance ?oid of to_imprison_min_nt_lv2n ( value 6 ) ) )")
   (derived-class to_imprison_min_nt_lv2n))

([confiscation_nt_lv1-deductive] of ntm-deductive-rule
   (pos-name confiscation_nt_lv1-deductive-gen380)
   (depends-on unauthorized_tobacco_distribution_lv1 to_confiscate_nt_lv1)
   (implies to_confiscate_nt_lv1)
   (deductive-rule "?gen265 <- ( unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) ) ( not ( to_confiscate_nt_lv1 ( value 1 ) ) ) => ( to_confiscate_nt_lv1 ( value 1 ) )")
   (production-rule "( defrule confiscation_nt_lv1-deductive-gen380 ( declare ( salience ( calc-salience to_confiscate_nt_lv1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen265 ) ( is-a unauthorized_tobacco_distribution_lv1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_confiscate_nt_lv1 ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_confiscate_nt_lv1 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_confiscate_nt_lv1 1 ) ) ) ( make-instance ?oid of to_confiscate_nt_lv1 ( value 1 ) ) )")
   (derived-class to_confiscate_nt_lv1))

([imprisonment_max_nt_lv1-deductive] of ntm-deductive-rule
   (pos-name imprisonment_max_nt_lv1-deductive-gen379)
   (depends-on unauthorized_tobacco_distribution_lv1 to_imprison_max_nt_lv1)
   (implies to_imprison_max_nt_lv1)
   (deductive-rule "?gen256 <- ( unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) ) ( not ( to_imprison_max_nt_lv1 ( value 36 ) ) ) => ( to_imprison_max_nt_lv1 ( value 36 ) )")
   (production-rule "( defrule imprisonment_max_nt_lv1-deductive-gen379 ( declare ( salience ( calc-salience to_imprison_max_nt_lv1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen256 ) ( is-a unauthorized_tobacco_distribution_lv1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_imprison_max_nt_lv1 ) ( value 36 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_imprison_max_nt_lv1 36 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_imprison_max_nt_lv1 36 ) ) ) ( make-instance ?oid of to_imprison_max_nt_lv1 ( value 36 ) ) )")
   (derived-class to_imprison_max_nt_lv1))

([imprisonment_min_nt_lv1-deductive] of ntm-deductive-rule
   (pos-name imprisonment_min_nt_lv1-deductive-gen378)
   (depends-on unauthorized_tobacco_distribution_lv1 to_imprison_min_nt_lv1)
   (implies to_imprison_min_nt_lv1)
   (deductive-rule "?gen247 <- ( unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) ) ( not ( to_imprison_min_nt_lv1 ( value 3 ) ) ) => ( to_imprison_min_nt_lv1 ( value 3 ) )")
   (production-rule "( defrule imprisonment_min_nt_lv1-deductive-gen378 ( declare ( salience ( calc-salience to_imprison_min_nt_lv1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen247 ) ( is-a unauthorized_tobacco_distribution_lv1 ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_imprison_min_nt_lv1 ) ( value 3 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_imprison_min_nt_lv1 3 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_imprison_min_nt_lv1 3 ) ) ) ( make-instance ?oid of to_imprison_min_nt_lv1 ( value 3 ) ) )")
   (derived-class to_imprison_min_nt_lv1))

([prohibition_max_cl6_le_ri-deductive] of ntm-deductive-rule
   (pos-name prohibition_max_cl6_le_ri-deductive-gen377)
   (depends-on placed_on_market_rezani_duvan_legal_entity_responsible_individual to_prohibit_max_cl6_le_ri)
   (implies to_prohibit_max_cl6_le_ri)
   (deductive-rule "?gen238 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ) ( not ( to_prohibit_max_cl6_le_ri ( value 12 ) ) ) => ( to_prohibit_max_cl6_le_ri ( value 12 ) )")
   (production-rule "( defrule prohibition_max_cl6_le_ri-deductive-gen377 ( declare ( salience ( calc-salience to_prohibit_max_cl6_le_ri ) ) ) ( run-deductive-rules ) ( object ( name ?gen238 ) ( is-a placed_on_market_rezani_duvan_legal_entity_responsible_individual ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_prohibit_max_cl6_le_ri ) ( value 12 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_prohibit_max_cl6_le_ri 12 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_prohibit_max_cl6_le_ri 12 ) ) ) ( make-instance ?oid of to_prohibit_max_cl6_le_ri ( value 12 ) ) )")
   (derived-class to_prohibit_max_cl6_le_ri))

([prohibition_min_cl6_le_ri-deductive] of ntm-deductive-rule
   (pos-name prohibition_min_cl6_le_ri-deductive-gen376)
   (depends-on placed_on_market_rezani_duvan_legal_entity_responsible_individual to_prohibit_min_cl6_le_ri)
   (implies to_prohibit_min_cl6_le_ri)
   (deductive-rule "?gen229 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ) ( not ( to_prohibit_min_cl6_le_ri ( value 0 ) ) ) => ( to_prohibit_min_cl6_le_ri ( value 0 ) )")
   (production-rule "( defrule prohibition_min_cl6_le_ri-deductive-gen376 ( declare ( salience ( calc-salience to_prohibit_min_cl6_le_ri ) ) ) ( run-deductive-rules ) ( object ( name ?gen229 ) ( is-a placed_on_market_rezani_duvan_legal_entity_responsible_individual ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_prohibit_min_cl6_le_ri ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_prohibit_min_cl6_le_ri 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_prohibit_min_cl6_le_ri 0 ) ) ) ( make-instance ?oid of to_prohibit_min_cl6_le_ri ( value 0 ) ) )")
   (derived-class to_prohibit_min_cl6_le_ri))

([confiscation_cl6_le_ri-deductive] of ntm-deductive-rule
   (pos-name confiscation_cl6_le_ri-deductive-gen375)
   (depends-on placed_on_market_rezani_duvan_legal_entity_responsible_individual to_confiscate_cl6_le_ri)
   (implies to_confiscate_cl6_le_ri)
   (deductive-rule "?gen220 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ) ( not ( to_confiscate_cl6_le_ri ( value 1 ) ) ) => ( to_confiscate_cl6_le_ri ( value 1 ) )")
   (production-rule "( defrule confiscation_cl6_le_ri-deductive-gen375 ( declare ( salience ( calc-salience to_confiscate_cl6_le_ri ) ) ) ( run-deductive-rules ) ( object ( name ?gen220 ) ( is-a placed_on_market_rezani_duvan_legal_entity_responsible_individual ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_confiscate_cl6_le_ri ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_confiscate_cl6_le_ri 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_confiscate_cl6_le_ri 1 ) ) ) ( make-instance ?oid of to_confiscate_cl6_le_ri ( value 1 ) ) )")
   (derived-class to_confiscate_cl6_le_ri))

([pen_cl6_le_ri_max-deductive] of ntm-deductive-rule
   (pos-name pen_cl6_le_ri_max-deductive-gen374)
   (depends-on placed_on_market_rezani_duvan_legal_entity_responsible_individual to_pay_max_cl6_le_ri)
   (implies to_pay_max_cl6_le_ri)
   (deductive-rule "?gen211 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ) ( not ( to_pay_max_cl6_le_ri ( value 2000 ) ) ) => ( to_pay_max_cl6_le_ri ( value 2000 ) )")
   (production-rule "( defrule pen_cl6_le_ri_max-deductive-gen374 ( declare ( salience ( calc-salience to_pay_max_cl6_le_ri ) ) ) ( run-deductive-rules ) ( object ( name ?gen211 ) ( is-a placed_on_market_rezani_duvan_legal_entity_responsible_individual ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max_cl6_le_ri ) ( value 2000 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max_cl6_le_ri 2000 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max_cl6_le_ri 2000 ) ) ) ( make-instance ?oid of to_pay_max_cl6_le_ri ( value 2000 ) ) )")
   (derived-class to_pay_max_cl6_le_ri))

([pen_cl6_le_ri_min-deductive] of ntm-deductive-rule
   (pos-name pen_cl6_le_ri_min-deductive-gen373)
   (depends-on placed_on_market_rezani_duvan_legal_entity_responsible_individual to_pay_min_cl6_le_ri)
   (implies to_pay_min_cl6_le_ri)
   (deductive-rule "?gen202 <- ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ) ( not ( to_pay_min_cl6_le_ri ( value 1000 ) ) ) => ( to_pay_min_cl6_le_ri ( value 1000 ) )")
   (production-rule "( defrule pen_cl6_le_ri_min-deductive-gen373 ( declare ( salience ( calc-salience to_pay_min_cl6_le_ri ) ) ) ( run-deductive-rules ) ( object ( name ?gen202 ) ( is-a placed_on_market_rezani_duvan_legal_entity_responsible_individual ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min_cl6_le_ri ) ( value 1000 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min_cl6_le_ri 1000 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min_cl6_le_ri 1000 ) ) ) ( make-instance ?oid of to_pay_min_cl6_le_ri ( value 1000 ) ) )")
   (derived-class to_pay_min_cl6_le_ri))

([prohibition_max_cl6_le-deductive] of ntm-deductive-rule
   (pos-name prohibition_max_cl6_le-deductive-gen372)
   (depends-on placed_on_market_rezani_duvan_legal_entity to_prohibit_max_cl6_le)
   (implies to_prohibit_max_cl6_le)
   (deductive-rule "?gen193 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ) ( not ( to_prohibit_max_cl6_le ( value 12 ) ) ) => ( to_prohibit_max_cl6_le ( value 12 ) )")
   (production-rule "( defrule prohibition_max_cl6_le-deductive-gen372 ( declare ( salience ( calc-salience to_prohibit_max_cl6_le ) ) ) ( run-deductive-rules ) ( object ( name ?gen193 ) ( is-a placed_on_market_rezani_duvan_legal_entity ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_prohibit_max_cl6_le ) ( value 12 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_prohibit_max_cl6_le 12 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_prohibit_max_cl6_le 12 ) ) ) ( make-instance ?oid of to_prohibit_max_cl6_le ( value 12 ) ) )")
   (derived-class to_prohibit_max_cl6_le))

([prohibition_min_cl6_le-deductive] of ntm-deductive-rule
   (pos-name prohibition_min_cl6_le-deductive-gen371)
   (depends-on placed_on_market_rezani_duvan_legal_entity to_prohibit_min_cl6_le)
   (implies to_prohibit_min_cl6_le)
   (deductive-rule "?gen184 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ) ( not ( to_prohibit_min_cl6_le ( value 0 ) ) ) => ( to_prohibit_min_cl6_le ( value 0 ) )")
   (production-rule "( defrule prohibition_min_cl6_le-deductive-gen371 ( declare ( salience ( calc-salience to_prohibit_min_cl6_le ) ) ) ( run-deductive-rules ) ( object ( name ?gen184 ) ( is-a placed_on_market_rezani_duvan_legal_entity ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_prohibit_min_cl6_le ) ( value 0 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_prohibit_min_cl6_le 0 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_prohibit_min_cl6_le 0 ) ) ) ( make-instance ?oid of to_prohibit_min_cl6_le ( value 0 ) ) )")
   (derived-class to_prohibit_min_cl6_le))

([confiscation_cl6_le-deductive] of ntm-deductive-rule
   (pos-name confiscation_cl6_le-deductive-gen370)
   (depends-on placed_on_market_rezani_duvan_legal_entity to_confiscate_cl6_le)
   (implies to_confiscate_cl6_le)
   (deductive-rule "?gen175 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ) ( not ( to_confiscate_cl6_le ( value 1 ) ) ) => ( to_confiscate_cl6_le ( value 1 ) )")
   (production-rule "( defrule confiscation_cl6_le-deductive-gen370 ( declare ( salience ( calc-salience to_confiscate_cl6_le ) ) ) ( run-deductive-rules ) ( object ( name ?gen175 ) ( is-a placed_on_market_rezani_duvan_legal_entity ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_confiscate_cl6_le ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_confiscate_cl6_le 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_confiscate_cl6_le 1 ) ) ) ( make-instance ?oid of to_confiscate_cl6_le ( value 1 ) ) )")
   (derived-class to_confiscate_cl6_le))

([pen_cl6_le_max-deductive] of ntm-deductive-rule
   (pos-name pen_cl6_le_max-deductive-gen369)
   (depends-on placed_on_market_rezani_duvan_legal_entity to_pay_max_cl6_le)
   (implies to_pay_max_cl6_le)
   (deductive-rule "?gen166 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ) ( not ( to_pay_max_cl6_le ( value 20000 ) ) ) => ( to_pay_max_cl6_le ( value 20000 ) )")
   (production-rule "( defrule pen_cl6_le_max-deductive-gen369 ( declare ( salience ( calc-salience to_pay_max_cl6_le ) ) ) ( run-deductive-rules ) ( object ( name ?gen166 ) ( is-a placed_on_market_rezani_duvan_legal_entity ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max_cl6_le ) ( value 20000 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max_cl6_le 20000 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max_cl6_le 20000 ) ) ) ( make-instance ?oid of to_pay_max_cl6_le ( value 20000 ) ) )")
   (derived-class to_pay_max_cl6_le))

([pen_cl6_le_min-deductive] of ntm-deductive-rule
   (pos-name pen_cl6_le_min-deductive-gen368)
   (depends-on placed_on_market_rezani_duvan_legal_entity to_pay_min_cl6_le)
   (implies to_pay_min_cl6_le)
   (deductive-rule "?gen157 <- ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ) ( not ( to_pay_min_cl6_le ( value 10000 ) ) ) => ( to_pay_min_cl6_le ( value 10000 ) )")
   (production-rule "( defrule pen_cl6_le_min-deductive-gen368 ( declare ( salience ( calc-salience to_pay_min_cl6_le ) ) ) ( run-deductive-rules ) ( object ( name ?gen157 ) ( is-a placed_on_market_rezani_duvan_legal_entity ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min_cl6_le ) ( value 10000 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min_cl6_le 10000 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min_cl6_le 10000 ) ) ) ( make-instance ?oid of to_pay_min_cl6_le ( value 10000 ) ) )")
   (derived-class to_pay_min_cl6_le))

([confiscation_cl6_ind-deductive] of ntm-deductive-rule
   (pos-name confiscation_cl6_ind-deductive-gen367)
   (depends-on placed_on_market_rezani_duvan_individual to_confiscate_cl6_ind)
   (implies to_confiscate_cl6_ind)
   (deductive-rule "?gen148 <- ( placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) ) ( not ( to_confiscate_cl6_ind ( value 1 ) ) ) => ( to_confiscate_cl6_ind ( value 1 ) )")
   (production-rule "( defrule confiscation_cl6_ind-deductive-gen367 ( declare ( salience ( calc-salience to_confiscate_cl6_ind ) ) ) ( run-deductive-rules ) ( object ( name ?gen148 ) ( is-a placed_on_market_rezani_duvan_individual ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_confiscate_cl6_ind ) ( value 1 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_confiscate_cl6_ind 1 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_confiscate_cl6_ind 1 ) ) ) ( make-instance ?oid of to_confiscate_cl6_ind ( value 1 ) ) )")
   (derived-class to_confiscate_cl6_ind))

([pen_cl6_ind_max-deductive] of ntm-deductive-rule
   (pos-name pen_cl6_ind_max-deductive-gen366)
   (depends-on placed_on_market_rezani_duvan_individual to_pay_max_cl6_ind)
   (implies to_pay_max_cl6_ind)
   (deductive-rule "?gen139 <- ( placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) ) ( not ( to_pay_max_cl6_ind ( value 1000 ) ) ) => ( to_pay_max_cl6_ind ( value 1000 ) )")
   (production-rule "( defrule pen_cl6_ind_max-deductive-gen366 ( declare ( salience ( calc-salience to_pay_max_cl6_ind ) ) ) ( run-deductive-rules ) ( object ( name ?gen139 ) ( is-a placed_on_market_rezani_duvan_individual ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_max_cl6_ind ) ( value 1000 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_max_cl6_ind 1000 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_max_cl6_ind 1000 ) ) ) ( make-instance ?oid of to_pay_max_cl6_ind ( value 1000 ) ) )")
   (derived-class to_pay_max_cl6_ind))

([pen_cl6_ind_min-deductive] of ntm-deductive-rule
   (pos-name pen_cl6_ind_min-deductive-gen365)
   (depends-on placed_on_market_rezani_duvan_individual to_pay_min_cl6_ind)
   (implies to_pay_min_cl6_ind)
   (deductive-rule "?gen130 <- ( placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) ) ( not ( to_pay_min_cl6_ind ( value 50 ) ) ) => ( to_pay_min_cl6_ind ( value 50 ) )")
   (production-rule "( defrule pen_cl6_ind_min-deductive-gen365 ( declare ( salience ( calc-salience to_pay_min_cl6_ind ) ) ) ( run-deductive-rules ) ( object ( name ?gen130 ) ( is-a placed_on_market_rezani_duvan_individual ) ( defendant ?Defendant ) ) ( not ( object ( is-a to_pay_min_cl6_ind ) ( value 50 ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat to_pay_min_cl6_ind 50 ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat to_pay_min_cl6_ind 50 ) ) ) ( make-instance ?oid of to_pay_min_cl6_ind ( value 50 ) ) )")
   (derived-class to_pay_min_cl6_ind))

([rulent5-deductive] of ntm-deductive-rule
   (pos-name rulent5-deductive-gen364)
   (depends-on unauthorized_tobacco_distribution_lv3 unauthorized_tobacco_distribution_lv2p)
   (implies unauthorized_tobacco_distribution_lv2p)
   (deductive-rule "?gen121 <- ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ) ( not ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ) ) => ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) )")
   (production-rule "( defrule rulent5-deductive-gen364 ( declare ( salience ( calc-salience unauthorized_tobacco_distribution_lv2p ) ) ) ( run-deductive-rules ) ( object ( name ?gen121 ) ( is-a unauthorized_tobacco_distribution_lv3 ) ( defendant ?Defendant ) ) ( not ( object ( is-a unauthorized_tobacco_distribution_lv2p ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat unauthorized_tobacco_distribution_lv2p ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat unauthorized_tobacco_distribution_lv2p ?Defendant ) ) ) ( make-instance ?oid of unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ) )")
   (derived-class unauthorized_tobacco_distribution_lv2p))

([rulent4-deductive] of ntm-deductive-rule
   (pos-name rulent4-deductive-gen363)
   (depends-on lc:case unauthorized_tobacco_distribution_lv3)
   (implies unauthorized_tobacco_distribution_lv3)
   (deductive-rule "?gen111 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ) ( test ( > ?Profit 30000 ) ) ( not ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ) ) => ( unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) )")
   (production-rule "( defrule rulent4-deductive-gen363 ( declare ( salience ( calc-salience unauthorized_tobacco_distribution_lv3 ) ) ) ( run-deductive-rules ) ( object ( name ?gen111 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ) ( test ( > ?Profit 30000 ) ) ( not ( object ( is-a unauthorized_tobacco_distribution_lv3 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat unauthorized_tobacco_distribution_lv3 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat unauthorized_tobacco_distribution_lv3 ?Defendant ) ) ) ( make-instance ?oid of unauthorized_tobacco_distribution_lv3 ( defendant ?Defendant ) ) )")
   (derived-class unauthorized_tobacco_distribution_lv3))

([rulent3-deductive] of ntm-deductive-rule
   (pos-name rulent3-deductive-gen362)
   (depends-on lc:case unauthorized_tobacco_distribution_lv2p)
   (implies unauthorized_tobacco_distribution_lv2p)
   (deductive-rule "?gen101 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ) ( test ( > ?Profit 3000 ) ) ( not ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ) ) => ( unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) )")
   (production-rule "( defrule rulent3-deductive-gen362 ( declare ( salience ( calc-salience unauthorized_tobacco_distribution_lv2p ) ) ) ( run-deductive-rules ) ( object ( name ?gen101 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ) ( test ( > ?Profit 3000 ) ) ( not ( object ( is-a unauthorized_tobacco_distribution_lv2p ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat unauthorized_tobacco_distribution_lv2p ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat unauthorized_tobacco_distribution_lv2p ?Defendant ) ) ) ( make-instance ?oid of unauthorized_tobacco_distribution_lv2p ( defendant ?Defendant ) ) )")
   (derived-class unauthorized_tobacco_distribution_lv2p))

([rulent2-deductive] of ntm-deductive-rule
   (pos-name rulent2-deductive-gen361)
   (depends-on lc:case lc:case unauthorized_tobacco_distribution_lv2n)
   (implies unauthorized_tobacco_distribution_lv2n)
   (deductive-rule "?gen88 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ) ( test ( < ?Profit 3000 ) ) ?gen90 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:organized_reseller_network \"yes\" ) ) ( not ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ) ) => ( unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) )")
   (production-rule "( defrule rulent2-deductive-gen361 ( declare ( salience ( calc-salience unauthorized_tobacco_distribution_lv2n ) ) ) ( run-deductive-rules ) ( object ( name ?gen88 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ) ( test ( < ?Profit 3000 ) ) ( object ( name ?gen90 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:organized_reseller_network \"yes\" ) ) ( not ( object ( is-a unauthorized_tobacco_distribution_lv2n ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat unauthorized_tobacco_distribution_lv2n ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat unauthorized_tobacco_distribution_lv2n ?Defendant ) ) ) ( make-instance ?oid of unauthorized_tobacco_distribution_lv2n ( defendant ?Defendant ) ) )")
   (derived-class unauthorized_tobacco_distribution_lv2n))

([rulent1-deductive] of ntm-deductive-rule
   (pos-name rulent1-deductive-gen360)
   (depends-on lc:case lc:case unauthorized_tobacco_distribution_lv1)
   (implies unauthorized_tobacco_distribution_lv1)
   (deductive-rule "?gen75 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:organized_reseller_network \"no\" ) ) ?gen76 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ) ( test ( < ?Profit 3000 ) ) ( not ( unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) ) ) => ( unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) )")
   (production-rule "( defrule rulent1-deductive-gen360 ( declare ( salience ( calc-salience unauthorized_tobacco_distribution_lv1 ) ) ) ( run-deductive-rules ) ( object ( name ?gen75 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:organized_reseller_network \"no\" ) ) ( object ( name ?gen76 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:profit ?Profit ) ) ( test ( < ?Profit 3000 ) ) ( not ( object ( is-a unauthorized_tobacco_distribution_lv1 ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat unauthorized_tobacco_distribution_lv1 ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat unauthorized_tobacco_distribution_lv1 ?Defendant ) ) ) ( make-instance ?oid of unauthorized_tobacco_distribution_lv1 ( defendant ?Defendant ) ) )")
   (derived-class unauthorized_tobacco_distribution_lv1))

([rule14-deductive] of ntm-deductive-rule
   (pos-name rule14-deductive-gen359)
   (depends-on lc:case lc:case unauthorized_retail_distribution)
   (implies unauthorized_retail_distribution)
   (deductive-rule "?gen63 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_done_retail_distribution \"yes\" ) ) ?gen64 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_retail_distribution_permit \"no\" ) ) ( not ( unauthorized_retail_distribution ( defendant ?Defendant ) ) ) => ( unauthorized_retail_distribution ( defendant ?Defendant ) )")
   (production-rule "( defrule rule14-deductive-gen359 ( declare ( salience ( calc-salience unauthorized_retail_distribution ) ) ) ( run-deductive-rules ) ( object ( name ?gen63 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:has_done_retail_distribution \"yes\" ) ) ( object ( name ?gen64 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:has_retail_distribution_permit \"no\" ) ) ( not ( object ( is-a unauthorized_retail_distribution ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat unauthorized_retail_distribution ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat unauthorized_retail_distribution ?Defendant ) ) ) ( make-instance ?oid of unauthorized_retail_distribution ( defendant ?Defendant ) ) )")
   (derived-class unauthorized_retail_distribution))

([rule12-deductive] of ntm-deductive-rule
   (pos-name rule12-deductive-gen358)
   (depends-on lc:case lc:case unauthorized_wholesale_distribution)
   (implies unauthorized_wholesale_distribution)
   (deductive-rule "?gen51 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_done_wholesale_distribution \"yes\" ) ) ?gen52 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:has_wholesale_distribution_permit \"no\" ) ) ( not ( unauthorized_wholesale_distribution ( defendant ?Defendant ) ) ) => ( unauthorized_wholesale_distribution ( defendant ?Defendant ) )")
   (production-rule "( defrule rule12-deductive-gen358 ( declare ( salience ( calc-salience unauthorized_wholesale_distribution ) ) ) ( run-deductive-rules ) ( object ( name ?gen51 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:has_done_wholesale_distribution \"yes\" ) ) ( object ( name ?gen52 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:has_wholesale_distribution_permit \"no\" ) ) ( not ( object ( is-a unauthorized_wholesale_distribution ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat unauthorized_wholesale_distribution ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat unauthorized_wholesale_distribution ?Defendant ) ) ) ( make-instance ?oid of unauthorized_wholesale_distribution ( defendant ?Defendant ) ) )")
   (derived-class unauthorized_wholesale_distribution))

([rule63-deductive] of ntm-deductive-rule
   (pos-name rule63-deductive-gen357)
   (depends-on lc:case lc:case placed_on_market_rezani_duvan_legal_entity_responsible_individual)
   (implies placed_on_market_rezani_duvan_legal_entity_responsible_individual)
   (deductive-rule "?gen39 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity_responsible_individual\" ) ) ?gen40 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:placed_on_market_rezani_duvan \"yes\" ) ) ( not ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ) ) => ( placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) )")
   (production-rule "( defrule rule63-deductive-gen357 ( declare ( salience ( calc-salience placed_on_market_rezani_duvan_legal_entity_responsible_individual ) ) ) ( run-deductive-rules ) ( object ( name ?gen39 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity_responsible_individual\" ) ) ( object ( name ?gen40 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:placed_on_market_rezani_duvan \"yes\" ) ) ( not ( object ( is-a placed_on_market_rezani_duvan_legal_entity_responsible_individual ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat placed_on_market_rezani_duvan_legal_entity_responsible_individual ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat placed_on_market_rezani_duvan_legal_entity_responsible_individual ?Defendant ) ) ) ( make-instance ?oid of placed_on_market_rezani_duvan_legal_entity_responsible_individual ( defendant ?Defendant ) ) )")
   (derived-class placed_on_market_rezani_duvan_legal_entity_responsible_individual))

([rule62-deductive] of ntm-deductive-rule
   (pos-name rule62-deductive-gen356)
   (depends-on lc:case lc:case placed_on_market_rezani_duvan_legal_entity)
   (implies placed_on_market_rezani_duvan_legal_entity)
   (deductive-rule "?gen27 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity\" ) ) ?gen28 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:placed_on_market_rezani_duvan \"yes\" ) ) ( not ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ) ) => ( placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) )")
   (production-rule "( defrule rule62-deductive-gen356 ( declare ( salience ( calc-salience placed_on_market_rezani_duvan_legal_entity ) ) ) ( run-deductive-rules ) ( object ( name ?gen27 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:is_entity \"legal_entity\" ) ) ( object ( name ?gen28 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:placed_on_market_rezani_duvan \"yes\" ) ) ( not ( object ( is-a placed_on_market_rezani_duvan_legal_entity ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat placed_on_market_rezani_duvan_legal_entity ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat placed_on_market_rezani_duvan_legal_entity ?Defendant ) ) ) ( make-instance ?oid of placed_on_market_rezani_duvan_legal_entity ( defendant ?Defendant ) ) )")
   (derived-class placed_on_market_rezani_duvan_legal_entity))

([rule61-deductive] of ntm-deductive-rule
   (pos-name rule61-deductive-gen355)
   (depends-on lc:case lc:case placed_on_market_rezani_duvan_individual)
   (implies placed_on_market_rezani_duvan_individual)
   (deductive-rule "?gen15 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ) ?gen16 <- ( lc:case ( lc:defendant ?Defendant ) ( lc:placed_on_market_rezani_duvan \"yes\" ) ) ( not ( placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) ) ) => ( placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) )")
   (production-rule "( defrule rule61-deductive-gen355 ( declare ( salience ( calc-salience placed_on_market_rezani_duvan_individual ) ) ) ( run-deductive-rules ) ( object ( name ?gen15 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:is_entity \"individual\" ) ) ( object ( name ?gen16 ) ( is-a lc:case ) ( lc:defendant ?Defendant ) ( lc:placed_on_market_rezani_duvan \"yes\" ) ) ( not ( object ( is-a placed_on_market_rezani_duvan_individual ) ( defendant ?Defendant ) ) ) ( test ( not ( instance-existp ( symbol-to-instance-name ( sym-cat placed_on_market_rezani_duvan_individual ?Defendant ) ) ) ) ) => ( bind ?oid ( symbol-to-instance-name ( sym-cat placed_on_market_rezani_duvan_individual ?Defendant ) ) ) ( make-instance ?oid of placed_on_market_rezani_duvan_individual ( defendant ?Defendant ) ) )")
   (derived-class placed_on_market_rezani_duvan_individual))

