FasdUAS 1.101.10   ��   ��    k             p         ������ 0 targetfolder targetFolder��      	  p       
 
 ������  0 outcsvtextlist outCSVtextList��   	     p         ������ 0 pathinputfile pathInputFile��        l     ��������  ��  ��        l     ����  r         J     ����    o      ����  0 outcsvtextlist outCSVtextList��  ��        l     ��������  ��  ��        l    ����  r        m       �    . f l a  o      ���� 0 fileext fileExt��  ��        l     ��   !��       set fileExt to "_full.png"    ! � " " 4 s e t   f i l e E x t   t o   " _ f u l l . p n g "   # $ # l     �� % &��   % $ set fileExt to "_icon_200.png"    & � ' ' < s e t   f i l e E x t   t o   " _ i c o n _ 2 0 0 . p n g " $  ( ) ( l     �� * +��   * % set fileExt to "" -- any format    + � , , > s e t   f i l e E x t   t o   " "   - -   a n y   f o r m a t )  - . - l     ��������  ��  ��   .  / 0 / l     �� 1 2��   1 - '- GET THE CSV FILE YOU WANT TO READ ---    2 � 3 3 N -   G E T   T H E   C S V   F I L E   Y O U   W A N T   T O   R E A D   - - - 0  4 5 4 l  	  6���� 6 r   	  7 8 7 l  	  9���� 9 I  	 ���� :
�� .sysostdfalis    ��� null��   : �� ; <
�� 
prmp ; m     = = � > > & S e l e c t   t h e   C S V   f i l e < �� ?��
�� 
ftyp ? m     @ @ � A A  c s v��  ��  ��   8 o      ���� 0 pathinputfile pathInputFile��  ��   5  B C B l     �� D E��   D  log pathInputFile    E � F F " l o g   p a t h I n p u t F i l e C  G H G l     �� I J��   I " - READ THE FILE CONTENTS ---    J � K K 8 -   R E A D   T H E   F I L E   C O N T E N T S   - - - H  L M L l    N���� N r     O P O I   �� Q��
�� .rdwrread****        **** Q o    ���� 0 pathinputfile pathInputFile��   P o      ���� "0 strfilecontents strFileContents��  ��   M  R S R l     ��������  ��  ��   S  T U T l     �� V W��   V I C POSIX path means /Users/folder/ and not Macintosh HD:Users:folder:    W � X X �   P O S I X   p a t h   m e a n s   / U s e r s / f o l d e r /   a n d   n o t   M a c i n t o s h   H D : U s e r s : f o l d e r : U  Y Z Y l   ( [���� [ r    ( \ ] \ n    & ^ _ ^ 1   $ &��
�� 
psxp _ l   $ `���� ` I   $���� a
�� .sysostflalis    ��� null��   a �� b��
�� 
prmp b m      c c � d d b S e l e c t   t h e   f o l d e r   w h e r e   a r t   a s s e t s   a r e   d o w n l o a d e d��  ��  ��   ] o      ���� 0 targetfolder targetFolder��  ��   Z  e f e l     ��������  ��  ��   f  g h g l     �� i j��   i  log targetFolder    j � k k   l o g   t a r g e t F o l d e r h  l m l l     ��������  ��  ��   m  n o n l     ��������  ��  ��   o  p q p l     �� r s��   r @ :- BREAK THE FILE INTO PARAGRAPHS (i.e., ROWS or LINES) ---    s � t t t -   B R E A K   T H E   F I L E   I N T O   P A R A G R A P H S   ( i . e . ,   R O W S   o r   L I N E S )   - - - q  u v u l     �� w x��   w 7 1        (AS Paragraphs are separated by LF or CR)    x � y y b                 ( A S   P a r a g r a p h s   a r e   s e p a r a t e d   b y   L F   o r   C R ) v  z { z l     ��������  ��  ��   {  | } | l  ) 2 ~���� ~ r   ) 2  �  l  ) . ����� � n   ) . � � � 2  * .��
�� 
cpar � o   ) *���� "0 strfilecontents strFileContents��  ��   � o      ���� "0 parfilecontents parFileContents��  ��   }  � � � l  3 > ����� � r   3 > � � � I  3 :�� ���
�� .corecnte****       **** � o   3 6���� "0 parfilecontents parFileContents��   � o      ���� 0 numrows numRows��  ��   �  � � � l     �� � ���   � &  log "Number of Rows: " & numRows    � � � � @ l o g   " N u m b e r   o f   R o w s :   "   &   n u m R o w s �  � � � l     �� � ���   �  log parFileContents    � � � � & l o g   p a r F i l e C o n t e n t s �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � B <- PROCESS EACH PARAGRAPH (AKA LINE or ROW) OF INPUT FILE ---    � � � � x -   P R O C E S S   E A C H   P A R A G R A P H   ( A K A   L I N E   o r   R O W )   O F   I N P U T   F I L E   - - - �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � A ;�����������������������������������������������������������    � � � � v                                                            �  � � � l  ? � � � � Y   ? ��� � ��� � k   T � �  � � � l  T T�� � ���   � . (repeat with iPar from 2 to 5 for testing    � � � � P r e p e a t   w i t h   i P a r   f r o m   2   t o   5   f o r   t e s t i n g �  � � � l  T T�� � ���   � > 8��������������������������������������������������������    � � � � p                                                         �  � � � l  T T�� � ���   � O I        Skip first row since it has column titles, data starts in 1st row    � � � � �                 S k i p   f i r s t   r o w   s i n c e   i t   h a s   c o l u m n   t i t l e s ,   d a t a   s t a r t s   i n   1 s t   r o w �  � � � l  T T��������  ��  ��   �  � � � r   T ` � � � n   T \ � � � 4   W \�� �
�� 
cobj � o   Z [���� 0 ipar iPar � o   T W���� "0 parfilecontents parFileContents � o      ���� 0 lstrow lstRow �  � � � l  a p � � � � Z  a p � ����� � =   a h � � � o   a d���� 0 lstrow lstRow � m   d g � � � � �   �  S   k l��  ��   � 4 . EXIT Loop if Row is empty, like the last line    � � � � \   E X I T   L o o p   i f   R o w   i s   e m p t y ,   l i k e   t h e   l a s t   l i n e �  � � � l  q q��������  ��  ��   �  � � � r   q � � � � I   q }�� ����� 0 parsecsv parseCSV �  ��� � c   r y � � � o   r u���� 0 lstrow lstRow � m   u x��
�� 
ctxt��  ��   � o      ����  0 lstfieldsinrow lstFieldsinRow �  � � � l  � ��� � ���   �  log lstFieldsinRow    � � � � $ l o g   l s t F i e l d s i n R o w �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � > 8- THE FOLLOWING LINES ARE SPECIFIC TO YOUR FILE/DATA ---    � � � � p -   T H E   F O L L O W I N G   L I N E S   A R E   S P E C I F I C   T O   Y O U R   F I L E / D A T A   - - - �  � � � l  � ��������  ��  �   �  � � � l  � � � � � � r   � � � � � n   � � � � � 4   � ��~ �
�~ 
cobj � m   � ��}�}  � o   � ��|�|  0 lstfieldsinrow lstFieldsinRow � o      �{�{ 0 
strcsvname 
strCSVName �   COL 1 of CSV file name    � � � � .   C O L   1   o f   C S V   f i l e   n a m e �  � � � l  � ��z�y�x�z  �y  �x   �  � � � r   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � �   b   � � b   � � b   � � m   � � �		 
 f i n d   o   � ��w�w 0 targetfolder targetFolder m   � �

 �    - n a m e   m   � � �  ' o   � ��v�v 0 
strcsvname 
strCSVName � m   � � �  * � o   � ��u�u 0 fileext fileExt � m   � � �  ' � m   � � �    - t y p e   f � o      �t�t 0 mystring myString �  l  � ��s�r�q�s  �r  �q    l  � ��p�o�n�p  �o  �n    l  � ��m�l�k�m  �l  �k    r   � � I  � ��j�i
�j .sysoexecTEXT���     TEXT o   � ��h�h 0 mystring myString�i   o      �g�g 0 filesstring filesString   l  � ��f�e�d�f  �e  �d    !"! Z   �#$%�c# ?   � �&'& n   � �()( 1   � ��b
�b 
leng) o   � ��a�a 0 filesstring filesString' m   � ��`�`  $ r   � �*+* b   � �,-, o   � ��_�_  0 lstfieldsinrow lstFieldsinRow- m   � �.. �//  D o w n l o a d e d+ o      �^�^  0 lstfieldsinrow lstFieldsinRow% 010 B   � �232 o   � ��]�] 0 filesstring filesString3 m   � ��\�\  1 4�[4 k   � 55 676 r   � �898 b   � �:;: o   � ��Z�Z  0 lstfieldsinrow lstFieldsinRow; m   � �<< �==  N o t   f o u n d9 o      �Y�Y  0 lstfieldsinrow lstFieldsinRow7 >?> I  � ��X@�W
�X .ascrcmnt****      � ****@ o   � ��V�V 0 mystring myString�W  ? A�UA I  � �TB�S
�T .ascrcmnt****      � ****B n   � �CDC 1   � ��R
�R 
lengD o   � ��Q�Q 0 filesstring filesString�S  �U  �[  �c  " EFE l �P�O�N�P  �O  �N  F GHG r  IJI o  �M�M  0 lstfieldsinrow lstFieldsinRowJ n      KLK  ;  	
L o  	�L�L  0 outcsvtextlist outCSVtextListH M�KM l �J�I�H�J  �I  �H  �K  �� 0 ipar iPar � m   B C�G�G  � n   C ONON m   J N�F
�F 
nmbrO n  C JPQP 2  F J�E
�E 
cobjQ o   C F�D�D "0 parfilecontents parFileContents��   �  
 with iPar    � �RR    w i t h   i P a r � STS l     �CUV�C  U ? 9���������������������������������������������������������   V �WW r                                                         T XYX l Z�B�AZ I  �@[�?�@ 0 writecsv writeCSV[ \�>\ o  �=�=  0 outcsvtextlist outCSVtextList�>  �?  �B  �A  Y ]^] l     �<_`�<  _ 7 1=============== END OF MAIN SCRIPT ==============   ` �aa b = = = = = = = = = = = = = = =   E N D   O F   M A I N   S C R I P T   = = = = = = = = = = = = = =^ bcb l     �;�:�9�;  �:  �9  c ded i     fgf I      �8h�7�8 0 parsecsv parseCSVh i�6i o      �5�5 0 pstrrowtext pstrRowText�6  �7  g k     &jj klk r     mnm J     oo pqp n    rsr 1    �4
�4 
txdls  f     q t�3t m    uu �vv  ,�3  n J      ww xyx o      �2�2 0 od  y z�1z n     {|{ 1    �0
�0 
txdl|  f    �1  l }~} r    � n    ��� 2   �/
�/ 
citm� o    �.�. 0 pstrrowtext pstrRowText� o      �-�- 0 
parsedtext 
parsedText~ ��� r    #��� o    �,�, 0 od  � n     ��� 1     "�+
�+ 
txdl�  f     � ��*� L   $ &�� o   $ %�)�) 0 
parsedtext 
parsedText�*  e ��� l     �(�'�&�(  �'  �&  � ��� l     �%�$�#�%  �$  �#  � ��� i    ��� I      �"��!�" 0 coverttocsv CovertToCSV� �� � o      �� 0 mylist myList�   �!  � k     -�� ��� l     ����  �  �  � ��� r     ��� b     ��� m     �� ��� � C M S   N a m e ,   A s s e t   T y p e ,   U s e d   F o r ,   W a t e r   o r   A m p h i 	 ,   C M S   S t a t u s ,   I n   A s s e t   F o l d e r� m    �� ���  
 	� o      �� 0 thedata theData� ��� r    ��� m    �� ���  ,  � n     ��� 1    
�
� 
txdl� 1    �
� 
ascr� ��� Y    *������ k    %�� ��� l   ����  �  �  � ��� r    %��� b    #��� b    !��� o    �� 0 thedata theData� n     ��� 4     ��
� 
cobj� o    �� 0 i  � o    �� 0 mylist myList� m   ! "�� ���  
 	 	� o      �� 0 thedata theData�  � 0 i  � m    �� � n    ��� m    �
� 
nmbr� n   ��� 2   �
� 
cobj� o    �
�
 0 mylist myList�  � ��	� L   + -�� o   + ,�� 0 thedata theData�	  � ��� l     ����  �  �  � ��� i    ��� I      ���� 0 write_to_file  � ��� o      �� 0 	this_data  � ��� o      �� 0 target_file  � �� � o      ���� 0 append_data  �   �  � Q     Y���� k    :�� ��� r    ��� c    ��� l   ������ o    ���� 0 target_file  ��  ��  � m    ��
�� 
TEXT� l     ������ o      ���� 0 target_file  ��  ��  � ��� r   	 ��� I  	 ����
�� .rdwropenshor       file� 4   	 ���
�� 
file� o    ���� 0 target_file  � �����
�� 
perm� m    ��
�� boovtrue��  � l     ������ o      ���� 0 open_target_file  ��  ��  � ��� Z   '������� =   ��� o    ���� 0 append_data  � m    ��
�� boovfals� I   #����
�� .rdwrseofnull���     ****� l   ������ o    ���� 0 open_target_file  ��  ��  � �����
�� 
set2� m    ����  ��  ��  ��  � ��� I  ( 1����
�� .rdwrwritnull���     ****� o   ( )���� 0 	this_data  � ����
�� 
refn� l  * +������ o   * +���� 0 open_target_file  ��  ��  � �����
�� 
wrat� m   , -��
�� rdwreof ��  � ��� I  2 7�����
�� .rdwrclosnull���     ****� l  2 3������ o   2 3���� 0 open_target_file  ��  ��  ��  � ���� L   8 :�� m   8 9��
�� boovtrue��  � R      ������
�� .ascrerr ****      � ****��  ��  � k   B Y�� ��� Q   B V ��  I  E M����
�� .rdwrclosnull���     **** 4   E I��
�� 
file o   G H���� 0 target_file  ��   R      ������
�� .ascrerr ****      � ****��  ��  ��  � �� L   W Y m   W X��
�� boovfals��  �  l     ��������  ��  ��   	 i    

 I      ������ 0 writecsv writeCSV �� o      ����  0 outcsvtextlist outCSVtextList��  ��   k       r      I     ������ 0 coverttocsv CovertToCSV �� o    ����  0 outcsvtextlist outCSVtextList��  ��   o      ���� 0 thedata theData  l  	 	����    log pathInputFile    � " l o g   p a t h I n p u t F i l e  I   	 ������ 0 write_to_file    o   
 ���� 0 thedata theData   o    ���� 0 pathinputfile pathInputFile  !��! m    ��
�� boovfals��  ��   "#" l   ��$%��  $  log theData   % �&&  l o g   t h e D a t a# '��' l   ��������  ��  ��  ��  	 ()( l     ��������  ��  ��  ) *+* l     ��������  ��  ��  + ,-, l     ��������  ��  ��  - .��. l     ��������  ��  ��  ��       ��/01234��  / ������������ 0 parsecsv parseCSV�� 0 coverttocsv CovertToCSV�� 0 write_to_file  �� 0 writecsv writeCSV
�� .aevtoappnull  �   � ****0 ��g����56���� 0 parsecsv parseCSV�� ��7�� 7  ���� 0 pstrrowtext pstrRowText��  5 �������� 0 pstrrowtext pstrRowText�� 0 od  �� 0 
parsedtext 
parsedText6 ��u����
�� 
txdl
�� 
cobj
�� 
citm�� ')�,�lvE[�k/E�Z[�l/)�,FZO��-E�O�)�,FO�1 �������89���� 0 coverttocsv CovertToCSV�� ��:�� :  ���� 0 mylist myList��  8 �������� 0 mylist myList�� 0 thedata theData�� 0 i  9 ������������
�� 
ascr
�� 
txdl
�� 
cobj
�� 
nmbr�� .��%E�O���,FO k��-�,Ekh ���/%�%E�[OY��O�2 �������;<��� 0 write_to_file  �� �~=�~ =  �}�|�{�} 0 	this_data  �| 0 target_file  �{ 0 append_data  ��  ; �z�y�x�w�z 0 	this_data  �y 0 target_file  �x 0 append_data  �w 0 open_target_file  < �v�u�t�s�r�q�p�o�n�m�l�k�j�i
�v 
TEXT
�u 
file
�t 
perm
�s .rdwropenshor       file
�r 
set2
�q .rdwrseofnull���     ****
�p 
refn
�o 
wrat
�n rdwreof �m 
�l .rdwrwritnull���     ****
�k .rdwrclosnull���     ****�j  �i  � Z <��&E�O*�/�el E�O�f  ��jl Y hO����� 
O�j OeW X   *�/j W X  hOf3 �h�g�f>?�e�h 0 writecsv writeCSV�g �d@�d @  �c�c  0 outcsvtextlist outCSVtextList�f  > �b�a�b  0 outcsvtextlist outCSVtextList�a 0 thedata theData? �`�_�^�` 0 coverttocsv CovertToCSV�_ 0 pathinputfile pathInputFile�^ 0 write_to_file  �e *�k+  E�O*��fm+ OP4 �]A�\�[BC�Z
�] .aevtoappnull  �   � ****A k    DD  EE  FF  4GG  LHH  YII  |JJ  �KK  �LL X�Y�Y  �\  �[  B �X�X 0 ipar iParC *�W �V�U =�T @�S�R�Q�P�O c�N�M�L�K�J�I�H�G�F�E ��D�C�B�A
�@�?�>�=.<�<�;�W  0 outcsvtextlist outCSVtextList�V 0 fileext fileExt
�U 
prmp
�T 
ftyp�S 
�R .sysostdfalis    ��� null�Q 0 pathinputfile pathInputFile
�P .rdwrread****        ****�O "0 strfilecontents strFileContents
�N .sysostflalis    ��� null
�M 
psxp�L 0 targetfolder targetFolder
�K 
cpar�J "0 parfilecontents parFileContents
�I .corecnte****       ****�H 0 numrows numRows
�G 
cobj
�F 
nmbr�E 0 lstrow lstRow
�D 
ctxt�C 0 parsecsv parseCSV�B  0 lstfieldsinrow lstFieldsinRow�A 0 
strcsvname 
strCSVName�@ 0 mystring myString
�? .sysoexecTEXT���     TEXT�> 0 filesstring filesString
�= 
leng
�< .ascrcmnt****      � ****�; 0 writecsv writeCSV�ZjvE�O�E�O*����� E�O�j 
E�O*��l �,E�O�a -E` O_ j E` O �l_ a -a ,Ekh  _ a �/E` O_ a   Y hO*_ a &k+ E` O_ a k/E` Oa �%a %a %_ %a %�%a  %a !%E` "O_ "j #E` $O_ $a %,j _ a &%E` Y -_ $j $_ a '%E` O_ "j (O_ $a %,j (Y hO_ �6FOP[OY�AO*�k+ )ascr  ��ޭ