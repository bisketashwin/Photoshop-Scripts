FasdUAS 1.101.10   ��   ��    k             l     ��  ��    P Jtell application "Finder" to return POSIX path of ((choose file) as alias)     � 	 	 � t e l l   a p p l i c a t i o n   " F i n d e r "   t o   r e t u r n   P O S I X   p a t h   o f   ( ( c h o o s e   f i l e )   a s   a l i a s )   
  
 l     ��������  ��  ��        l     ����  r         l     ����  I    ������
�� .sysostdfalis    ��� null��  ��  ��  ��    o      ���� 0 itemref itemRef��  ��        l     ��������  ��  ��        l    ����  r        n        1    ��
�� 
psxp  l    ����  c        o    	���� 0 itemref itemRef  m   	 
��
�� 
TEXT��  ��    o      ���� 0 
filetoread 
fileToRead��  ��        l     ��������  ��  ��       !   l     �� " #��   "  Get the folder    # � $ $  G e t   t h e   f o l d e r !  % & % l    '���� ' r     ( ) ( c     * + * l    ,���� , I   ���� -
�� .sysostflalis    ��� null��   - �� .��
�� 
prmp . m     / / � 0 0 � S e l e c t   t h e   f o l d e r   t h a t   c o n t a i n s   t h e   f i l e s   t o   c o p y .   I n   t h e   n e x t   s t e p   y o u ' l l   b e   a b l e   t o   s e l e c t   t h e   f i l e s   t o   c o p y .��  ��  ��   + m    ��
�� 
ctxt ) o      ���� 0 	thefolder 	theFolder��  ��   &  1 2 1 l     ��������  ��  ��   2  3 4 3 l     ��������  ��  ��   4  5 6 5 l     ��������  ��  ��   6  7 8 7 l     �� 9 :��   9 8 2Get the path to de destination folder of the files    : � ; ; d G e t   t h e   p a t h   t o   d e   d e s t i n a t i o n   f o l d e r   o f   t h e   f i l e s 8  < = < l   ' >���� > r    ' ? @ ? c    % A B A l   # C���� C I   #���� D
�� .sysostflalis    ��� null��   D �� E��
�� 
prmp E m     F F � G G L S e l e c t   t h e   D e s t i n a t i o n   f o l d e r   t o   c o p y .��  ��  ��   B m   # $��
�� 
ctxt @ o      ���� 0 destination_folder  ��  ��   =  H I H l     ��������  ��  ��   I  J K J l     ��������  ��  ��   K  L M L l  ( , N���� N r   ( , O P O J   ( *����   P o      ���� 0 listofshows listOfShows��  ��   M  Q R Q l     �� S T��   S \ Vset Shows to paragraphs of (read POSIX file "/Users/anandihalli/Desktop/ForSVN_1.txt")    T � U U � s e t   S h o w s   t o   p a r a g r a p h s   o f   ( r e a d   P O S I X   f i l e   " / U s e r s / a n a n d i h a l l i / D e s k t o p / F o r S V N _ 1 . t x t " ) R  V W V l  - ; X���� X r   - ; Y Z Y n   - 7 [ \ [ 2  5 7��
�� 
cpar \ l  - 5 ]���� ] I  - 5�� ^��
�� .rdwrread****        **** ^ 4   - 1�� _
�� 
psxf _ o   / 0���� 0 
filetoread 
fileToRead��  ��  ��   Z o      ���� 0 shows Shows��  ��   W  ` a ` l  < i b���� b X   < i c�� d c Z   R d e f���� e ?  R Y g h g n   R W i j i 1   S W��
�� 
leng j o   R S���� 0 nextline nextLine h m   W X����   f s   \ ` k l k o   \ ]���� 0 nextline nextLine l l      m���� m n       n o n  ;   ^ _ o o   ] ^���� 0 listofshows listOfShows��  ��  ��  ��  �� 0 nextline nextLine d o   ? B���� 0 shows Shows��  ��   a  p q p l  j � r���� r I  j ��� s t
�� .gtqpchltns    @   @ ns   s o   j k���� 0 listofshows listOfShows t �� u v
�� 
prmp u m   l o w w � x x   S e l e c t   t h e   f i l e s v �� y z
�� 
okbt y m   r u { { � | |  O K z �� } ~
�� 
cnbt } m   x {   � � �  C a n c e l ~ �� ���
�� 
mlsl � m   ~ ��
�� boovtrue��  ��  ��   q  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  � � ����� � O   � � � � � k   � � � �  � � � l  � � � � � � Z  � � � ����� � =  � � � � �  g   � � � m   � ���
�� boovfals � R   � ����� �
�� .ascrerr ****      � ****��   � �� ���
�� 
errn � m   � ���������  ��  ��   �   cancel    � � � �    c a n c e l �  ��� � r   � � � � �  g   � � � o      ���� 0 
thechoices 
theChoices��   � 1   � ���
�� 
rslt��  ��   �  � � � l     ����~��  �  �~   �  � � � l  � � ��}�| � Z   � � � ��{�z � @  � � � � � l  � � ��y�x � I  � ��w ��v
�w .corecnte****       **** � o   � ��u�u 0 
thechoices 
theChoices�v  �y  �x   � m   � ��t�t  � X   � � ��s � � k   � � � �  � � � r   � � � � � c   � � � � � l  � � ��r�q � b   � � � � � o   � ��p�p 0 	thefolder 	theFolder � o   � ��o�o 0 achoice aChoice�r  �q   � m   � ��n
�n 
alis � o      �m�m 0 thisitem thisItem �  � � � l  � ��l � ��l   � !  do something with thisItem    � � � � 6   d o   s o m e t h i n g   w i t h   t h i s I t e m �  ��k � O  � � � � � I  � ��j � �
�j .coreclon****      � **** � o   � ��i�i 0 thisitem thisItem � �h � �
�h 
insh � o   � ��g�g 0 destination_folder   � �f ��e
�f 
alrp � m   � ��d
�d boovtrue�e   � m   � � � ��                                                                                  MACS  alis    t  Macintosh HD               ��n�H+     !
Finder.app                                                      ����O        ����  	                CoreServices    ��!f      ��o�       !         6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �k  �s 0 achoice aChoice � o   � ��c�c 0 
thechoices 
theChoices�{  �z  �}  �|   �  ��b � l     �a�`�_�a  �`  �_  �b       �^ � ��^   � �]
�] .aevtoappnull  �   � **** � �\ ��[�Z � ��Y
�\ .aevtoappnull  �   � **** � k     � � �   � �   � �  % � �  < � �  L � �  V � �  ` � �  p � �  � � �  ��X�X  �[  �Z   � �W�V�W 0 nextline nextLine�V 0 achoice aChoice � (�U�T�S�R�Q�P /�O�N�M F�L�K�J�I�H�G�F�E�D�C w�B {�A �@�?�>�=�<�;�:�9�8 ��7�6�5�4
�U .sysostdfalis    ��� null�T 0 itemref itemRef
�S 
TEXT
�R 
psxp�Q 0 
filetoread 
fileToRead
�P 
prmp
�O .sysostflalis    ��� null
�N 
ctxt�M 0 	thefolder 	theFolder�L 0 destination_folder  �K 0 listofshows listOfShows
�J 
psxf
�I .rdwrread****        ****
�H 
cpar�G 0 shows Shows
�F 
kocl
�E 
cobj
�D .corecnte****       ****
�C 
leng
�B 
okbt
�A 
cnbt
�@ 
mlsl�? 
�> .gtqpchltns    @   @ ns  
�= 
rslt
�< 
errn�;���: 0 
thechoices 
theChoices
�9 
alis�8 0 thisitem thisItem
�7 
insh
�6 
alrp�5 
�4 .coreclon****      � ****�Y �*j  E�O��&�,E�O*��l �&E�O*��l �&E�OjvE�O*��/j �-E` O ,_ [a a l kh  �a ,j 	��6GY h[OY��O��a a a a a a ea  O_  *f  )a a lhY hO*E`  UO_  j k D >_  [a a l kh ɡ%a !&E` "Oa # _ "a $�a %ea & 'U[OY��Y hascr  ��ޭ