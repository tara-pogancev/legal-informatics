(import-rdf "facts.rdf")
		(export-rdf export.rdf  placed_on_market_rezani_duvan_individual placed_on_market_rezani_duvan_legal_entity placed_on_market_rezani_duvan_legal_entity_responsible_individual to_pay_min_cl6_ind to_pay_max_cl6_ind to_confiscate_cl6_ind to_pay_min_cl6_le to_pay_max_cl6_le to_confiscate_cl6_le to_prohibit_min_cl6_le to_prohibit_max_cl6_le to_pay_min_cl6_le_ri to_pay_max_cl6_le_ri to_confiscate_cl6_le_ri to_prohibit_min_cl6_le_ri to_prohibit_max_cl6_le_ri unauthorized_wholesale_distribution unauthorized_retail_distribution unauthorized_tobacco_distribution_lv1 unauthorized_tobacco_distribution_lv2n unauthorized_tobacco_distribution_lv2p unauthorized_tobacco_distribution_lv3 to_imprison_min_nt_lv1 to_imprison_max_nt_lv1 to_confiscate_nt_lv1 to_imprison_min_nt_lv2n to_imprison_max_nt_lv2n to_confiscate_nt_lv2n to_imprison_min_nt_lv2p to_imprison_max_nt_lv2p to_confiscate_nt_lv2p to_imprison_min_nt_lv3 to_imprison_max_nt_lv3 to_confiscate_nt_lv3)
		(export-proof proof.ruleml)
		
(defeasiblerule rule61
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:is_entity "individual")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:placed_on_market_rezani_duvan "yes")
	) 
  => 
	 
	(placed_on_market_rezani_duvan_individual 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule62
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:is_entity "legal_entity")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:placed_on_market_rezani_duvan "yes")
	) 
  => 
	 
	(placed_on_market_rezani_duvan_legal_entity 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule63
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:is_entity "legal_entity_responsible_individual")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:placed_on_market_rezani_duvan "yes")
	) 
  => 
	 
	(placed_on_market_rezani_duvan_legal_entity_responsible_individual 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule12
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:has_done_wholesale_distribution "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:has_wholesale_distribution_permit "no")
	) 
  => 
	 
	(unauthorized_wholesale_distribution 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rule14
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:has_done_retail_distribution "yes")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:has_retail_distribution_permit "no")
	) 
  => 
	 
	(unauthorized_retail_distribution 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rulent1
		 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:organized_reseller_network "no")
	)  
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:profit ?Profit)
	) 
		(test 
		(<  ?Profit 3000
		)
	)
	
  => 
	 
	(unauthorized_tobacco_distribution_lv1 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rulent2
		(declare (superior rulent1 )) 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:profit ?Profit)
	) 
		(test 
		(<  ?Profit 3000
		)
	)
	 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:organized_reseller_network "yes")
	) 
  => 
	 
	(unauthorized_tobacco_distribution_lv2n 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rulent3
		(declare (superior rulent1 rulent2 )) 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:profit ?Profit)
	) 
		(test 
		(>  ?Profit 3000
		)
	)
	
  => 
	 
	(unauthorized_tobacco_distribution_lv2p 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rulent4
		(declare (superior rulent1 rulent2 rulent3 )) 
	(lc:case 
		(
		 lc:defendant ?Defendant)
	
		(
		 lc:profit ?Profit)
	) 
		(test 
		(>  ?Profit 30000
		)
	)
	
  => 
	 
	(unauthorized_tobacco_distribution_lv3 
		(
		 defendant ?Defendant)
	) 
) 
	
(defeasiblerule rulent5
		 
	(unauthorized_tobacco_distribution_lv3 
		(
		 defendant ?Defendant)
	) 
  => 
	
		(not  
	(unauthorized_tobacco_distribution_lv2p 
		(
		 defendant ?Defendant)
	) )
	
) 
	
(defeasiblerule pen_cl6_ind_min
		 
	(placed_on_market_rezani_duvan_individual 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_min_cl6_ind 
		(
		 value 50)
	) 
) 
	
(defeasiblerule pen_cl6_ind_max
		 
	(placed_on_market_rezani_duvan_individual 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_max_cl6_ind 
		(
		 value 1000)
	) 
) 
	
(defeasiblerule confiscation_cl6_ind
		 
	(placed_on_market_rezani_duvan_individual 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_confiscate_cl6_ind 
		(
		 value 1)
	) 
) 
	
(defeasiblerule pen_cl6_le_min
		 
	(placed_on_market_rezani_duvan_legal_entity 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_min_cl6_le 
		(
		 value 10000)
	) 
) 
	
(defeasiblerule pen_cl6_le_max
		 
	(placed_on_market_rezani_duvan_legal_entity 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_max_cl6_le 
		(
		 value 20000)
	) 
) 
	
(defeasiblerule confiscation_cl6_le
		 
	(placed_on_market_rezani_duvan_legal_entity 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_confiscate_cl6_le 
		(
		 value 1)
	) 
) 
	
(defeasiblerule prohibition_min_cl6_le
		 
	(placed_on_market_rezani_duvan_legal_entity 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_prohibit_min_cl6_le 
		(
		 value 0)
	) 
) 
	
(defeasiblerule prohibition_max_cl6_le
		 
	(placed_on_market_rezani_duvan_legal_entity 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_prohibit_max_cl6_le 
		(
		 value 12)
	) 
) 
	
(defeasiblerule pen_cl6_le_ri_min
		 
	(placed_on_market_rezani_duvan_legal_entity_responsible_individual 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_min_cl6_le_ri 
		(
		 value 1000)
	) 
) 
	
(defeasiblerule pen_cl6_le_ri_max
		 
	(placed_on_market_rezani_duvan_legal_entity_responsible_individual 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_pay_max_cl6_le_ri 
		(
		 value 2000)
	) 
) 
	
(defeasiblerule confiscation_cl6_le_ri
		 
	(placed_on_market_rezani_duvan_legal_entity_responsible_individual 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_confiscate_cl6_le_ri 
		(
		 value 1)
	) 
) 
	
(defeasiblerule prohibition_min_cl6_le_ri
		 
	(placed_on_market_rezani_duvan_legal_entity_responsible_individual 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_prohibit_min_cl6_le_ri 
		(
		 value 0)
	) 
) 
	
(defeasiblerule prohibition_max_cl6_le_ri
		 
	(placed_on_market_rezani_duvan_legal_entity_responsible_individual 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_prohibit_max_cl6_le_ri 
		(
		 value 12)
	) 
) 
	
(defeasiblerule imprisonment_min_nt_lv1
		 
	(unauthorized_tobacco_distribution_lv1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_imprison_min_nt_lv1 
		(
		 value 3)
	) 
) 
	
(defeasiblerule imprisonment_max_nt_lv1
		 
	(unauthorized_tobacco_distribution_lv1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_imprison_max_nt_lv1 
		(
		 value 36)
	) 
) 
	
(defeasiblerule confiscation_nt_lv1
		 
	(unauthorized_tobacco_distribution_lv1 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_confiscate_nt_lv1 
		(
		 value 1)
	) 
) 
	
(defeasiblerule imprisonment_min_nt_lv2n
		 
	(unauthorized_tobacco_distribution_lv2n 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_imprison_min_nt_lv2n 
		(
		 value 6)
	) 
) 
	
(defeasiblerule imprisonment_max_nt_lv2n
		 
	(unauthorized_tobacco_distribution_lv2n 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_imprison_max_nt_lv2n 
		(
		 value 60)
	) 
) 
	
(defeasiblerule confiscation_nt_lv2n
		 
	(unauthorized_tobacco_distribution_lv2n 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_confiscate_nt_lv2n 
		(
		 value 1)
	) 
) 
	
(defeasiblerule imprisonment_min_nt_lv2p
		 
	(unauthorized_tobacco_distribution_lv2p 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_imprison_min_nt_lv2p 
		(
		 value 6)
	) 
) 
	
(defeasiblerule imprisonment_max_nt_lv2p
		 
	(unauthorized_tobacco_distribution_lv2p 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_imprison_max_nt_lv2p 
		(
		 value 60)
	) 
) 
	
(defeasiblerule confiscation_nt_lv2p
		 
	(unauthorized_tobacco_distribution_lv2p 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_confiscate_nt_lv2p 
		(
		 value 1)
	) 
) 
	
(defeasiblerule imprisonment_min_nt_lv3
		 
	(unauthorized_tobacco_distribution_lv3 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_imprison_min_nt_lv3 
		(
		 value 12)
	) 
) 
	
(defeasiblerule imprisonment_max_nt_lv3
		 
	(unauthorized_tobacco_distribution_lv3 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_imprison_max_nt_lv3 
		(
		 value 72)
	) 
) 
	
(defeasiblerule confiscation_nt_lv3
		 
	(unauthorized_tobacco_distribution_lv3 
		(
		 defendant ?Defendant)
	) 
  => 
	 
	(to_confiscate_nt_lv3 
		(
		 value 1)
	) 
) 
	