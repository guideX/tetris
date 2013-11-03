VERSION 5.00
Begin VB.Form frmSplash 
   BorderStyle     =   0  'None
   Caption         =   "Nexgen Tetris"
   ClientHeight    =   5355
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6960
   LinkTopic       =   "Form2"
   Picture         =   "frmSplash.frx":0000
   ScaleHeight     =   5355
   ScaleWidth      =   6960
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Timer tmrClose 
      Enabled         =   0   'False
      Interval        =   2000
      Left            =   2520
      Top             =   1560
   End
End
Attribute VB_Name = "frmSplash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
tmrClose.Enabled = True
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
tmrClose.Enabled = False
Unload Me

End Sub

Private Sub tmrClose_Timer()
tmrClose.Enabled = False
Unload Me
End Sub
