   M S B A M L   `   `   `  ����  SchoolTimeTable_WPF$    SchoolTimeTable_WPF.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   $	��600��5   	   $	��800��6     � WindowStartupLocation$  CenterScreen=�5   	    � WindowStyle$
 None=�5   	    � AllowsTransparency .  � 
ResizeMode$ NoResize=�5   	    � Icon$&  Resources\icons8-calendar-64.png��5	   	    � 	Resources 5
         MyButton �� 
TargetType �� Property �� Value	 �� 
TargetType
 �� Triggers P� Property P� Value��%�  &	        �� 5   
   " ��6!   .�5      ��  �@�OverridesDefaultStyle . 66   �� 5       �@�Cursor$
 Hand��6'   �� 5       � �� 5      �� 5      "	 ��6&   .R�5      �� $��border��6!   $��0q�6/   
���   �#��z��6W   ._�5      �� $��Center=�6/   $��Center=�6L   5      
 5      P� 5       �@J�IsMouseOver . . �5   "   ��  �@J�Opacity$	 0.8Q�6<   5      5      5      5      5      .��5      � .+�5   
   �� ���	#FF78E6AA$��Center=�6%   $��50��6B   $��0,0,0,0q�6N   
���   �$	��Top=�6n   $	��800��6�   �� 5    
   $��40��6   $��40��6   $��5,5,0,0q�6'   $��0q�68   $
��Left=�6L   $	��Top=�6g    � Cursor$ No��6   ��5!      �� 5"       �� ImageSource$&  Resources/icons8-calendar-64.png��6    j� Stretch$ Uniform=�6L   5$      �� 5%   
   $��41��6   $	��183��6   $��40,7,0,0q�6(   $��0q�6:   $
��Left=�6N   $	��Top=�6i   $
��22.5(�6�   $
��Bold"�6�   $��Segoe)�6�   .��6�   Расписание6�   �� 5&   
   -   5         ��Name$ 
exitButton��5&      $��40��6%   $��40��61   $��Right=�6<   $	��Top=�6X   $��0,5,15,0q�6p   #��[  6�   $��0q�6�   ��5'      �� 5(      $$ Resources/icons8-delete-64.png��6   $ Uniform=�6J   5*      � 5+   
   -   5         �Name$ progressBar��5+      $��Center=�6+   $��40��6H   $��
0,52.5,0,0q�6T   $	��Top=�6h   $	��796��6�    � Maximum$	 100Q�6�   � 5,   
   -   5         �Name$ userControl��5,      $	��505��6)   $	��800��66   $��0,95,0,0q�6B    � Orientation$ Vertical=�6T   $��Stretch=�6k   5-      5.      