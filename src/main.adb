with dnahandler; use dnahandler;

procedure Main is

   dna: tdna;

begin

   readBaseChain(dna, "Enter a DNA Base chain(4): ");
   completeDNA(dna);
   writeDNA(dna, "DNA.txt");

end Main;
