 
 /*------------------------------------------------------------------------
    File        : CustomerBEServiceAdapter
    Purpose     : 
    Syntax      : 
    Description : This class is completed.
    Author(s)   : Kristjan
    Created     : Mon Jan 25 19:39:14 EET 2021
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Adapter.CustomerBEServiceAdapter: 
    
    DEFINE PUBLIC PROPERTY Adapter AS HANDLE NO-UNDO 
        GET.
        SET. 

    DEFINE PRIVATE PROPERTY hSICCustomerBEProc AS HANDLE NO-UNDO 
        GET.
        SET.         

    DEFINE PRIVATE PROPERTY Instance AS Adapter.CustomerBEServiceAdapter NO-UNDO 
        GET.
        SET.     
    
    
    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
    CONSTRUCTOR PUBLIC CustomerBEServiceAdapter (  ):
        SUPER ().
        
    END CONSTRUCTOR.
    
    
    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/

    METHOD PUBLIC VOID getCustomerNames( OUTPUT OUT AS CHARACTER ):
        RUN ServiceInterface\GetCustomerName.r PERSISTENT SET hSICCustomerBEProc(OUTPUT OUT) NO-ERROR.
        RETURN.

    END METHOD.
    
END CLASS.
