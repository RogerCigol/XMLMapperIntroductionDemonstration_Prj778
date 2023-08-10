//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "GUI_MainForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"


TForm1 *Form1;

//---------------------------------------------------------------------------

const String Directory = "D:\\Projects\\MVP 778\\XML-mapper\\C code for project xml\\";

const String SourceXML_1 = Directory + String("XML files\\Authors__simple__001.xml");
const String SourceXML_2 = Directory + String("XML files\\Authors__simple__002.xml");

const String TransformFile = Directory + String("Transform files\\Authors__simple_ALL.xtr");

//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
   : TForm(Owner)
{
   XMLTransform1->TransformationFile = TransformFile;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::ClearButtonClick(TObject *Sender)
{
   if (FDMemTable1->Active) {
      FDMemTable1->EmptyDataSet();
   }
   if (ClientDataSet1->Active) {
      ClientDataSet1->EmptyDataSet();
   }
}

//---------------------------------------------------------------------------

void TForm1::Update(String XMLFile)
{
   XMLTransform1->SourceXmlFile = XMLFile;
   ClientDataSet1->XMLData = XMLTransform1->Data;
   if ((FDMemTable1->Active) && (!AppendCheckBox->Checked)) {
      FDMemTable1->EmptyDataSet();
   }
   FDBatchMove1->Execute();
}


//---------------------------------------------------------------------------

void __fastcall TForm1::Load1ButtonClick(TObject *Sender)
{
   Update(SourceXML_1);
}

//---------------------------------------------------------------------------

void __fastcall TForm1::Load2ButtonClick(TObject *Sender)
{
   Update(SourceXML_2);
}

//---------------------------------------------------------------------------

