FasdUAS 1.101.10   ��   ��    k             l     ��  ��      Doesnot work     � 	 	    D o e s n o t   w o r k   
  
 l     ��  ��    �  This script is not working As the Folder location when chosen interactivly is : selerate as opposed to forward slash seprated      �   �   T h i s   s c r i p t   i s   n o t   w o r k i n g   A s   t h e   F o l d e r   l o c a t i o n   w h e n   c h o s e n   i n t e r a c t i v l y   i s   :   s e l e r a t e   a s   o p p o s e d   t o   f o r w a r d   s l a s h   s e p r a t e d        l     ��������  ��  ��        l     ��  ��    � � Note the single quotes at the begining and end end of Source Folder, Destination folder and Keyword are important without which the white space in the Folder path and Keywork Name will throw error     �  �   N o t e   t h e   s i n g l e   q u o t e s   a t   t h e   b e g i n i n g   a n d   e n d   e n d   o f   S o u r c e   F o l d e r ,   D e s t i n a t i o n   f o l d e r   a n d   K e y w o r d   a r e   i m p o r t a n t   w i t h o u t   w h i c h   t h e   w h i t e   s p a c e   i n   t h e   F o l d e r   p a t h   a n d   K e y w o r k   N a m e   w i l l   t h r o w   e r r o r      l     ��������  ��  ��        l     ����  r         m        �   f ' / V o l u m e s / F a r m _ A r t / L o c a l - v e n d o r s / L a u g h i n g D o t s / 2 0 1 7 '  o      ���� 0 serversource serverSource��  ��         l     ��������  ��  ��      ! " ! l    #���� # r     $ % $ m     & & � ' ' H ' * D r e a m w o r l d   B i g   B u i l d a b l e   R e w a r d s * ' % o      ���� 0 keyword keyWord��  ��   "  ( ) ( l     ��������  ��  ��   )  * + * l     �� , -��   , ( " Gets The Folders Based on Keyword    - � . . D   G e t s   T h e   F o l d e r s   B a s e d   o n   K e y w o r d +  / 0 / l    1���� 1 r     2 3 2 I   �� 4��
�� .sysoexecTEXT���     TEXT 4 b     5 6 5 b     7 8 7 b     9 : 9 b     ; < ; m    	 = = � > > 
 f i n d   < o   	 
���� 0 serversource serverSource : m     ? ? � @ @    - i n a m e   8 o    ���� 0 keyword keyWord 6 m     A A � B B    - m a x d e p t h   1��   3 o      ���� 0 foldersstring foldersString��  ��   0  C D C l     ��������  ��  ��   D  E F E l     ��������  ��  ��   F  G H G l     �� I J��   I 5 / Converts Text string recived by find to a list    J � K K ^   C o n v e r t s   T e x t   s t r i n g   r e c i v e d   b y   f i n d   t o   a   l i s t H  L M L l    N���� N r     O P O n     Q R Q 2   ��
�� 
cpar R o    ���� 0 foldersstring foldersString P o      ���� 0 folders  ��  ��   M  S T S l     ��������  ��  ��   T  U V U l     �� W X��   W 7 1display dialog "The Folder :" & length of folders    X � Y Y b d i s p l a y   d i a l o g   " T h e   F o l d e r   : "   &   l e n g t h   o f   f o l d e r s V  Z [ Z l     �� \ ]��   \ ! set str to class of folders    ] � ^ ^ 6 s e t   s t r   t o   c l a s s   o f   f o l d e r s [  _ ` _ l     �� a b��   a + %display dialog "The Folder 1 :" & str    b � c c J d i s p l a y   d i a l o g   " T h e   F o l d e r   1   : "   &   s t r `  d e d l     ��������  ��  ��   e  f g f l     �� h i��   h � �set source to "'Volumes/Farm_Art/Local-vendors/LaughingDots/2017/05-04-2017_Laughingdots_Dreamworld Big Buildable Rewards and Parts_PM6'"    i � j j s e t   s o u r c e   t o   " ' V o l u m e s / F a r m _ A r t / L o c a l - v e n d o r s / L a u g h i n g D o t s / 2 0 1 7 / 0 5 - 0 4 - 2 0 1 7 _ L a u g h i n g d o t s _ D r e a m w o r l d   B i g   B u i l d a b l e   R e w a r d s   a n d   P a r t s _ P M 6 ' " g  k l k l     ��������  ��  ��   l  m n m l   ! o���� o r    ! p q p m     r r � s s 8 / U s e r s / a n a n d i h a l l i / D o c u m e n t s q o      ���� 
0 target  ��  ��   n  t u t l     �� v w��   v � �set target to (choose folder with prompt "Select the Destination folder to copy. Defult Destination Folder is " & target) as text    w � x x s e t   t a r g e t   t o   ( c h o o s e   f o l d e r   w i t h   p r o m p t   " S e l e c t   t h e   D e s t i n a t i o n   f o l d e r   t o   c o p y .   D e f u l t   D e s t i n a t i o n   F o l d e r   i s   "   &   t a r g e t )   a s   t e x t u  y z y l     ��������  ��  ��   z  { | { l  " 1 }���� } r   " 1 ~  ~ n   " - � � � o   ) -���� 0 	container   � l  " ) ����� � I  " )���� �
�� .sysostflalis    ��� null��   � �� ���
�� 
prmp � m   $ % � � � � � 2 P l e a s e   c h o o s e   a   f i l e   n a m e��  ��  ��    o      ���� 0 
foldername 
FolderName��  ��   |  � � � l     ��������  ��  ��   �  � � � l  2 A ����� � r   2 A � � � n   2 = � � � 1   9 =��
�� 
psxp � l  2 9 ����� � c   2 9 � � � o   2 5���� 0 itemref itemRef � m   5 8��
�� 
TEXT��  ��   � o      ���� 0 targetfolder TargetFolder��  ��   �  � � � l     ��������  ��  ��   �  ��� � l  B � ����� � X   B � ��� � � k   V � � �  � � � I  V ]�� ���
�� .sysodlogaskr        TEXT � o   V Y���� 0 targetfolder TargetFolder��   �  � � �  S   ^ _ �  � � � l  ` `�� � ���   � $ Assing Folder to source folder    � � � � < A s s i n g   F o l d e r   t o   s o u r c e   f o l d e r �  � � � r   ` m � � � b   ` i � � � b   ` e � � � m   ` c � � � � �  ' � 1   c d��
�� 
asdr � m   e h � � � � �  ' � o      ���� 
0 source   �  � � � l  n n�� � ���   �   Copying happens here    � � � � *   C o p y i n g   h a p p e n s   h e r e �  � � � I  n ��� ���
�� .sysoexecTEXT���     TEXT � b   n � � � � b   n  � � � b   n } � � � b   n y � � � b   n u � � � m   n q � � � � �  c p   - R f v   / � o   q t���� 
0 source   � m   u x � � � � �    � m   y | � � � � �  ' � o   } ~���� 
0 target   � m    � � � � � �  '��   �  � � � l  � ��� � ���   � < 6 Only use exit while testing to avoid complete looping    � � � � l   O n l y   u s e   e x i t   w h i l e   t e s t i n g   t o   a v o i d   c o m p l e t e   l o o p i n g �  ��� � l  � ���������  ��  ��  ��  
�� 
asdr � o   E F���� 0 folders  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �  ! � �  / � �  L � �  m � �  { � �  � � �  �����  ��  ��   � ��
�� 
asdr � ! �� &�� = ? A�������� r���� �������������~�}�|�{�z � ��y � � � ��� 0 serversource serverSource�� 0 keyword keyWord
�� .sysoexecTEXT���     TEXT�� 0 foldersstring foldersString
�� 
cpar�� 0 folders  �� 
0 target  
�� 
prmp
�� .sysostflalis    ��� null�� 0 	container  �� 0 
foldername 
FolderName�� 0 itemref itemRef
�� 
TEXT
� 
psxp�~ 0 targetfolder TargetFolder
�} 
kocl
�| 
cobj
�{ .corecnte****       ****
�z .sysodlogaskr        TEXT�y 
0 source  �� ��E�O�E�O��%�%�%�%j E�O��-E�O�E�O*��l a ,E` O_ a &a ,E` O K�[a a l kh  _ j OOa �%a %E` Oa _ %a %a %�%a  %j OP[OY�� ascr  ��ޭ