FasdUAS 1.101.10   ��   ��    k             l     ��  ��     Get the folder     � 	 	  G e t   t h e   f o l d e r   
  
 l     ����  r         c     	    l     ����  I    ���� 
�� .sysostflalis    ��� null��    �� ��
�� 
prmp  m       �   � S e l e c t   t h e   f o l d e r   t h a t   c o n t a i n s   t h e   f i l e s   t o   c o p y .   I n   t h e   n e x t   s t e p   y o u ' l l   b e   a b l e   t o   s e l e c t   t h e   f i l e s   t o   c o p y .��  ��  ��    m    ��
�� 
ctxt  o      ���� 0 	thefolder 	theFolder��  ��        l     ��������  ��  ��        l     ��  ��    #  Read the files in the folder     �   :   R e a d   t h e   f i l e s   i n   t h e   f o l d e r      l   : ����  O    :   !   k    9 " "  # $ # r     % & % n     ' ( ' 2   ��
�� 
cobj ( 4    �� )
�� 
cfol ) o    ���� 0 	thefolder 	theFolder & o      ���� 0 theitems theItems $  * + * r     , - , J    ����   - o      ���� 0 thenames theNames +  .�� . X    9 /�� 0 / r   . 4 1 2 1 n   . 1 3 4 3 1   / 1��
�� 
pnam 4 o   . /���� 0 anitem anItem 2 n       5 6 5  ;   2 3 6 o   1 2���� 0 thenames theNames�� 0 anitem anItem 0 o   ! "���� 0 theitems theItems��   ! m     7 7�                                                                                  MACS  alis    t  Macintosh HD               ��n�H+     !
Finder.app                                                      ����O        ����  	                CoreServices    ��!f      ��o�       !         6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��     8 9 8 l     ��������  ��  ��   9  : ; : l     �� < =��   <   Create a new text file    = � > > .   C r e a t e   a   n e w   t e x t   f i l e ;  ? @ ? l     �� A B��   A ) # set theNewFile to choose file name    B � C C F   s e t   t h e N e w F i l e   t o   c h o o s e   f i l e   n a m e @  D E D l     ��������  ��  ��   E  F G F l  ; X H���� H r   ; X I J I c   ; T K L K l  ; R M���� M I  ; R���� N
�� .sysonwflfile    ��� null��   N �� O P
�� 
prmt O m   = > Q Q � R R  S a v e   A s   F i l e P �� S T
�� 
dfnm S m   ? B U U � V V  F o r S V N T �� W��
�� 
dflc W I  E L�� X��
�� .earsffdralis        afdr X m   E H��
�� afdrdesk��  ��  ��  ��   L m   R S��
�� 
ctxt J o      ���� 0 
thenewfile 
theNewFile��  ��   G  Y Z Y l  Y s [���� [ Z  Y s \ ]���� \ H   Y a ^ ^ D   Y ` _ ` _ o   Y \���� 0 
thenewfile 
theNewFile ` m   \ _ a a � b b  . t x t ] r   d o c d c b   d k e f e o   d g���� 0 
thenewfile 
theNewFile f m   g j g g � h h  . t x t d o      ���� 0 
thenewfile 
theNewFile��  ��  ��  ��   Z  i j i l     ��������  ��  ��   j  k l k l  t y m���� m r   t y n o n o   t u���� 0 thenames theNames o o      ���� 0 mylist myList��  ��   l  p q p l     ��������  ��  ��   q  r s r l     �� t u��   t #  Conver the list in to string    u � v v :   C o n v e r   t h e   l i s t   i n   t o   s t r i n g s  w x w l  z � y���� y r   z � z { z m   z } | | � } }   { o      ���� 0 final Final��  ��   x  ~  ~ l  � � ����� � Z   � � � ����� � ?   � � � � � l  � � ����� � e   � � � � I  � ��� ���
�� .corecnte****       **** � o   � ����� 0 mylist myList��  ��  ��   � m   � �����  � X   � � ��� � � k   � � � �  � � � l  � ��� � ���   � _ Yset Final to Final & theItem & ", " --For comma seperated use "," and for new line use ""    � � � � � s e t   F i n a l   t o   F i n a l   &   t h e I t e m   &   " ,   "   - - F o r   c o m m a   s e p e r a t e d   u s e   " , "   a n d   f o r   n e w   l i n e   u s e   " " �  ��� � r   � � � � � b   � � � � � b   � � � � � o   � ����� 0 final Final � o   � ����� 0 theitem theItem � m   � � � � � � �  
 � o      ���� 0 final Final��  �� 0 theitem theItem � o   � ����� 0 mylist myList��  ��  ��  ��     � � � l     ��������  ��  ��   �  � � � l  � � ����� � r   � � � � � o   � ����� 0 final Final � o      ���� 0 dataout dataOut��  ��   �  � � � l     ��������  ��  ��   �  � � � l  � � ����� � Q   � � � � � � r   � � � � � l  � � ����� � I  � ��� � �
�� .rdwropenshor       file � o   � ����� 0 
thenewfile 
theNewFile � �� ���
�� 
perm � m   � ���
�� boovtrue��  ��  ��   � o      ���� 0 fileref fileRef � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 errmsg errMsg � �� ���
�� 
errn � o      ���� 0 errnum errNum��   � I  � ��� ���
�� .sysodlogaskr        TEXT � b   � � � � � b   � � � � � l  � � ����� � c   � � � � � b   � � � � � m   � � � � � � � > O p e n   f o r   A c c e s s ,   E r r o r   N u m b e r :   � o   � ����� 0 errnum errNum � m   � ���
�� 
TEXT��  ��   � o   � ���
�� 
ret  � o   � ����� 0 errmsg errMsg��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  � � ���� � I  � ��~ � �
�~ .rdwrseofnull���     **** � o   � ��}�} 0 fileref fileRef � �| ��{
�| 
set2 � m   � ��z�z  �{  ��  �   �  � � � l     �y�x�w�y  �x  �w   �  � � � l  �$ ��v�u � Q   �$ � � � � I  �	�t � �
�t .rdwrwritnull���     **** � o   � ��s�s 0 dataout dataOut � �r ��q
�r 
refn � o  �p�p 0 fileref fileRef�q   � R      �o � �
�o .ascrerr ****      � **** � o      �n�n 0 errmsg errMsg � �m ��l
�m 
errn � o      �k�k 0 errnum errNum�l   � I $�j ��i
�j .sysodlogaskr        TEXT � b    � � � b   � � � l  ��h�g � c   � � � b   � � � m   � � � � � * W r i t e ,   E r r o r   N u m b e r :   � o  �f�f 0 errnum errNum � m  �e
�e 
TEXT�h  �g   � o  �d
�d 
ret  � o  �c�c 0 errmsg errMsg�i  �v  �u   �  � � � l     �b�a�`�b  �a  �`   �  � � � l %6 ��_�^ � I %6�] � �
�] .rdwrseofnull���     **** � o  %(�\�\ 0 fileref fileRef � �[ ��Z
�[ 
set2 � l +2 ��Y�X � n  +2 � � � 1  .2�W
�W 
leng � o  +.�V�V 0 dataout dataOut�Y  �X  �Z  �_  �^   �  � � � l     �U�T�S�U  �T  �S   �  � � � l 7\ ��R�Q � Q  7\ � � � � I :A�P ��O
�P .rdwrclosnull���     **** � o  :=�N�N 0 fileref fileRef�O   � R      �M � �
�M .ascrerr ****      � **** � o      �L�L 0 errmsg errMsg � �K ��J
�K 
errn � o      �I�I 0 errnum errNum�J   � I I\�H ��G
�H .sysodlogaskr        TEXT � b  IX � � � b  IV � � � l IR ��F�E � c  IR � � � b  IN � � � m  IL   � * C l o s e ,   E r r o r   N u m b e r :   � o  LM�D�D 0 errnum errNum � m  NQ�C
�C 
TEXT�F  �E   � o  RU�B
�B 
ret  � o  VW�A�A 0 errmsg errMsg�G  �R  �Q   �  l     �@�?�>�@  �?  �>   �= l ]d�<�; I ]d�:�9
�: .sysodlogaskr        TEXT m  ]` �  D o n e�9  �<  �;  �=       �8	
�8  	 �7
�7 .aevtoappnull  �   � ****
 �6�5�4�3
�6 .aevtoappnull  �   � **** k    d  
    F  Y  k  w  ~  �  �  �  �  �  � �2�2  �5  �4   �1�0�/�.�1 0 anitem anItem�0 0 theitem theItem�/ 0 errmsg errMsg�. 0 errnum errNum 0�- �,�+�* 7�)�(�'�&�%�$�#�" Q�! U� ����� a g� |� ������ �������� ��� 
�- 
prmp
�, .sysostflalis    ��� null
�+ 
ctxt�* 0 	thefolder 	theFolder
�) 
cfol
�( 
cobj�' 0 theitems theItems�& 0 thenames theNames
�% 
kocl
�$ .corecnte****       ****
�# 
pnam
�" 
prmt
�! 
dfnm
�  
dflc
� afdrdesk
� .earsffdralis        afdr� 
� .sysonwflfile    ��� null� 0 
thenewfile 
theNewFile� 0 mylist myList� 0 final Final� 0 dataout dataOut
� 
perm
� .rdwropenshor       file� 0 fileref fileRef� 0 errmsg errMsg �
�	�
�
 
errn�	 0 errnum errNum�  
� 
TEXT
� 
ret 
� .sysodlogaskr        TEXT
� 
set2
� .rdwrseofnull���     ****
� 
refn
� .rdwrwritnull���     ****
� 
leng
� .rdwrclosnull���     ****�3e*��l �&E�O� +*��/�-E�OjvE�O �[��l kh  ��,�6F[OY��UO*���a a a j a  �&E` O_ a  _ a %E` Y hO�E` Oa E` O_ j k ) #_ [��l kh _ �%a %E` [OY��Y hO_ E` O _ a el E`  W X ! "a #�%a $&_ %%�%j &O_  a 'jl (O _ a )_  l *W X ! "a +�%a $&_ %%�%j &O_  a '_ a ,,l (O _  j -W X ! "a .�%a $&_ %%�%j &Oa /j & ascr  ��ޭ