with dnahandler; use dnahandler;

procedure Main is

   dna: tdna;
   dna_len: Positive;

begin

   readBaseChain(dna, "Enter a DNA Base chain(4): ");
   completeDNA(dna);
   writeDNA(dna, "DNA.txt");
   openDNA("DNA.txt");

end Main;
