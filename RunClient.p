
/*------------------------------------------------------------------------
    File        : RunClient.p
    Purpose     : Helps to run GUI part of Library project.

    Syntax      :

    Description : This procedure is completed.

    Author(s)   : Kristjan
    Created     : Mon Jan 25 19:30:34 EET 2021
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */

BLOCK-LEVEL ON ERROR UNDO, THROW.
USING GUI.GetCustomerInfo.

DEFINE VARIABLE Frn AS GUI.GetCustomerInfo NO-UNDO.
DEFINE VARIABLE cCustName AS CHARACTER.


/* ********************  Preprocessor Definitions  ******************** */


/* ***************************  Main Block  *************************** */
Frn = NEW GUI.GetCustomerInfo().

RETURN.
