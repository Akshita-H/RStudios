# 17th Aug 2026
BiocManager::install("pwalign",force = TRUE)
library(Biostrings)
library(pwalign)

# Define target sequences vectors
pattern_seq <- DNAString("ACTGACGACAG")
subject_seq <- DNAString("ACTGACGTAG")

# Execute Global Alignment (Needleman-Wunsch)
global_aln <- pairwiseAlignment(
  pattern = pattern_seq,
  subject = subject_seq,
  type = "global"
)
print(global_aln)

# Execute Local Alignment (Smith-Waterman)
local_aln <- pairwiseAlignment(
  pattern = pattern_seq,
  subject = subject_seq,
  type = "local"
)
print(local_aln)

# Load protein sequences
prot_seq1 <- AAString("HEAGAWGHEE")
prot_seq2 <- AAString("PAWHEE") # raw string target comparison

# Load standard BLOSUM62 substitution matrix
data(BLOSUM62)

# Customizing Affine Gap Penalties
# Note: In Biostrings, gap parameters are supplied as positive magnitude values deducted during scoring
custom_aln <- pairwiseAlignment(
  pattern = prot_seq1,
  subject = prot_seq2,
  type = "global",
  substitutionMatrix = BLOSUM62,
  gapOpening = 10,     # Penalty for opening a gap
  gapExtension = 0.5   # Penalty for extending an existing gap
)

score(custom_aln)
custom_aln

# Custom Nucleotide Substitution Matrix Creation
mat <- nucleotideSubstitutionMatrix(match = 3, mismatch = -1, baseOnly = TRUE)
nuc_aln <- pairwiseAlignment(
  pattern = pattern_seq,
  subject = subject_seq,
  substitutionMatrix = mat,
  gapOpening = 5,
  gapExtension = 2
)

# Retrieve numerical alignment score
alignment_score <- score(custom_aln)
alignment_score

# Extract aligned strings including gap characters
aligned_pattern <- aligned(pattern(custom_aln))
aligned_subject <- aligned(subject(custom_aln))

# Inspect sequence consensus sequence matching summary
mismatch_positions <- mismatchTable(custom_aln)
gap_ranges         <- deletion(custom_aln) # Indel regions on subject

# Summary View
summary(custom_aln)

