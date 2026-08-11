# Write your MySQL query statement below
select sample_id,dna_sequence,species,
regexp_like(dna_sequence,'^ATG') as has_start,
regexp_like(dna_sequence,'(TAA|TAG|TGA)$') as has_stop,
regexp_like(dna_sequence,'ATAT') as has_atat,
regexp_like(dna_sequence,'G{3,}') as has_ggg
from samples
order by sample_id;