FasdUAS 1.101.10   ��   ��    k             l     ��  ��    � � Note the single quotes at the begining and end end of Source Folder, Destination folder and Keyword are important without which the white space in the Folder path and Keywork Name will throw error     � 	 	�   N o t e   t h e   s i n g l e   q u o t e s   a t   t h e   b e g i n i n g   a n d   e n d   e n d   o f   S o u r c e   F o l d e r ,   D e s t i n a t i o n   f o l d e r   a n d   K e y w o r d   a r e   i m p o r t a n t   w i t h o u t   w h i c h   t h e   w h i t e   s p a c e   i n   t h e   F o l d e r   p a t h   a n d   K e y w o r k   N a m e   w i l l   t h r o w   e r r o r   
  
 l     ��������  ��  ��        l     ��������  ��  ��        l     ����  r         m        �   b / V o l u m e s / F a r m _ A r t / L o c a l - v e n d o r s / L a u g h i n g D o t s / 2 0 1 7  o      ���� 0 serversource serverSource��  ��        l     ��������  ��  ��        l     ��  ��    5 / * are mean any thing before and anything after     �   ^   *   a r e   m e a n   a n y   t h i n g   b e f o r e   a n d   a n y t h i n g   a f t e r      l    ����  r         m     ! ! � " " B * D r e a m * w o r l d   -   H a r v e s t   B u i l d a b l e *   o      ���� 0 keyword keyWord��  ��     # $ # l     ��������  ��  ��   $  % & % l     �� ' (��   ' \ Vset myreg to "/(DREAM)(\s*\S*\s*)(WORLD)(\s*\S*\s*)(Harvest)(\s*\S*\s*)(Buildable)/ig"    ( � ) ) � s e t   m y r e g   t o   " / ( D R E A M ) ( \ s * \ S * \ s * ) ( W O R L D ) ( \ s * \ S * \ s * ) ( H a r v e s t ) ( \ s * \ S * \ s * ) ( B u i l d a b l e ) / i g " &  * + * l     ��������  ��  ��   +  , - , l    .���� . r     / 0 / J     1 1  2 3 2 m    	 4 4 � 5 5 
 D r e a m 3  6 7 6 m   	 
 8 8 � 9 9 
 W o r l d 7  : ; : m   
  < < � = =  H a r v e s t ;  >�� > m     ? ? � @ @  B u i l d a b l e��   0 o      ���� 0 keywords keyWords��  ��   -  A B A l     ��������  ��  ��   B  C D C l     �� E F��   E S Mset target to "/Users/anandihalli/Documents/Dreamworld/Big Buildable Rewards"    F � G G � s e t   t a r g e t   t o   " / U s e r s / a n a n d i h a l l i / D o c u m e n t s / D r e a m w o r l d / B i g   B u i l d a b l e   R e w a r d s " D  H I H l     ��������  ��  ��   I  J K J l    L���� L r     M N M m     O O � P P r / U s e r s / a n a n d i h a l l i / D o c u m e n t s / D r e a m w o r l d / H a r v e s t   B u i l d a b l e N o      ���� 
0 target  ��  ��   K  Q R Q l     ��������  ��  ��   R  S T S l     �� U V��   U ( " Gets The Folders Based on Keyword    V � W W D   G e t s   T h e   F o l d e r s   B a s e d   o n   K e y w o r d T  X Y X l   $ Z���� Z r    $ [ \ [ I    �� ]��
�� .sysoexecTEXT���     TEXT ] b     ^ _ ^ b     ` a ` b     b c b m     d d � e e  l s   c m     f f � g g  ' a o    ���� 0 serversource serverSource _ m     h h � i i  '��   \ o      ���� 0 foldersstring foldersString��  ��   Y  j k j l     ��������  ��  ��   k  l m l l     �� n o��   n � {set foldersString to do shell script "find " & "'" & serverSource & "'" & " -iname " & "'" & keyWord & "'" & " -maxdepth 1"    o � p p � s e t   f o l d e r s S t r i n g   t o   d o   s h e l l   s c r i p t   " f i n d   "   &   " ' "   &   s e r v e r S o u r c e   &   " ' "   &   "   - i n a m e   "   &   " ' "   &   k e y W o r d   &   " ' "   &   "   - m a x d e p t h   1 " m  q r q l     ��������  ��  ��   r  s t s l     ��������  ��  ��   t  u v u l     �� w x��   w 5 / Converts Text string recived by find to a list    x � y y ^   C o n v e r t s   T e x t   s t r i n g   r e c i v e d   b y   f i n d   t o   a   l i s t v  z { z l  % 0 |���� | r   % 0 } ~ } n   % ,  �  2  ( ,��
�� 
cpar � o   % (���� 0 foldersstring foldersString ~ o      ���� 0 folders  ��  ��   {  � � � l     ��������  ��  ��   �  � � � l  1 _ ����� � X   1 _ ��� � � Z   G Z � ����� � E   G J � � � 1   G H��
�� 
asdr � o   H I���� 0 keywords keyWords � I  M V�� ���
�� .sysodlogaskr        TEXT � b   M R � � � m   M P � � � � �  T h e   F o l d e r s   : � 1   P Q��
�� 
asdr��  ��  ��  
�� 
asdr � o   4 7���� 0 folders  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  ` o ����� � I  ` o�� ���
�� .sysodlogaskr        TEXT � b   ` k � � � m   ` c � � � � �  T h e   F o l d e r   : � n   c j � � � 1   f j��
�� 
leng � o   c f���� 0 folders  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ! set str to class of folders    � � � � 6 s e t   s t r   t o   c l a s s   o f   f o l d e r s �  � � � l     �� � ���   � . (display dialog "The Folders :" & folders    � � � � P d i s p l a y   d i a l o g   " T h e   F o l d e r s   : "   &   f o l d e r s �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  ��� � l  p � ����� � X   p � ��� � � k   � � � �  � � � l  � ��� � ���   � , &display dialog "The Folder :" & folder    � � � � L d i s p l a y   d i a l o g   " T h e   F o l d e r   : "   &   f o l d e r �  � � �  S   � � �  � � � l  � ��� � ���   � $ Assing Folder to source folder    � � � � < A s s i n g   F o l d e r   t o   s o u r c e   f o l d e r �  � � � r   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  ' � 1   � ���
�� 
asdr � m   � � � � � � �  ' � o      ���� 
0 source   �  � � � l  � ��� � ���   �   Copying happens here    � � � � *   C o p y i n g   h a p p e n s   h e r e �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  c p   - R f v   / � o   � ����� 
0 source   � m   � � � � � � �    � m   � � � � � � �  ' � o   � ����� 
0 target   � m   � � � � � � �  '��   �  � � � l  � ��� � ���   � < 6 Only use exit while testing to avoid complete looping    � � � � l   O n l y   u s e   e x i t   w h i l e   t e s t i n g   t o   a v o i d   c o m p l e t e   l o o p i n g �  ��� � l  � ���������  ��  ��  ��  
�� 
asdr � o   s v���� 0 folders  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �   � �   � �  , � �  J � �  X � �  z � �  � � �  � � �  �����  ��  ��   � ��
�� 
asdr � ! �� !�� 4 8 < ?��~ O�} d f h�|�{�z�y�x�w�v ��u ��t � ��s � � � ��� 0 serversource serverSource�� 0 keyword keyWord� �~ 0 keywords keyWords�} 
0 target  
�| .sysoexecTEXT���     TEXT�{ 0 foldersstring foldersString
�z 
cpar�y 0 folders  
�x 
kocl
�w 
cobj
�v .corecnte****       ****
�u .sysodlogaskr        TEXT
�t 
leng�s 
0 source  �� ��E�O�E�O�����vE�O�E�O��%�%�%j E` O_ a -E` O -_ [a a l kh  �� a �%j Y h[OY��Oa _ a ,%j O E_ [a a l kh  Oa �%a %E` Oa _ %a %a %�%a  %j OP[OY��ascr  ��ޭ