FasdUAS 1.101.10   ��   ��    k             l     ��  ��    L F this is for a SVN file with format filename.ext,Folder:Folder:Folder:     � 	 	 �   t h i s   i s   f o r   a   S V N   f i l e   w i t h   f o r m a t   f i l e n a m e . e x t , F o l d e r : F o l d e r : F o l d e r :   
  
 l     ��������  ��  ��        p         ������ 
0 target  ��        p         ������ 0 
filetoread 
fileToRead��        l     ��������  ��  ��        l     ����  r         m        �   x / U s e r s / a n a n d i h a l l i / D o c u m e n t s / S V N / F a r m S i m / F a r m G a m e / s r c / a s s e t s  o      ���� 
0 target  ��  ��        l     ��������  ��  ��        l    ����  r       !   l   	 "���� " I   	������
�� .sysostdfalis    ��� null��  ��  ��  ��   ! o      ���� 0 itemref itemRef��  ��     # $ # l     ��������  ��  ��   $  % & % l    '���� ' r     ( ) ( n     * + * 1    ��
�� 
psxp + l    ,���� , c     - . - o    ���� 0 itemref itemRef . m    ��
�� 
TEXT��  ��   ) o      ���� 0 
filetoread 
fileToRead��  ��   &  / 0 / l     ��������  ��  ��   0  1 2 1 l    3���� 3 r     4 5 4 J    ����   5 o      ���� 0 listoffiles listOfFiles��  ��   2  6 7 6 l     �� 8 9��   8 w qset Shows to paragraphs of (read POSIX file "/Users/anandihalli/Documents/Scripting/Apple scripts/SVN_files.txt")    9 � : : � s e t   S h o w s   t o   p a r a g r a p h s   o f   ( r e a d   P O S I X   f i l e   " / U s e r s / a n a n d i h a l l i / D o c u m e n t s / S c r i p t i n g / A p p l e   s c r i p t s / S V N _ f i l e s . t x t " ) 7  ; < ; l   % =���� = r    % > ? > n    # @ A @ 2  ! #��
�� 
cpar A l   ! B���� B I   !�� C��
�� .rdwrread****        **** C 4    �� D
�� 
psxf D o    ���� 0 
filetoread 
fileToRead��  ��  ��   ? o      ���� 0 shows Shows��  ��   <  E F E l  & � G���� G X   & � H�� I H k   6 { J J  K L K l  6 6�� M N��   M  display dialog nextLine    N � O O . d i s p l a y   d i a l o g   n e x t L i n e L  P Q P Z   6 S R S���� R E   6 9 T U T o   6 7���� 0 nextline nextLine U m   7 8 V V � W W  � � � S l  < O X Y Z X r   < O [ \ [ l  < M ]���� ] c   < M ^ _ ^ l  < K `���� ` n   < K a b a 7  = K�� c d
�� 
cha  c m   C G����  d m   H J������ b o   < =���� 0 nextline nextLine��  ��   _ m   K L��
�� 
TEXT��  ��   \ o      ���� 0 nextline nextLine Y  trim first 3    Z � e e  t r i m   f i r s t   3��  ��   Q  f g f l  T T�� h i��   h  display dialog nextLine    i � j j . d i s p l a y   d i a l o g   n e x t L i n e g  k�� k Z   T { l m���� l ?  T [ n o n n   T Y p q p 1   U Y��
�� 
leng q o   T U���� 0 nextline nextLine o m   Y Z����   m k   ^ w r r  s t s r   ^ h u v u I   ^ d�� w���� 0 	splittext 	splitText w  x�� x o   _ `���� 0 nextline nextLine��  ��   v o      ���� 0 elements   t  y z y I  i p�� {��
�� .ascrcmnt****      � **** { o   i l���� 0 elements  ��   z  |�� | s   q w } ~ } o   q t���� 0 elements   ~ l      ����  n       � � �  ;   u v � o   t u���� 0 listoffiles listOfFiles��  ��  ��  ��  ��  ��  �� 0 nextline nextLine I o   ) *���� 0 shows Shows��  ��   F  � � � l     �� � ���   � � �choose from list listOfShows with prompt "Select the files" OK button name "OK" cancel button name "Cancel" with multiple selections allowed    � � � � c h o o s e   f r o m   l i s t   l i s t O f S h o w s   w i t h   p r o m p t   " S e l e c t   t h e   f i l e s "   O K   b u t t o n   n a m e   " O K "   c a n c e l   b u t t o n   n a m e   " C a n c e l "   w i t h   m u l t i p l e   s e l e c t i o n s   a l l o w e d �  � � � l     ��������  ��  ��   �  � � � i      � � � I      �� ����� 0 
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
ascr �   always a linefeed    � � � � $   a l w a y s   a   l i n e f e e d �  � � � r     � � � l    ����� � c     � � � o    �� 0 the_list   � m    �~
�~ 
TEXT��  ��   � o      �}�} 0 list_string   �  � � � r    ) � � � I   '�| ��{
�| .sysoexecTEXT���     TEXT � b    # � � � b    ! � � � m     � � � � � 
 e c h o   � n      � � � 1     �z
�z 
strq � o    �y�y 0 list_string   � m   ! " � � � � �    |   s o r t   - f�{   � o      �x�x 0 
new_string   �  � � � r   * / � � � l  * - ��w�v � n   * - � � � 2  + -�u
�u 
cpar � o   * +�t�t 0 
new_string  �w  �v   � o      �s�s 0 new_list   �  � � � r   0 5 � � � o   0 1�r�r 0 
old_delims   � n      � � � 1   2 4�q
�q 
txdl � 1   1 2�p
�p 
ascr �  ��o � L   6 8 � � o   6 7�n�n 0 new_list  �o   �  � � � l     �m�l�k�m  �l  �k   �  � � � i     � � � I      �j ��i�j "0 checkfileexists checkFileExists �  ��h � o      �g�g 0 listoffiles listOfFiles�h  �i   � k     8 � �  � � � r      � � � J     �f�f   � o      �e�e &0 listoffilesreport listOfFilesReport �  � � � X    5 ��d � � k    0 � �  � � � r     � � � b     � � � b     � � � o    �c�c 
0 target   � m     � � � � �  / � o    �b�b 0 curfile curFile � o      �a�a 0 filepath filePath �  � � � l   �` �`    ( "do shell script "find " & filePath    � D d o   s h e l l   s c r i p t   " f i n d   "   &   f i l e P a t h �  r    + b    ) b    '	
	 l   %�_�^ c    % I    #�]�\�] 0 
fileexists 
FileExists �[ o    �Z�Z 0 filepath filePath�[  �\   m   # $�Y
�Y 
ctxt�_  �^  
 m   % & � 
     - -   o   ' (�X�X 0 curfile curFile o      �W�W 0 mystring myString �V s   , 0 o   , -�U�U 0 mystring myString l     �T�S n        ;   . / o   - .�R�R &0 listoffilesreport listOfFilesReport�T  �S  �V  �d 0 curfile curFile � o    	�Q�Q 0 listoffiles listOfFiles � �P L   6 8 o   6 7�O�O &0 listoffilesreport listOfFilesReport�P   �  l     �N�M�L�N  �M  �L    i     I      �K�J�I�K 0 copyfolders copyFolders�J  �I   X     2 �H!  k    -"" #$# l   �G%&�G  %  display dialog folder   & �'' * d i s p l a y   d i a l o g   f o l d e r$ ()( l   �F*+�F  *  exit repeat   + �,,  e x i t   r e p e a t) -.- l   �E/0�E  / $ Assing Folder to source folder   0 �11 < A s s i n g   F o l d e r   t o   s o u r c e   f o l d e r. 232 r    454 b    676 b    898 b    :;: b    <=< m    >> �??  '= o    �D�D 0 serversource serverSource; m    @@ �AA  /9 1    �C
�C 
asdr7 m    BB �CC  '5 o      �B�B 0 
cur_source  3 DED l   �AFG�A  F   Copying happens here   G �HH *   C o p y i n g   h a p p e n s   h e r eE IJI I   +�@K�?
�@ .sysoexecTEXT���     TEXTK b    'LML b    %NON b    #PQP b    !RSR b    TUT m    VV �WW  c p   - R f v   /U o    �>�> 0 
cur_source  S m     XX �YY   Q m   ! "ZZ �[[  'O o   # $�=�= 
0 target  M m   % &\\ �]]  '�?  J ^�<^ l  , ,�;_`�;  _ > 8 Only use exit while testing to avoid complete looping		   ` �aa p   O n l y   u s e   e x i t   w h i l e   t e s t i n g   t o   a v o i d   c o m p l e t e   l o o p i n g 	 	�<  
�H 
asdr! o    �:�: $0 thechosenfolders theChosenFolders bcb l     �9�8�7�9  �8  �7  c ded i    fgf I      �6h�5�6 0 	splittext 	splitTexth iji o      �4�4 0 thetext theTextj k�3k o      �2�2 0 thedelimiter theDelimiter�3  �5  g k     ll mnm r     opo o     �1�1 0 thedelimiter theDelimiterp n     qrq 1    �0
�0 
txdlr 1    �/
�/ 
ascrn sts r    uvu n    	wxw 2    	�.
�. 
citmx o    �-�- 0 thetext theTextv o      �,�, 0 thetextitems theTextItemst yzy r    {|{ m    }} �~~  | n     � 1    �+
�+ 
txdl� 1    �*
�* 
ascrz ��)� L    �� o    �(�( 0 thetextitems theTextItems�)  e ��� l     �'�&�%�'  �&  �%  � ��� i    ��� I      �$��#�$  0 createtextfile createTextFile� ��"� o      �!�! 0 mylist myList�"  �#  � k     e�� ��� l     � ���   �   Create a new text file   � ��� .   C r e a t e   a   n e w   t e x t   f i l e� ��� l     ����  � ) # set theNewFile to choose file name   � ��� F   s e t   t h e N e w F i l e   t o   c h o o s e   f i l e   n a m e� ��� l     ����  � $  Convert the list in to string   � ��� <   C o n v e r t   t h e   l i s t   i n   t o   s t r i n g� ��� r     ��� m     �� ���  � o      �� 0 final Final� ��� Z    .����� ?    ��� l   	���� e    	�� I   	���
� .corecnte****       ****� o    �� 0 mylist myList�  �  �  � m   	 
�� � X    *���� k    %�� ��� l   ����  � _ Yset Final to Final & theItem & ", " --For comma seperated use "," and for new line use ""   � ��� � s e t   F i n a l   t o   F i n a l   &   t h e I t e m   &   " ,   "   - - F o r   c o m m a   s e p e r a t e d   u s e   " , "   a n d   f o r   n e w   l i n e   u s e   " "� ��� r    %��� b    #��� b    !��� o    �� 0 final Final� o     �� 0 theitem theItem� m   ! "�� ���  
� o      �� 0 final Final�  � 0 theitem theItem� o    �� 0 mylist myList�  �  � ��� l  / /����  �  �  � ��� r   / 2��� o   / 0�
�
 0 final Final� o      �	�	 0 dataout dataOut� ��� l  3 3����  �  �  � ��� l  3 3����  �  �  � ��� O   3 c��� k   7 b�� ��� I  7 <��� 
� .miscactvnull��� ��� null�  �   � ��� I  = D�����
�� .corecrel****      � null��  � �����
�� 
kocl� m   ? @��
�� 
docu��  � ��� r   E L��� I  E J������
�� .misccurdldt    ��� null��  ��  � o      ���� 0 thedate theDate� ��� r   M W��� c   M P��� o   M N���� 0 dataout dataOut� m   N O��
�� 
ctxt� n      ��� m   T V��
�� 
ctxt� 4   P T���
�� 
docu� m   R S���� � ��� l  X X������  � - 'display dialog POSIX path of fileToRead   � ��� N d i s p l a y   d i a l o g   P O S I X   p a t h   o f   f i l e T o R e a d� ���� I  X b����
�� .coresavenull���    obj � 4   X \���
�� 
docu� m   Z [���� � �����
�� 
kfil� m   ] ^�� ��� T / U s e r s / a n a n d i h a l l i / / D e s k t o p / L a s t U p d a t e . t x t��  ��  � m   3 4���                                                                                  ttxt  alis    V  Macintosh HD               ��n�H+     ATextEdit.app                                                     �W��S        ����  	                Applications    ��!f      ��d�       A  'Macintosh HD:Applications: TextEdit.app     T e x t E d i t . a p p    M a c i n t o s h   H D  Applications/TextEdit.app   / ��  � ��� l  d d������  �  display dialog "Done"   � ��� * d i s p l a y   d i a l o g   " D o n e "� ���� l  d d��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l  � ������� L   � ��� o   � ����� 0 listoffiles listOfFiles��  ��  � ��� l     ������  � 0 *set myList to checkFileExists(listOfFiles)   � ��� T s e t   m y L i s t   t o   c h e c k F i l e E x i s t s ( l i s t O f F i l e s )� ���� l     ������  � , &createTextFile(alphabeticSort(myList))   � ��� L c r e a t e T e x t F i l e ( a l p h a b e t i c S o r t ( m y L i s t ) )��       	��� ��  � ���������������� 0 
fileexists 
FileExists��  0 alphabeticsort alphabeticSort�� "0 checkfileexists checkFileExists�� 0 copyfolders copyFolders�� 0 	splittext 	splitText��  0 createtextfile createTextFile
�� .aevtoappnull  �   � ****  �� ��������� 0 
fileexists 
FileExists�� ��	�� 	  ���� 0 thefile theFile��   ���� 0 thefile theFile  �����
�� 
file
�� .coredoexnull���     ****�� � *�/j  eY fU �� �����
����  0 alphabeticsort alphabeticSort�� ����   ���� 0 mylist myList��  
 �������������� 0 mylist myList�� 0 the_list  �� 0 
old_delims  �� 0 list_string  �� 0 
new_string  �� 0 new_list   
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
cpar�� 9�E�O��,E�O�j kv��,FO��&E�O��,%�%j E�O��-E�O���,FO� �� ��������� "0 checkfileexists checkFileExists�� ����   ���� 0 listoffiles listOfFiles��   ������������ 0 listoffiles listOfFiles�� &0 listoffilesreport listOfFilesReport�� 0 curfile curFile�� 0 filepath filePath�� 0 mystring myString �������� �����
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 
0 target  �� 0 
fileexists 
FileExists
�� 
ctxt�� 9jvE�O /�[��l kh ��%�%E�O*�k+ �&�%�%E�O��6G[OY��O� ���������� 0 copyfolders copyFolders��  ��   ���������� $0 thechosenfolders theChosenFolders
�� 
asdr�� 0 serversource serverSource�� 0 
cur_source   ������>@BVXZ��\��
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 
0 target  
�� .sysoexecTEXT���     TEXT�� 3 1�[��l kh �%�%�%�%E�O�%�%�%�%�%j OP[OY�� ��g�������� 0 	splittext 	splitText�� ����   ������ 0 thetext theText�� 0 thedelimiter theDelimiter��   �������� 0 thetext theText�� 0 thedelimiter theDelimiter�� 0 thetextitems theTextItems ������}
�� 
ascr
�� 
txdl
�� 
citm�� ���,FO��-E�O���,FO� �����������  0 createtextfile createTextFile�� ����   ���� 0 mylist myList��   ������������ 0 mylist myList�� 0 final Final�� 0 theitem theItem�� 0 dataout dataOut�� 0 thedate theDate ���������~�}�|�{�z�y��x
�� .corecnte****       ****
�� 
kocl
� 
cobj
�~ .miscactvnull��� ��� null
�} 
docu
�| .corecrel****      � null
�{ .misccurdldt    ��� null
�z 
ctxt
�y 
kfil
�x .coresavenull���    obj �� f�E�O�j k ! �[��l kh ��%�%E�[OY��Y hO�E�O� -*j O*��l O*j 	E�O��&*�k/�-FO*�k/��l UOP �w�v�u�t
�w .aevtoappnull  �   � **** k     �      %  1  ;    E!! ��s�s  �v  �u   �r�r 0 nextline nextLine  �q�p�o�n�m�l�k�j�i�h�g�f�e�d V�c�b�a�`�_�^�q 
0 target  
�p .sysostdfalis    ��� null�o 0 itemref itemRef
�n 
TEXT
�m 
psxp�l 0 
filetoread 
fileToRead�k 0 listoffiles listOfFiles
�j 
psxf
�i .rdwrread****        ****
�h 
cpar�g 0 shows Shows
�f 
kocl
�e 
cobj
�d .corecnte****       ****
�c 
cha �b 
�a 
leng�` 0 	splittext 	splitText�_ 0 elements  
�^ .ascrcmnt****      � ****�t ��E�O*j E�O��&�,E�OjvE�O*��/j 	�-E�O Y�[��l kh  �� �[a \[Za \Zi2�&E�Y hO�a ,j *�k+ E` O_ j O_ �6GY h[OY��O� ascr  ��ޭ