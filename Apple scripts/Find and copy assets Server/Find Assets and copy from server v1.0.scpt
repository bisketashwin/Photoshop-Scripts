FasdUAS 1.101.10   ��   ��    k             l     ��  ��      Working Script     � 	 	    W o r k i n g   S c r i p t   
  
 l     ��  ��    d ^ You should have connected to Server folder that you are trying to coonect through this script     �   �   Y o u   s h o u l d   h a v e   c o n n e c t e d   t o   S e r v e r   f o l d e r   t h a t   y o u   a r e   t r y i n g   t o   c o o n e c t   t h r o u g h   t h i s   s c r i p t      l     ��  ��    � � This script smees to work fine throws error when file names or its parebt  folders have the special charecters apart from underscore _ or hiphen -     �  &   T h i s   s c r i p t   s m e e s   t o   w o r k   f i n e   t h r o w s   e r r o r   w h e n   f i l e   n a m e s   o r   i t s   p a r e b t     f o l d e r s   h a v e   t h e   s p e c i a l   c h a r e c t e r s   a p a r t   f r o m   u n d e r s c o r e   _   o r   h i p h e n   -      l     ��������  ��  ��        p         ������ 0 serversource serverSource��        p         ������ 
0 target  ��        l     ��������  ��  ��        l     ��   !��     M Gset serverSource to "/Volumes/Farm_Art/Local-vendors/LaughingDots/2017"    ! � " " � s e t   s e r v e r S o u r c e   t o   " / V o l u m e s / F a r m _ A r t / L o c a l - v e n d o r s / L a u g h i n g D o t s / 2 0 1 7 "   # $ # l     �� % &��   % C =set serverSource to "/Volumes/Farm_Art/Local-vendors/Pixalot"    & � ' ' z s e t   s e r v e r S o u r c e   t o   " / V o l u m e s / F a r m _ A r t / L o c a l - v e n d o r s / P i x a l o t " $  ( ) ( l     *���� * r      + , + m      - - � . . ^ / V o l u m e s / F a r m _ A r t / V e n d o r S u b m i s s i o n / s t a r a r t _ 2 0 1 7 , o      ���� 0 serversource serverSource��  ��   )  / 0 / l     ��������  ��  ��   0  1 2 1 l     ��������  ��  ��   2  3 4 3 l     ��������  ��  ��   4  5 6 5 l     �� 7 8��   7 E ?set keyWords to {"horse_xdw_darkworld", "wolf_xdw_dreamwalker"}    8 � 9 9 ~ s e t   k e y W o r d s   t o   { " h o r s e _ x d w _ d a r k w o r l d " ,   " w o l f _ x d w _ d r e a m w a l k e r " } 6  : ; : l     ��������  ��  ��   ;  < = < l    >���� > r     ? @ ? J     A A  B C B m     D D � E E  x d w _ e y e f r u i t C  F G F m     H H � I I  x d w _ s t a r g l o w G  J K J m     L L � M M  x d w _ o d d s p r o u t s K  N O N m     P P � Q Q " x d w _ r i n g p i n e a p p l e O  R S R m    	 T T � U U   x d w _ l i g h t o r b l i l y S  V W V m   	 
 X X � Y Y  x d w _ n i g h t q u e e n W  Z�� Z m   
  [ [ � \ \ & x d w _ n i g h t g l o w f l o w e r��   @ o      ���� 0 keywords keyWords��  ��   =  ] ^ ] l     ��������  ��  ��   ^  _ ` _ l     ��������  ��  ��   `  a b a l     ��������  ��  ��   b  c d c l     ��������  ��  ��   d  e f e l    g���� g r     h i h m     j j � k k 
 D r e a m i o      ���� 0 
foldername 
folderName��  ��   f  l m l l     ��������  ��  ��   m  n o n l     ��������  ��  ��   o  p q p l    r���� r r     s t s m     u u � v v 
 * . f l a t o      ���� 0 fileext fileExt��  ��   q  w x w l     �� y z��   y   set fileExt to "_full.png"    z � { { 4 s e t   f i l e E x t   t o   " _ f u l l . p n g " x  | } | l     �� ~ ��   ~ $ set fileExt to "_icon_200.png"     � � � < s e t   f i l e E x t   t o   " _ i c o n _ 2 0 0 . p n g " }  � � � l    � � � � r     � � � m     � � � � �   � o      ���� 0 fileext fileExt �   any format    � � � �    a n y   f o r m a t �  � � � l     ��������  ��  ��   �  � � � l   % ����� � r    % � � � b    ! � � � m     � � � � � ` / U s e r s / a n a n d i h a l l i / D o c u m e n t s / 0 1 _ W o r k / D r e a m w o r l d / � o     ���� 0 
foldername 
folderName � o      ���� 
0 target  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Create search string    � � � � *   C r e a t e   s e a r c h   s t r i n g �  � � � l     �� � ���   � / ) This string will be used in shell script    � � � � R   T h i s   s t r i n g   w i l l   b e   u s e d   i n   s h e l l   s c r i p t �  � � � l     �� � ���   � � � example   find /Volumes/Farm_Art/Local-vendors/LaughingDots/2017 \\( -name 'horse_xdw_darkworld*.fla' -o -name 'wolf_xdw_dreamwalker*.fla' \\) -type f    � � � �.   e x a m p l e       f i n d   / V o l u m e s / F a r m _ A r t / L o c a l - v e n d o r s / L a u g h i n g D o t s / 2 0 1 7   \ \ (   - n a m e   ' h o r s e _ x d w _ d a r k w o r l d * . f l a '   - o   - n a m e   ' w o l f _ x d w _ d r e a m w a l k e r * . f l a '   \ \ )   - t y p e   f �  � � � l     ��������  ��  ��   �  � � � l  & - ����� � r   & - � � � m   & ) � � � � �    \ (   � o      ���� 0 mystring myString��  ��   �  � � � l     ��������  ��  ��   �  � � � l  . 3 ����� � r   . 3 � � � m   . /����   � o      ���� 0 i  ��  ��   �  � � � l  4 � ����� � X   4 � ��� � � k   H � � �  � � � l  H H��������  ��  ��   �  � � � Z   H i � ��� � � A   H M � � � o   H K���� 0 i   � m   K L����  � r   P [ � � � b   P W � � � o   P S���� 0 mystring myString � m   S V � � � � �    - n a m e   � o      ���� 0 mystring myString��   � r   ^ i � � � b   ^ e � � � o   ^ a���� 0 mystring myString � m   a d � � � � �    - o   - n a m e   � o      ���� 0 mystring myString �  � � � r   j � � � � b   j } � � � b   j y � � � b   j w � � � b   j s � � � b   j q � � � o   j m���� 0 mystring myString � m   m p � � � � �  ' � o   q r���� 0 elem   � m   s v � � � � �  * � o   w x���� 0 fileext fileExt � m   y | � � � � �  ' � o      ���� 0 mystring myString �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � [   � � � � � o   � ����� 0 i   � m   � �����  � o      ���� 0 i   �  ��� � l  � ���������  ��  ��  ��  �� 0 elem   � o   7 8���� 0 keywords keyWords��  ��   �  � � � l     ��������  ��  ��   �  � � � l  � � ����� � r   � � � � � b   � � � � � o   � ����� 0 mystring myString � m   � � � � � � �    \ ) � o      ���� 0 mystring myString��  ��   �  � � � l     ����~��  �  �~   �  � � � l  � � �}�|  r   � � b   � � b   � � b   � � m   � �		 �

 
 f i n d   o   � ��{�{ 0 serversource serverSource o   � ��z�z 0 mystring myString m   � � �    - t y p e   f o      �y�y 0 mystring myString�}  �|   �  l     �x�w�v�x  �w  �v    l     �u�u   "  creating search string ends    � 8   c r e a t i n g   s e a r c h   s t r i n g   e n d s  l     �t�s�r�t  �s  �r    l     �q�p�o�q  �p  �o    l     �n�n   P J Gets all the file locations Based on Keyword search satring created above    � �   G e t s   a l l   t h e   f i l e   l o c a t i o n s   B a s e d   o n   K e y w o r d   s e a r c h   s a t r i n g   c r e a t e d   a b o v e  l  � ��m�l r   � � !  I  � ��k"�j
�k .sysoexecTEXT���     TEXT" o   � ��i�i 0 mystring myString�j  ! o      �h�h 0 foldersstring foldersString�m  �l   #$# l     �g�f�e�g  �f  �e  $ %&% l     �d�c�b�d  �c  �b  & '(' l     �a)*�a  ) 5 / Converts Text string recived by find to a list   * �++ ^   C o n v e r t s   T e x t   s t r i n g   r e c i v e d   b y   f i n d   t o   a   l i s t( ,-, l  � �.�`�_. r   � �/0/ n   � �121 2  � ��^
�^ 
cpar2 o   � ��]�] 0 foldersstring foldersString0 o      �\�\ 0 folders  �`  �_  - 343 l     �[�Z�Y�[  �Z  �Y  4 565 l     �X�W�V�X  �W  �V  6 787 p      99 �U�T�U 0 keywords keyWords�T  8 :;: p      << �S�R�S 0 folders  �R  ; =>= p      ?? �Q�P�Q 0 folderstocopy FoldersToCopy�P  > @A@ l     �O�N�M�O  �N  �M  A BCB l     �LDE�L  D  createTextFile(folders)   E �FF . c r e a t e T e x t F i l e ( f o l d e r s )C GHG l  � �I�K�JI r   � �JKJ o   � ��I�I 0 folders  K o      �H�H 0 folderstocopy FoldersToCopy�K  �J  H LML l     �G�F�E�G  �F  �E  M NON l     �DPQ�D  P 7 1 Above files list is shown in a selectable window   Q �RR b   A b o v e   f i l e s   l i s t   i s   s h o w n   i n   a   s e l e c t a b l e   w i n d o wO STS l     �CUV�C  U # if length of FoldersToCopy >0   V �WW : i f   l e n g t h   o f   F o l d e r s T o C o p y   > 0T XYX l     �B�A�@�B  �A  �@  Y Z[Z i     \]\ I      �?^�>�? 0 copyfolders copyFolders^ _�=_ o      �<�< $0 thechosenfolders theChosenFolders�=  �>  ] k     0`` aba X     .c�;dc k    )ee fgf l   �:hi�:  h  display dialog folder   i �jj * d i s p l a y   d i a l o g   f o l d e rg klk l   �9mn�9  m  exit repeat   n �oo  e x i t   r e p e a tl pqp l   �8rs�8  r $ Assing Folder to source folder   s �tt < A s s i n g   F o l d e r   t o   s o u r c e   f o l d e rq uvu l   �7wx�7  w ? 9set cur_source to "'" & serverSource & "/" & folder & "'"   x �yy r s e t   c u r _ s o u r c e   t o   " ' "   &   s e r v e r S o u r c e   &   " / "   &   f o l d e r   &   " ' "v z{z r    |}| b    ~~ b    ��� m    �� ���  '� 1    �6
�6 
asdr m    �� ���  '} o      �5�5 0 
cur_source  { ��� l   �4���4  �   Copying happens here   � ��� *   C o p y i n g   h a p p e n s   h e r e� ��� I   '�3��2
�3 .sysoexecTEXT���     TEXT� b    #��� b    !��� b    ��� b    ��� b    ��� m    �� ���  c p   - R f v   /� o    �1�1 0 
cur_source  � m    �� ���   � m    �� ���  '� o     �0�0 
0 target  � m   ! "�� ���  '�2  � ��� l  ( (�/���/  � < 6 Only use exit while testing to avoid complete looping   � ��� l   O n l y   u s e   e x i t   w h i l e   t e s t i n g   t o   a v o i d   c o m p l e t e   l o o p i n g� ��.� l  ( (�-�,�+�-  �,  �+  �.  
�; 
asdrd o    �*�* $0 thechosenfolders theChosenFoldersb ��)� l  / /�(�'�&�(  �'  �&  �)  [ ��� l     �%�$�#�%  �$  �#  � ��� l  � ���"�!� r   � ���� n   � ���� 1   � �� 
�  
leng� o   � ��� 0 folderstocopy FoldersToCopy� o      �� 0 n  �"  �!  � ��� l  ����� Z   ������ ?   � ���� o   � ��� 0 n  � m   � ���  � k   ��� ��� r   � ���� I  � ����
� .gtqpchltns    @   @ ns  � o   � ��� 0 folderstocopy FoldersToCopy� ���
� 
prmp� m   � ��� ��� ( C h o o s e   f i l e s   t o   c o p y� ���
� 
mlsl� m   � ��
� boovtrue�  � o      �� $0 thechosenfolders theChosenFolders� ��� I   ����� 0 copyfolders copyFolders� ��� o   ��� $0 thechosenfolders theChosenFolders�  �  �  �  � I ���

� .sysodlogaskr        TEXT� m  �� ��� 4 N o   f i l e s   m a t c h   y o u r   s e a r c h�
  �  �  �       �	����	  � ��� 0 copyfolders copyFolders
� .aevtoappnull  �   � ****� �]������ 0 copyfolders copyFolders� ��� �  �� $0 thechosenfolders theChosenFolders�  � � �����  $0 thechosenfolders theChosenFolders
�� 
asdr�� 0 
cur_source  � ����������������
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 
0 target  
�� .sysoexecTEXT���     TEXT� 1 -�[��l kh �%�%E�O�%�%�%�%�%j 
OP[OY��OP� �����������
�� .aevtoappnull  �   � ****� k    ��  (��  <��  e��  p��  ���  ���  ���  ���  ���  ���  ��� �� ,�� G�� ��� �����  ��  ��  � ���� 0 elem  � 0 -�� D H L P T X [���� j�� u�� � ��� ����������� � � � � � �	�������������������������������� 0 serversource serverSource�� �� 0 keywords keyWords�� 0 
foldername 
folderName�� 0 fileext fileExt�� 
0 target  �� 0 mystring myString�� 0 i  
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� .sysoexecTEXT���     TEXT�� 0 foldersstring foldersString
�� 
cpar�� 0 folders  �� 0 folderstocopy FoldersToCopy
�� 
leng�� 0 n  
�� 
prmp
�� 
mlsl�� 
�� .gtqpchltns    @   @ ns  �� $0 thechosenfolders theChosenFolders�� 0 copyfolders copyFolders
�� .sysodlogaskr        TEXT���E�O��������vE�O�E�O�E�O�E�Oa �%E` Oa E` OjE` O ]�[a a l kh  _ k _ a %E` Y _ a %E` O_ a %�%a %�%a %E` O_ kE` OP[OY��O_ a %E` Oa �%_ %a %E` O_ j  E` !O_ !a "-E` #O_ #E` $O_ $a %,E` &O_ &j %_ $a 'a (a )ea * +E` ,O*_ ,k+ -Y 	a .j / ascr  ��ޭ