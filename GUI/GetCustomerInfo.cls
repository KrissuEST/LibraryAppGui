 
 /*------------------------------------------------------------------------
    File        : GetCustomerInfo
    Purpose     : View of the Library project GUI.
    Syntax      : 
    Description : This class is not completed.
    Author(s)   : Kristjan
    Created     : Mon Jan 25 19:52:00 EET 2021
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Progress.Windows.Form.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS GUI.GetCustomerInfo INHERITS FORM: 
    
    DEFINE PRIVATE VARIABLE components AS System.ComponentModel.IContainer NO-UNDO.
    //DEFINE PRIVATE VARIABLE CustomerNameTextBox AS Telerik.WinControls.UI.RadTextBox NO-UNDO.
    //DEFINE PRIVATE VARIABLE ExitButton AS Telerik.WinControls.UI.RadButton NO-UNDO.
    //DEFINE PRIVATE VARIABLE GetCustomerNameButton AS Telerik.WinControls.UI.RadButton NO-UNDO.
    DEFINE PRIVATE VARIABLE CSAdapter AS Adapter.CustomerBEServiceAdapter.
    
    
    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
    CONSTRUCTOR PUBLIC GetCustomerInfo (  ):
        
        SUPER ().
        InitializeComponent().
        //THIS-OBJECT:ComponentsCollection:ADD(THIS-OBJECT:components).
        CATCH e AS Progress.Lang.Error :
            UNDO, THROW e.
        END CATCH.
        
    END CONSTRUCTOR.
    
    
    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC VOID InitializeComponent(  ):
        
        RETURN.

    END METHOD.
    
    
    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
    @VisualDesigner.
    METHOD PRIVATE VOID ExitButton_Click( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
        THIS-OBJECT:Close().
        RETURN.

    END METHOD.

END CLASS.
