program lie;

uses
  Forms,
  main in 'main.pas' {Form1},
  scans in 'scans.pas' {Form2},
  tabellen in 'tabellen.pas' {Form3},
  diagramme in 'diagramme.pas' {Form4},
  stabmaps in 'stabmaps.pas' {Form5},
  ani3D in 'ani3D.pas' {Form7},
  resonances in 'resonances.pas' {Form8},
  habitable in 'habitable.pas' {Form9},
  colourpal in 'colourpal.pas' {Form10},
  colouration in 'colouration.pas' {Form11},
  about in 'about.pas' {Form12},
  manuel in 'manuel.pas' {Form6},
  bugs in 'bugs.pas' {Form13},
  exocal in 'exocal.pas' {Form14},
  exoeva in 'exoeva.pas' {Form15},
  stabele in 'stabele.pas' {Form16},
  fenster3D in 'fenster3D.pas' {Form17};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(TForm14, Form14);
  Application.CreateForm(TForm15, Form15);
  Application.CreateForm(TForm16, Form16);
  Application.CreateForm(TForm17, Form17);
  Application.Run;
end.
