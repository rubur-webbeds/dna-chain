package dnahandler is

   type tdna is private;
   
   procedure readBaseChain(chain: out tdna; text: in String);
   procedure completeDNA(dna: in out tdna);
   procedure writeDNA(dna: in tdna; filename: in String);
   
private
   
   MAX: Positive := 4;
   
   type tdna is record
      Base, Complementary: String(1..MAX);
   end record;

end dnahandler;
