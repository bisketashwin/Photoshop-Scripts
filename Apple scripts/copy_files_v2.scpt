FasdUAS 1.101.10   ��   ��    l      ����  i         I     ������
�� .aevtoappnull  �   � ****��  ��    k     �     	  l     �� 
 ��   
  Get the folder     �    G e t   t h e   f o l d e r 	     r         c     	    l     ����  I    ���� 
�� .sysostflalis    ��� null��    �� ��
�� 
prmp  m       �   � S e l e c t   t h e   f o l d e r   t h a t   c o n t a i n s   t h e   f i l e s   t o   c o p y .   I n   t h e   n e x t   s t e p   y o u ' l l   b e   a b l e   t o   s e l e c t   t h e   f i l e s   t o   c o p y .��  ��  ��    m    ��
�� 
ctxt  o      ���� 0 	thefolder 	theFolder      l   ��������  ��  ��        l   ��  ��    8 2Get the path to de destination folder of the files     �   d G e t   t h e   p a t h   t o   d e   d e s t i n a t i o n   f o l d e r   o f   t h e   f i l e s       r     ! " ! c     # $ # l    %���� % I   ���� &
�� .sysostflalis    ��� null��   & �� '��
�� 
prmp ' m     ( ( � ) ) L S e l e c t   t h e   D e s t i n a t i o n   f o l d e r   t o   c o p y .��  ��  ��   $ m    ��
�� 
ctxt " o      ���� 0 destination_folder      * + * l   ��������  ��  ��   +  , - , l   �� . /��   . 1 +Generate the list of files inside theFolder    / � 0 0 V G e n e r a t e   t h e   l i s t   o f   f i l e s   i n s i d e   t h e F o l d e r -  1 2 1 r     3 4 3 J    ����   4 o      ���� 0 listofshows listOfShows 2  5 6 5 r    ( 7 8 7 n    & 9 : 9 2  $ &��
�� 
cpar : l   $ ;���� ; I   $���� <
�� .sysostdfalis    ��� null��   < �� =��
�� 
prmp = m      > > � ? ? b S e l e c t   t h e   t e x t   f i l e   t h a t   c o n t a i n s   l i s t   o f   f i l e s .��  ��  ��   8 o      ���� 0 shows Shows 6  @ A @ X   ) N B�� C B Z   9 I D E���� D ?  9 > F G F n   9 < H I H 1   : <��
�� 
leng I o   9 :���� 0 nextline nextLine G m   < =����   E s   A E J K J o   A B���� 0 nextline nextLine K l      L���� L n       M N M  ;   C D N o   B C���� 0 listofshows listOfShows��  ��  ��  ��  �� 0 nextline nextLine C o   , -���� 0 shows Shows A  O P O I  O T�� Q��
�� .gtqpchltns    @   @ ns   Q o   O P���� 0 listofshows listOfShows��   P  R S R l  U U��������  ��  ��   S  T U T l  U U�� V W��   V + %Let user select the files of the list    W � X X J L e t   u s e r   s e l e c t   t h e   f i l e s   o f   t h e   l i s t U  Y Z Y I  U r�� [ \
�� .gtqpchltns    @   @ ns   [ o   U X���� 0 thenames theNames \ �� ] ^
�� 
prmp ] m   Y \ _ _ � ` `   S e l e c t   t h e   f i l e s ^ �� a b
�� 
okbt a m   _ b c c � d d  O K b �� e f
�� 
cnbt e m   e h g g � h h  C a n c e l f �� i��
�� 
mlsl i m   k l��
�� boovtrue��   Z  j k j l  s s��������  ��  ��   k  l m l O   s � n o n k   y � p p  q r q l  y � s t u s Z  y � v w���� v =  y | x y x  g   y z y m   z {��
�� boovfals w R    ����� z
�� .ascrerr ****      � ****��   z �� {��
�� 
errn { m   � ���������  ��  ��   t   cancel    u � | |    c a n c e l r  }�� } r   � � ~  ~  g   � �  o      ���� 0 
thechoices 
theChoices��   o 1   s v��
�� 
rslt m  � � � l  � ���������  ��  ��   �  ��� � Z   � � � ����� � @  � � � � � l  � � ����� � I  � ��� ���
�� .corecnte****       **** � o   � ����� 0 
thechoices 
theChoices��  ��  ��   � m   � �����  � X   � � ��� � � k   � � � �  � � � r   � � � � � c   � � � � � l  � � ����� � b   � � � � � o   � ����� 0 	thefolder 	theFolder � o   � ����� 0 achoice aChoice��  ��   � m   � ���
�� 
alis � o      ���� 0 thisitem thisItem �  � � � l  � ��� � ���   � !  do something with thisItem    � � � � 6   d o   s o m e t h i n g   w i t h   t h i s I t e m �  ��� � O  � � � � � I  � ��� � �
�� .coreclon****      � **** � o   � ����� 0 thisitem thisItem � �� ���
�� 
insh � o   � ����� 0 destination_folder  ��   � m   � � � ��                                                                                  MACS  alis    t  Macintosh HD               ��n�H+     !
Finder.app                                                      ����O        ����  	                CoreServices    ��!f      ��o�       !         6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  �� 0 achoice aChoice � o   � ����� 0 
thechoices 
theChoices��  ��  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ���� � ���
�� .aevtoappnull  �   � ****��  ��   � ������ 0 nextline nextLine�� 0 achoice aChoice � "�� ������ (���� >��������������~�} _�| c�{ g�z�y�x�w�v�u�t�s ��r�q
�� 
prmp
�� .sysostflalis    ��� null
�� 
ctxt�� 0 	thefolder 	theFolder�� 0 destination_folder  �� 0 listofshows listOfShows
�� .sysostdfalis    ��� null
�� 
cpar�� 0 shows Shows
�� 
kocl
�� 
cobj
�� .corecnte****       ****
� 
leng
�~ .gtqpchltns    @   @ ns  �} 0 thenames theNames
�| 
okbt
�{ 
cnbt
�z 
mlsl�y 
�x 
rslt
�w 
errn�v���u 0 
thechoices 
theChoices
�t 
alis�s 0 thisitem thisItem
�r 
insh
�q .coreclon****      � ****�� �*��l �&E�O*��l �&E�OjvE�O*��l 	�-E�O $�[��l kh  ��,j 	��6GY h[OY��O�j O_ �a a a a a a ea  O_  *f  )a a lhY hO*E` UO_ j k : 4_ [��l kh ġ%a &E` Oa  _ a  �l !U[OY��Y h ascr  ��ޭ