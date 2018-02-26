package dnahandler is

   type tdna is private;
   
   procedure readBaseChain(chain: out tdna; text: in String);
   procedure completeDNA(dna: in out tdna);
   procedure writeDNA(dna: in tdna; filename: in String; dna_len: out Positive);
   procedure openDNA(filename: in String; dna_len: in Positive);
   
private
   
   MAX: Positive := 4;
   
   type tdna is record
      Base, Complementary: String(1..MAX);
   end record;

end dnahandler;
