with Ada.Text_IO; use Ada.Text_IO;

package body dnahandler is

   procedure readBaseChain(chain: out tdna; text: in String) is --read dna chain from keyboard
      
      len: Positive;
      
   begin
      
      Put_Line(text); 
      Get_Line(chain.Base, len);
      
   end readBaseChain;
   
   procedure completeDNA(dna: in out tdna) is 
      
      i: Positive := 1; --while index
      
   begin
      
      Put_Line("Completing DNA chain...");
      
      while i <= dna.Base'Last loop
         
         if dna.Base(i) = 'A' then
            dna.Complementary(i) := 'T';
         elsif dna.Base(i) = 'T' then
               dna.Complementary(i) := 'A';
            elsif dna.Base(i) = 'C' then
                  dna.Complementary(i) := 'G';
               elsif dna.Base(i) = 'G' then
                     dna.Complementary(i) := 'C';
         end if;
         
         i:= i + 1; 
         
      end loop;
      
      --Put_Line(dna.Complementary); --(dna.Complementary'First..dna.Complementary'Last)
      
   end completeDNA;
   
   procedure writeDNA(dna: in tdna; filename: in String) is
      
      file: File_Type;
      
   begin
      
      Put_Line("Writing DNA chain in " & filename & "...");
      
      Create(file, mode => Out_File, name => filename);
      Put_Line(file, "DNA Base chain: " & dna.Base);
      Put_Line(file, "DNA Complementary chain: " & dna.Complementary);
      
      Close(file);
      
   end writeDNA;
   
   procedure openDNA(filename: in String) is
      
      file: File_Type;
      line_len: Natural;
      line: String(1..line_len);
      
   begin
      
      Put_Line("Reading DNA chain from " & filename & "...");
      
      Open(file, mode => In_File, name => filename);
      
      while not End_Of_File(file) loop
         Get_Line(file, line, line_len);
         Put_Line(line(1..line_len));
      end loop;
      
      Close(file);
      
   end openDNA;

end dnahandler;
