//---------------------------------------------------------------------------

#ifndef GUI_MainFormH
#define GUI_MainFormH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Datasnap.DBClient.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
#include <Datasnap.Provider.hpp>
#include <Datasnap.Xmlxform.hpp>
#include <Xml.xmldom.hpp>
#include <Xml.XmlTransform.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <FireDAC.Comp.Client.hpp>
#include <FireDAC.Comp.DataSet.hpp>
#include <FireDAC.DApt.Intf.hpp>
#include <FireDAC.DatS.hpp>
#include <FireDAC.Phys.Intf.hpp>
#include <FireDAC.Stan.Error.hpp>
#include <FireDAC.Stan.Intf.hpp>
#include <FireDAC.Stan.Option.hpp>
#include <FireDAC.Stan.Param.hpp>
#include <FireDAC.Stan.StorageXML.hpp>
#include <FireDAC.Comp.BatchMove.DataSet.hpp>
#include <FireDAC.Comp.BatchMove.hpp>
#include <FireDAC.Comp.UI.hpp>
#include <FireDAC.UI.Intf.hpp>
#include <FireDAC.VCLUI.Wait.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
   TClientDataSet *ClientDataSet1;
   TDBGrid *DBGrid1;
   TDataSource *DataSource1;
   TButton *ClearButton;
   TButton *Load1Button;
   TXMLTransform *XMLTransform1;
   TButton *Load2Button;
   TFDMemTable *FDMemTable1;
   TDataSource *DataSource2;
   TDBGrid *DBGrid2;
   TFDBatchMove *FDBatchMove1;
   TFDBatchMoveDataSetReader *FDBatchMoveDataSetReader1;
   TFDBatchMoveDataSetWriter *FDBatchMoveDataSetWriter1;
   TFDGUIxWaitCursor *FDGUIxWaitCursor1;
   TLabel *Label1;
   TLabel *Label2;
   TCheckBox *AppendCheckBox;
   void __fastcall ClearButtonClick(TObject *Sender);
   void __fastcall Load1ButtonClick(TObject *Sender);
   void __fastcall Load2ButtonClick(TObject *Sender);
private:	// User declarations
   void Update(String XMLFile);
public:		// User declarations
   __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
