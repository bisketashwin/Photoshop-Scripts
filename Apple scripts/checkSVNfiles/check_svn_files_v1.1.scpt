FasdUAS 1.101.10   ��   ��    k             l     ��  ��    d ^ You should have connected to Server folder that you are trying to coonect through this script     � 	 	 �   Y o u   s h o u l d   h a v e   c o n n e c t e d   t o   S e r v e r   f o l d e r   t h a t   y o u   a r e   t r y i n g   t o   c o o n e c t   t h r o u g h   t h i s   s c r i p t   
  
 l     ��������  ��  ��        p         ������ 
0 target  ��        p         ������ 0 
filetoread 
fileToRead��        l     ��������  ��  ��        l     ����  r         m        �   j / U s e r s / a n a n d i h a l l i / D o c u m e n t s / S V N / F a r m S i m / F a r m G a m e / s r c  o      ���� 
0 target  ��  ��        l     ��������  ��  ��        l     ��������  ��  ��         l     ��������  ��  ��      ! " ! l     �� # $��   # P Jtell application "Finder" to return POSIX path of ((choose file) as alias)    $ � % % � t e l l   a p p l i c a t i o n   " F i n d e r "   t o   r e t u r n   P O S I X   p a t h   o f   ( ( c h o o s e   f i l e )   a s   a l i a s ) "  & ' & l     ��������  ��  ��   '  ( ) ( l    *���� * r     + , + l   	 -���� - I   	������
�� .sysostdfalis    ��� null��  ��  ��  ��   , o      ���� 0 itemref itemRef��  ��   )  . / . l     ��������  ��  ��   /  0 1 0 l    2���� 2 r     3 4 3 n     5 6 5 1    ��
�� 
psxp 6 l    7���� 7 c     8 9 8 o    ���� 0 itemref itemRef 9 m    ��
�� 
TEXT��  ��   4 o      ���� 0 
filetoread 
fileToRead��  ��   1  : ; : l     ��������  ��  ��   ;  < = < l    >���� > r     ? @ ? J    ����   @ o      ���� 0 listoffiles listOfFiles��  ��   =  A B A l     �� C D��   C w qset Shows to paragraphs of (read POSIX file "/Users/anandihalli/Documents/Scripting/Apple scripts/SVN_files.txt")    D � E E � s e t   S h o w s   t o   p a r a g r a p h s   o f   ( r e a d   P O S I X   f i l e   " / U s e r s / a n a n d i h a l l i / D o c u m e n t s / S c r i p t i n g / A p p l e   s c r i p t s / S V N _ f i l e s . t x t " ) B  F G F l   % H���� H r    % I J I n    # K L K 2  ! #��
�� 
cpar L l   ! M���� M I   !�� N��
�� .rdwrread****        **** N 4    �� O
�� 
psxf O o    ���� 0 
filetoread 
fileToRead��  ��  ��   J o      ���� 0 shows Shows��  ��   G  P Q P l  & k R���� R X   & k S�� T S k   6 f U U  V W V l  6 6�� X Y��   X  display dialog nextLine    Y � Z Z . d i s p l a y   d i a l o g   n e x t L i n e W  [ \ [ Z   6 S ] ^���� ] E   6 9 _ ` _ o   6 7���� 0 nextline nextLine ` m   7 8 a a � b b  � � � ^ l  < O c d e c r   < O f g f l  < M h���� h c   < M i j i l  < K k���� k n   < K l m l 7  = K�� n o
�� 
cha  n m   C G����  o m   H J������ m o   < =���� 0 nextline nextLine��  ��   j m   K L��
�� 
TEXT��  ��   g o      ���� 0 nextline nextLine d  trim first 3    e � p p  t r i m   f i r s t   3��  ��   \  q r q l  T T�� s t��   s  display dialog nextLine    t � u u . d i s p l a y   d i a l o g   n e x t L i n e r  v�� v Z   T f w x���� w ?  T [ y z y n   T Y { | { 1   U Y��
�� 
leng | o   T U���� 0 nextline nextLine z m   Y Z����   x s   ^ b } ~ } o   ^ _���� 0 nextline nextLine ~ l      ����  n       � � �  ;   ` a � o   _ `���� 0 listoffiles listOfFiles��  ��  ��  ��  ��  �� 0 nextline nextLine T o   ) *���� 0 shows Shows��  ��   Q  � � � l     �� � ���   � � �choose from list listOfShows with prompt "Select the files" OK button name "OK" cancel button name "Cancel" with multiple selections allowed    � � � � c h o o s e   f r o m   l i s t   l i s t O f S h o w s   w i t h   p r o m p t   " S e l e c t   t h e   f i l e s "   O K   b u t t o n   n a m e   " O K "   c a n c e l   b u t t o n   n a m e   " C a n c e l "   w i t h   m u l t i p l e   s e l e c t i o n s   a l l o w e d �  � � � l     ��������  ��  ��   �  � � � i      � � � I      �� ����� 0 
fileexists 
FileExists �  ��� � o      ���� 0 thefile theFile��  ��   � l     � � � � O      � � � Z     � ��� � � I   �� ���
�� .coredoexnull���     **** � 4    �� �
�� 
file � o    ���� 0 thefile theFile��   � L     � � m    ��
�� boovtrue��   � L     � � m    ��
�� boovfals � m      � ��                                                                                  sevs  alis    �  Macintosh HD               ��n�H+     !System Events.app                                               Q���%        ����  	                CoreServices    ��!f      ���       !         =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �   (String) as Boolean    � � � � (   ( S t r i n g )   a s   B o o l e a n �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� �����  0 alphabeticsort alphabeticSort �  ��� � o      ���� 0 mylist myList��  ��   � k     8 � �  � � � r      � � � o     ���� 0 mylist myList � o      ���� 0 the_list   �  � � � r    	 � � � n    � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr � o      ���� 0 
old_delims   �  � � � l  
  � � � � r   
  � � � J   
  � �  ��� � I  
 �� ���
�� .sysontocTEXT       shor � m   
 ���� 
��  ��   � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr �   always a linefeed    � � � � $   a l w a y s   a   l i n e f e e d �  � � � r     � � � l    ���� � c     � � � o    �~�~ 0 the_list   � m    �}
�} 
TEXT��  �   � o      �|�| 0 list_string   �  � � � r    ) � � � I   '�{ ��z
�{ .sysoexecTEXT���     TEXT � b    # � � � b    ! � � � m     � � � � � 
 e c h o   � n      � � � 1     �y
�y 
strq � o    �x�x 0 list_string   � m   ! " � � � � �    |   s o r t   - f�z   � o      �w�w 0 
new_string   �  � � � r   * / � � � l  * - ��v�u � n   * - � � � 2  + -�t
�t 
cpar � o   * +�s�s 0 
new_string  �v  �u   � o      �r�r 0 new_list   �  � � � r   0 5 � � � o   0 1�q�q 0 
old_delims   � n      � � � 1   2 4�p
�p 
txdl � 1   1 2�o
�o 
ascr �  ��n � L   6 8 � � o   6 7�m�m 0 new_list  �n   �  � � � l     �l�k�j�l  �k  �j   �  � � � i     � � � I      �i ��h�i "0 checkfileexists checkFileExists �  ��g � o      �f�f 0 listoffiles listOfFiles�g  �h   � k     8 � �  � � � r      � � � J     �e�e   � o      �d�d &0 listoffilesreport listOfFilesReport �  � � � X    5 ��c � � k    0 � �  � � � r     � � � b     � � � b     � � � o    �b�b 
0 target   � m     � � � � �  / � o    �a�a 0 curfile curFile � o      �`�` 0 filepath filePath �  � � � l   �_ �_    ( "do shell script "find " & filePath    � D d o   s h e l l   s c r i p t   " f i n d   "   &   f i l e P a t h �  r    + b    ) b    '	
	 l   %�^�] c    % I    #�\�[�\ 0 
fileexists 
FileExists �Z o    �Y�Y 0 filepath filePath�Z  �[   m   # $�X
�X 
ctxt�^  �]  
 m   % & � 
     - -   o   ' (�W�W 0 curfile curFile o      �V�V 0 mystring myString �U s   , 0 o   , -�T�T 0 mystring myString l     �S�R n        ;   . / o   - .�Q�Q &0 listoffilesreport listOfFilesReport�S  �R  �U  �c 0 curfile curFile � o    	�P�P 0 listoffiles listOfFiles � �O L   6 8 o   6 7�N�N &0 listoffilesreport listOfFilesReport�O   �  l     �M�L�K�M  �L  �K    i     I      �J�I�H�J 0 copyfolders copyFolders�I  �H   X     2 �G!  k    -"" #$# l   �F%&�F  %  display dialog folder   & �'' * d i s p l a y   d i a l o g   f o l d e r$ ()( l   �E*+�E  *  exit repeat   + �,,  e x i t   r e p e a t) -.- l   �D/0�D  / $ Assing Folder to source folder   0 �11 < A s s i n g   F o l d e r   t o   s o u r c e   f o l d e r. 232 r    454 b    676 b    898 b    :;: b    <=< m    >> �??  '= o    �C�C 0 serversource serverSource; m    @@ �AA  /9 1    �B
�B 
asdr7 m    BB �CC  '5 o      �A�A 0 
cur_source  3 DED l   �@FG�@  F   Copying happens here   G �HH *   C o p y i n g   h a p p e n s   h e r eE IJI I   +�?K�>
�? .sysoexecTEXT���     TEXTK b    'LML b    %NON b    #PQP b    !RSR b    TUT m    VV �WW  c p   - R f v   /U o    �=�= 0 
cur_source  S m     XX �YY   Q m   ! "ZZ �[[  'O o   # $�<�< 
0 target  M m   % &\\ �]]  '�>  J ^�;^ l  , ,�:_`�:  _ > 8 Only use exit while testing to avoid complete looping		   ` �aa p   O n l y   u s e   e x i t   w h i l e   t e s t i n g   t o   a v o i d   c o m p l e t e   l o o p i n g 	 	�;  
�G 
asdr! o    �9�9 $0 thechosenfolders theChosenFolders bcb l     �8�7�6�8  �7  �6  c ded i    fgf I      �5h�4�5  0 createtextfile createTextFileh i�3i o      �2�2 0 mylist myList�3  �4  g k     ujj klk l     �1mn�1  m   Create a new text file   n �oo .   C r e a t e   a   n e w   t e x t   f i l el pqp l     �0rs�0  r ) # set theNewFile to choose file name   s �tt F   s e t   t h e N e w F i l e   t o   c h o o s e   f i l e   n a m eq uvu l     �/wx�/  w $  Convert the list in to string   x �yy <   C o n v e r t   t h e   l i s t   i n   t o   s t r i n gv z{z r     |}| m     ~~ �  } o      �.�. 0 final Final{ ��� Z    .���-�,� ?    ��� l   	��+�*� e    	�� I   	�)��(
�) .corecnte****       ****� o    �'�' 0 mylist myList�(  �+  �*  � m   	 
�&�& � X    *��%�� k    %�� ��� l   �$���$  � _ Yset Final to Final & theItem & ", " --For comma seperated use "," and for new line use ""   � ��� � s e t   F i n a l   t o   F i n a l   &   t h e I t e m   &   " ,   "   - - F o r   c o m m a   s e p e r a t e d   u s e   " , "   a n d   f o r   n e w   l i n e   u s e   " "� ��#� r    %��� b    #��� b    !��� o    �"�" 0 final Final� o     �!�! 0 theitem theItem� m   ! "�� ���  � o      � �  0 final Final�#  �% 0 theitem theItem� o    �� 0 mylist myList�-  �,  � ��� l  / /����  �  �  � ��� r   / 2��� o   / 0�� 0 final Final� o      �� 0 dataout dataOut� ��� l  3 3����  �  �  � ��� l  3 3����  �  �  � ��� O   3 k��� k   7 j�� ��� I  7 <���
� .miscactvnull��� ��� null�  �  � ��� I  = D���
� .corecrel****      � null�  � ���
� 
kocl� m   ? @�
� 
docu�  � ��� r   E L��� I  E J��
�	
� .misccurdldt    ��� null�
  �	  � o      �� 0 thedate theDate� ��� r   M W��� c   M P��� o   M N�� 0 dataout dataOut� m   N O�
� 
ctxt� n      ��� m   T V�
� 
ctxt� 4   P T��
� 
docu� m   R S�� � ��� I  X _���
� .sysodlogaskr        TEXT� n   X [��� 1   Y [� 
�  
psxp� o   X Y���� 0 
filetoread 
fileToRead�  � ���� I  ` j����
�� .coresavenull���    obj � 4   ` d���
�� 
docu� m   b c���� � �����
�� 
kfil� m   e f�� ��� T / U s e r s / a n a n d i h a l l i / / D e s k t o p / L a s t U p d a t e . t x t��  ��  � m   3 4���                                                                                  ttxt  alis    V  Macintosh HD               ��n�H+     ATextEdit.app                                                     �W��S        ����  	                Applications    ��!f      ��d�       A  'Macintosh HD:Applications: TextEdit.app     T e x t E d i t . a p p    M a c i n t o s h   H D  Applications/TextEdit.app   / ��  � ��� I  l s�����
�� .sysodlogaskr        TEXT� m   l o�� ���  D o n e��  � ���� l  t t��������  ��  ��  ��  e ��� l     ��������  ��  ��  � ��� l  l v������ r   l v��� I   l r������� "0 checkfileexists checkFileExists� ���� o   m n���� 0 listoffiles listOfFiles��  ��  � o      ���� 0 mylist myList��  ��  � ���� l  w ������� I   w ��������  0 createtextfile createTextFile� ���� I   x ��������  0 alphabeticsort alphabeticSort� ���� o   y |���� 0 mylist myList��  ��  ��  ��  ��  ��  ��       �����������  � �������������� 0 
fileexists 
FileExists��  0 alphabeticsort alphabeticSort�� "0 checkfileexists checkFileExists�� 0 copyfolders copyFolders��  0 createtextfile createTextFile
�� .aevtoappnull  �   � ****� �� ����������� 0 
fileexists 
FileExists�� ����� �  ���� 0 thefile theFile��  � ���� 0 thefile theFile�  �����
�� 
file
�� .coredoexnull���     ****�� � *�/j  eY fU� �� �����������  0 alphabeticsort alphabeticSort�� ����� �  ���� 0 mylist myList��  � �������������� 0 mylist myList�� 0 the_list  �� 0 
old_delims  �� 0 list_string  �� 0 
new_string  �� 0 new_list  � 
���������� ��� �����
�� 
ascr
�� 
txdl�� 

�� .sysontocTEXT       shor
�� 
TEXT
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
cpar�� 9�E�O��,E�O�j kv��,FO��&E�O��,%�%j E�O��-E�O���,FO�� �� ����������� "0 checkfileexists checkFileExists�� ����� �  ���� 0 listoffiles listOfFiles��  � ������������ 0 listoffiles listOfFiles�� &0 listoffilesreport listOfFilesReport�� 0 curfile curFile�� 0 filepath filePath�� 0 mystring myString� �������� �����
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 
0 target  �� 0 
fileexists 
FileExists
�� 
ctxt�� 9jvE�O /�[��l kh ��%�%E�O*�k+ �&�%�%E�O��6G[OY��O�� ������������ 0 copyfolders copyFolders��  ��  � ���������� $0 thechosenfolders theChosenFolders
�� 
asdr�� 0 serversource serverSource�� 0 
cur_source  � ������>@BVXZ��\��
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 
0 target  
�� .sysoexecTEXT���     TEXT�� 3 1�[��l kh �%�%�%�%E�O�%�%�%�%�%j OP[OY��� ��g����������  0 createtextfile createTextFile�� ����� �  ���� 0 mylist myList��  � ������������ 0 mylist myList�� 0 final Final�� 0 theitem theItem�� 0 dataout dataOut�� 0 thedate theDate� ~������������������������������
�� .corecnte****       ****
�� 
kocl
�� 
cobj
�� .miscactvnull��� ��� null
�� 
docu
�� .corecrel****      � null
�� .misccurdldt    ��� null
�� 
ctxt�� 0 
filetoread 
fileToRead
�� 
psxp
�� .sysodlogaskr        TEXT
�� 
kfil
�� .coresavenull���    obj �� v�E�O�j k ! �[��l kh ��%�%E�[OY��Y hO�E�O� 5*j O*��l O*j 	E�O��&*�k/�-FO��,j O*�k/��l UOa j OP� �����������
�� .aevtoappnull  �   � ****� k     ���  ��  (��  0��  <��  F��  P�� ��� �����  ��  ��  � �� 0 nextline nextLine�  �~�}�|�{�z�y�x�w�v�u�t�s�r�q a�p�o�n�m�l�k�j�~ 
0 target  
�} .sysostdfalis    ��� null�| 0 itemref itemRef
�{ 
TEXT
�z 
psxp�y 0 
filetoread 
fileToRead�x 0 listoffiles listOfFiles
�w 
psxf
�v .rdwrread****        ****
�u 
cpar�t 0 shows Shows
�s 
kocl
�r 
cobj
�q .corecnte****       ****
�p 
cha �o 
�n 
leng�m "0 checkfileexists checkFileExists�l 0 mylist myList�k  0 alphabeticsort alphabeticSort�j  0 createtextfile createTextFile�� ��E�O*j E�O��&�,E�OjvE�O*��/j 	�-E�O D�[��l kh  �� �[a \[Za \Zi2�&E�Y hO�a ,j 	��6GY h[OY��O*�k+ E` O**_ k+ k+  ascr  ��ޭ