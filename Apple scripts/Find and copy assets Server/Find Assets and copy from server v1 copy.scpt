FasdUAS 1.101.10   ��   ��    k             l     ��  ��    d ^ You should have connected to Server folder that you are trying to coonect through this script     � 	 	 �   Y o u   s h o u l d   h a v e   c o n n e c t e d   t o   S e r v e r   f o l d e r   t h a t   y o u   a r e   t r y i n g   t o   c o o n e c t   t h r o u g h   t h i s   s c r i p t   
  
 l     ��  ��    � � This script smees to work fine throws error when file names or its parebt  folders have the special charecters apart from underscore _ or hiphen -     �  &   T h i s   s c r i p t   s m e e s   t o   w o r k   f i n e   t h r o w s   e r r o r   w h e n   f i l e   n a m e s   o r   i t s   p a r e b t     f o l d e r s   h a v e   t h e   s p e c i a l   c h a r e c t e r s   a p a r t   f r o m   u n d e r s c o r e   _   o r   h i p h e n   -      l     ��������  ��  ��        p         ������ 0 serversource serverSource��        p         ������ 
0 target  ��        l     ��������  ��  ��        l     ��  ��    M Gset serverSource to "/Volumes/Farm_Art/Local-vendors/LaughingDots/2017"     �   � s e t   s e r v e r S o u r c e   t o   " / V o l u m e s / F a r m _ A r t / L o c a l - v e n d o r s / L a u g h i n g D o t s / 2 0 1 7 "      l     ��   !��     C =set serverSource to "/Volumes/Farm_Art/Local-vendors/Pixalot"    ! � " " z s e t   s e r v e r S o u r c e   t o   " / V o l u m e s / F a r m _ A r t / L o c a l - v e n d o r s / P i x a l o t "   # $ # l     %���� % r      & ' & m      ( ( � ) ) ^ / V o l u m e s / F a r m _ A r t / V e n d o r S u b m i s s i o n / s t a r a r t _ 2 0 1 7 ' o      ���� 0 serversource serverSource��  ��   $  * + * l     ��������  ��  ��   +  , - , l     ��������  ��  ��   -  . / . l     ��������  ��  ��   /  0 1 0 l     �� 2 3��   2 E ?set keyWords to {"horse_xdw_darkworld", "wolf_xdw_dreamwalker"}    3 � 4 4 ~ s e t   k e y W o r d s   t o   { " h o r s e _ x d w _ d a r k w o r l d " ,   " w o l f _ x d w _ d r e a m w a l k e r " } 1  5 6 5 l     ��������  ��  ��   6  7 8 7 l     �� 9 :��   9
@
:set keyWords to {"rabbit_xdw_butterflieschaserbunny", "chicken_xdw_chicdreamer", "mysteryeggchickenxdwchicdreamer", "mysteryeggchickenxdwchicdreamer", "fox_xdw_dreamcatcher", "cat_xdw_dreamycute", "xdw_dreamyflowerfairy", "pegasus_xdw_enthrallingqueen", "foal_pegasus_xdw_enthrallingqueen", "magicdeer_xdw_fairybloomtaildeer", "fawn_magicdeer_xdw_fairybloomtaildeer", "xdw_fairybunnytroop", "moat_xdw_fairypath", "moat_xdw_fairypath2", "moat_xdw_fairypath3", "moat_xdw_fairypath4", "moat_xdw_fairypath5", "moat_xdw_fairypath6", "xdw_fairysweethome", "xdw_floralglowtile", "calf_cow_xdw_magicalpattern", "cow_xdw_magicalpattern", "dog_xdw_neonfly", "xdw_sacredfairypond", "xdw_shroomspellshop", "xdw_entwinedlovetree", "xdw_furlingorbtree", "giantxdw_entwinedlovetree", "giantxdw_furlingorbtree", "giantxdw_jewellednighttree", "giantxdw_nightoaktree", "xdw_jewellednighttree", "xdw_nightoaktree", "xdw_amusedkittenfairy", "rabbit_xdw_butterflieschaserbunny", "chicken_xdw_chicdreamer", "mysteryeggchickenxdwchicdreamer", "egg_chicken_xdw_chicdreamer", "fox_xdw_dreamcatcher", "cat_xdw_dreamycute", "xdw_dreamyflowerfairy", "pegasus_xdw_enthrallingqueen", "foal_pegasus_xdw_enthrallingqueen", "xdw_entwinedlovetree", "magicdeer_xdw_fairybloomtaildeer", "fawn_magicdeer_xdw_fairybloomtaildeer", "xdw_fairybunnytroop", "moat_xdw_fairypath", "moat_xdw_fairypath2", "moat_xdw_fairypath3", "moat_xdw_fairypath4", "moat_xdw_fairypath5", "moat_xdw_fairypath6", "xdw_fairysweethome", "xdw_floralglowtile", "xdw_furlingorbtree", "giantxdw_entwinedlovetree", "giantxdw_furlingorbtree", "giantxdw_jewellednighttree", "giantxdw_nightoaktree", "xdw_jewellednighttree", "calf_cow_xdw_magicalpattern", "cow_xdw_magicalpattern", "dog_xdw_neonfly", "xdw_nightoaktree", "xdw_sacredfairypond", "xdw_shroomspellshop", "xdw_bulgytree", "fox_xdw_dreamstar", "peacock_xdw_fairy", "giraffe_xdw_fantasy", "giantxdw_bulgytree", "wolf_xdw_glowwing", "xdw_goldenbutterflies", "magicdeer_xdw_hakukudeer", "fawn_magicdeer_xdw_hakukudeer", "xdw_lanternfairy", "pegacorn_xdw_manywings", "foal_pegacorn_xdw_manywings", "xdw_moonpixie", "bird_xdw_portalowl", "xdw_secludedfairypond", "xdw_shroomerhouse", "xdw_dreamlandtreeswing", "pegacorn_xdw_elvenpride", "foal_pegacorn_xdw_elvenpride", "xdw_enchantedshroomtree", "bigcat_xdw_fairyguardianlion", "fox_xdw_fairytail", "dog_xdw_galaxy", "giantxdw_enchantedshroomtree", "giantxdw_pixiepowdertree", "giantxdw_twinlighttree", "magicdeer_xdw_magicmushroomsdeer", "fawn_magicdeer_xdw_magicmushroomsdeer", "calf_cow_xdw_mandrakeroot", "cow_xdw_mandrakeroot", "xdw_mushroompartyhouse", "xdw_pathlighterstatue"}    : � ; ;t s e t   k e y W o r d s   t o   { " r a b b i t _ x d w _ b u t t e r f l i e s c h a s e r b u n n y " ,   " c h i c k e n _ x d w _ c h i c d r e a m e r " ,   " m y s t e r y e g g c h i c k e n x d w c h i c d r e a m e r " ,   " m y s t e r y e g g c h i c k e n x d w c h i c d r e a m e r " ,   " f o x _ x d w _ d r e a m c a t c h e r " ,   " c a t _ x d w _ d r e a m y c u t e " ,   " x d w _ d r e a m y f l o w e r f a i r y " ,   " p e g a s u s _ x d w _ e n t h r a l l i n g q u e e n " ,   " f o a l _ p e g a s u s _ x d w _ e n t h r a l l i n g q u e e n " ,   " m a g i c d e e r _ x d w _ f a i r y b l o o m t a i l d e e r " ,   " f a w n _ m a g i c d e e r _ x d w _ f a i r y b l o o m t a i l d e e r " ,   " x d w _ f a i r y b u n n y t r o o p " ,   " m o a t _ x d w _ f a i r y p a t h " ,   " m o a t _ x d w _ f a i r y p a t h 2 " ,   " m o a t _ x d w _ f a i r y p a t h 3 " ,   " m o a t _ x d w _ f a i r y p a t h 4 " ,   " m o a t _ x d w _ f a i r y p a t h 5 " ,   " m o a t _ x d w _ f a i r y p a t h 6 " ,   " x d w _ f a i r y s w e e t h o m e " ,   " x d w _ f l o r a l g l o w t i l e " ,   " c a l f _ c o w _ x d w _ m a g i c a l p a t t e r n " ,   " c o w _ x d w _ m a g i c a l p a t t e r n " ,   " d o g _ x d w _ n e o n f l y " ,   " x d w _ s a c r e d f a i r y p o n d " ,   " x d w _ s h r o o m s p e l l s h o p " ,   " x d w _ e n t w i n e d l o v e t r e e " ,   " x d w _ f u r l i n g o r b t r e e " ,   " g i a n t x d w _ e n t w i n e d l o v e t r e e " ,   " g i a n t x d w _ f u r l i n g o r b t r e e " ,   " g i a n t x d w _ j e w e l l e d n i g h t t r e e " ,   " g i a n t x d w _ n i g h t o a k t r e e " ,   " x d w _ j e w e l l e d n i g h t t r e e " ,   " x d w _ n i g h t o a k t r e e " ,   " x d w _ a m u s e d k i t t e n f a i r y " ,   " r a b b i t _ x d w _ b u t t e r f l i e s c h a s e r b u n n y " ,   " c h i c k e n _ x d w _ c h i c d r e a m e r " ,   " m y s t e r y e g g c h i c k e n x d w c h i c d r e a m e r " ,   " e g g _ c h i c k e n _ x d w _ c h i c d r e a m e r " ,   " f o x _ x d w _ d r e a m c a t c h e r " ,   " c a t _ x d w _ d r e a m y c u t e " ,   " x d w _ d r e a m y f l o w e r f a i r y " ,   " p e g a s u s _ x d w _ e n t h r a l l i n g q u e e n " ,   " f o a l _ p e g a s u s _ x d w _ e n t h r a l l i n g q u e e n " ,   " x d w _ e n t w i n e d l o v e t r e e " ,   " m a g i c d e e r _ x d w _ f a i r y b l o o m t a i l d e e r " ,   " f a w n _ m a g i c d e e r _ x d w _ f a i r y b l o o m t a i l d e e r " ,   " x d w _ f a i r y b u n n y t r o o p " ,   " m o a t _ x d w _ f a i r y p a t h " ,   " m o a t _ x d w _ f a i r y p a t h 2 " ,   " m o a t _ x d w _ f a i r y p a t h 3 " ,   " m o a t _ x d w _ f a i r y p a t h 4 " ,   " m o a t _ x d w _ f a i r y p a t h 5 " ,   " m o a t _ x d w _ f a i r y p a t h 6 " ,   " x d w _ f a i r y s w e e t h o m e " ,   " x d w _ f l o r a l g l o w t i l e " ,   " x d w _ f u r l i n g o r b t r e e " ,   " g i a n t x d w _ e n t w i n e d l o v e t r e e " ,   " g i a n t x d w _ f u r l i n g o r b t r e e " ,   " g i a n t x d w _ j e w e l l e d n i g h t t r e e " ,   " g i a n t x d w _ n i g h t o a k t r e e " ,   " x d w _ j e w e l l e d n i g h t t r e e " ,   " c a l f _ c o w _ x d w _ m a g i c a l p a t t e r n " ,   " c o w _ x d w _ m a g i c a l p a t t e r n " ,   " d o g _ x d w _ n e o n f l y " ,   " x d w _ n i g h t o a k t r e e " ,   " x d w _ s a c r e d f a i r y p o n d " ,   " x d w _ s h r o o m s p e l l s h o p " ,   " x d w _ b u l g y t r e e " ,   " f o x _ x d w _ d r e a m s t a r " ,   " p e a c o c k _ x d w _ f a i r y " ,   " g i r a f f e _ x d w _ f a n t a s y " ,   " g i a n t x d w _ b u l g y t r e e " ,   " w o l f _ x d w _ g l o w w i n g " ,   " x d w _ g o l d e n b u t t e r f l i e s " ,   " m a g i c d e e r _ x d w _ h a k u k u d e e r " ,   " f a w n _ m a g i c d e e r _ x d w _ h a k u k u d e e r " ,   " x d w _ l a n t e r n f a i r y " ,   " p e g a c o r n _ x d w _ m a n y w i n g s " ,   " f o a l _ p e g a c o r n _ x d w _ m a n y w i n g s " ,   " x d w _ m o o n p i x i e " ,   " b i r d _ x d w _ p o r t a l o w l " ,   " x d w _ s e c l u d e d f a i r y p o n d " ,   " x d w _ s h r o o m e r h o u s e " ,   " x d w _ d r e a m l a n d t r e e s w i n g " ,   " p e g a c o r n _ x d w _ e l v e n p r i d e " ,   " f o a l _ p e g a c o r n _ x d w _ e l v e n p r i d e " ,   " x d w _ e n c h a n t e d s h r o o m t r e e " ,   " b i g c a t _ x d w _ f a i r y g u a r d i a n l i o n " ,   " f o x _ x d w _ f a i r y t a i l " ,   " d o g _ x d w _ g a l a x y " ,   " g i a n t x d w _ e n c h a n t e d s h r o o m t r e e " ,   " g i a n t x d w _ p i x i e p o w d e r t r e e " ,   " g i a n t x d w _ t w i n l i g h t t r e e " ,   " m a g i c d e e r _ x d w _ m a g i c m u s h r o o m s d e e r " ,   " f a w n _ m a g i c d e e r _ x d w _ m a g i c m u s h r o o m s d e e r " ,   " c a l f _ c o w _ x d w _ m a n d r a k e r o o t " ,   " c o w _ x d w _ m a n d r a k e r o o t " ,   " x d w _ m u s h r o o m p a r t y h o u s e " ,   " x d w _ p a t h l i g h t e r s t a t u e " } 8  < = < l     ��������  ��  ��   =  > ? > l    @���� @ r     A B A J     C C  D E D m     F F � G G  x d w _ e y e f r u i t E  H I H m     J J � K K  x d w _ s t a r g l o w I  L M L m     N N � O O  x d w _ o d d s p r o u t s M  P Q P m     R R � S S " x d w _ r i n g p i n e a p p l e Q  T U T m    	 V V � W W   x d w _ l i g h t o r b l i l y U  X Y X m   	 
 Z Z � [ [  x d w _ n i g h t q u e e n Y  \�� \ m   
  ] ] � ^ ^ & x d w _ n i g h t g l o w f l o w e r��   B o      ���� 0 keywords keyWords��  ��   ?  _ ` _ l     ��������  ��  ��   `  a b a l     ��������  ��  ��   b  c d c l     ��������  ��  ��   d  e f e l     ��������  ��  ��   f  g h g l    i���� i r     j k j m     l l � m m 
 D r e a m k o      ���� 0 
foldername 
folderName��  ��   h  n o n l     ��������  ��  ��   o  p q p l     ��������  ��  ��   q  r s r l    t���� t r     u v u m     w w � x x 
 * . f l a v o      ���� 0 fileext fileExt��  ��   s  y z y l     �� { |��   {   set fileExt to "_full.png"    | � } } 4 s e t   f i l e E x t   t o   " _ f u l l . p n g " z  ~  ~ l     �� � ���   � $ set fileExt to "_icon_200.png"    � � � � < s e t   f i l e E x t   t o   " _ i c o n _ 2 0 0 . p n g "   � � � l    � � � � r     � � � m     � � � � �   � o      ���� 0 fileext fileExt �   any format    � � � �    a n y   f o r m a t �  � � � l     ��������  ��  ��   �  � � � l   % ����� � r    % � � � b    ! � � � m     � � � � � ` / U s e r s / a n a n d i h a l l i / D o c u m e n t s / 0 1 _ W o r k / D r e a m w o r l d / � o     ���� 0 
foldername 
folderName � o      ���� 
0 target  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � . ( Gets The Files Folders Based on Keyword    � � � � P   G e t s   T h e   F i l e s   F o l d e r s   B a s e d   o n   K e y w o r d �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  working line    � � � �  w o r k i n g   l i n e �  � � � l     �� � ���   � � �set myString to "find /Volumes/Farm_Art/Local-vendors/LaughingDots/2017 \\( -name 'horse_xdw_darkworld*.fla' -o -name 'wolf_xdw_dreamwalker*.fla' \\) -type f"    � � � �< s e t   m y S t r i n g   t o   " f i n d   / V o l u m e s / F a r m _ A r t / L o c a l - v e n d o r s / L a u g h i n g D o t s / 2 0 1 7   \ \ (   - n a m e   ' h o r s e _ x d w _ d a r k w o r l d * . f l a '   - o   - n a m e   ' w o l f _ x d w _ d r e a m w a l k e r * . f l a '   \ \ )   - t y p e   f " �  � � � l     �� � ���   �  working line    � � � �  w o r k i n g   l i n e �  � � � l     �� � ���   � � �set myString to "find " & serverSource & " \\( -name 'horse_xdw_darkworld*.fla' -o -name 'wolf_xdw_dreamwalker*.fla' \\) -type f"    � � � � s e t   m y S t r i n g   t o   " f i n d   "   &   s e r v e r S o u r c e   &   "   \ \ (   - n a m e   ' h o r s e _ x d w _ d a r k w o r l d * . f l a '   - o   - n a m e   ' w o l f _ x d w _ d r e a m w a l k e r * . f l a '   \ \ )   - t y p e   f " �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  & - ����� � r   & - � � � m   & ) � � � � �    \ (   � o      ���� 0 mystring myString��  ��   �  � � � l     ��������  ��  ��   �  � � � l  . 3 ����� � r   . 3 � � � m   . /����   � o      ���� 0 i  ��  ��   �  � � � l  4 � ����� � X   4 � ��� � � k   H � � �  � � � l  H H��������  ��  ��   �  � � � Z   H i � ��� � � A   H M � � � o   H K���� 0 i   � m   K L����  � r   P [ � � � b   P W � � � o   P S���� 0 mystring myString � m   S V � � � � �    - n a m e   � o      ���� 0 mystring myString��   � r   ^ i � � � b   ^ e � � � o   ^ a���� 0 mystring myString � m   a d � � � � �    - o   - n a m e   � o      ���� 0 mystring myString �  � � � r   j � � � � b   j } � � � b   j y � � � b   j w � � � b   j s � � � b   j q � � � o   j m���� 0 mystring myString � m   m p � � � � �  ' � o   q r���� 0 elem   � m   s v � � � � �  * � o   w x���� 0 fileext fileExt � m   y | � � � � �  ' � o      ���� 0 mystring myString �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � [   � � � � � o   � ����� 0 i   � m   � �����  � o      ���� 0 i   �  ��� � l  � ���������  ��  ��  ��  �� 0 elem   � o   7 8���� 0 keywords keyWords��  ��   �  �  � l     ��~�}�  �~  �}     l  � ��|�{ r   � � b   � � o   � ��z�z 0 mystring myString m   � � �		    \ ) o      �y�y 0 mystring myString�|  �{   

 l     �x�w�v�x  �w  �v    l     �u�u    display dialog myString    � . d i s p l a y   d i a l o g   m y S t r i n g  l     �t�s�r�t  �s  �r    l     �q�q   C =display dialog "find " & serverSource & myString & " -type f"    � z d i s p l a y   d i a l o g   " f i n d   "   &   s e r v e r S o u r c e   &   m y S t r i n g   &   "   - t y p e   f "  l     �p�o�n�p  �o  �n    l  � ��m�l r   � � b   � �  b   � �!"! b   � �#$# m   � �%% �&& 
 f i n d  $ o   � ��k�k 0 serversource serverSource" o   � ��j�j 0 mystring myString  m   � �'' �((    - t y p e   f o      �i�i 0 mystring myString�m  �l   )*) l     �h�g�f�h  �g  �f  * +,+ l     �e�d�c�e  �d  �c  , -.- l     �b�a�`�b  �a  �`  . /0/ l     �_�^�]�_  �^  �]  0 121 l     �\�[�Z�\  �[  �Z  2 343 l     �Y56�Y  5 * $ Gets all the files Based on Keyword   6 �77 H   G e t s   a l l   t h e   f i l e s   B a s e d   o n   K e y w o r d4 898 l  � �:�X�W: r   � �;<; I  � ��V=�U
�V .sysoexecTEXT���     TEXT= o   � ��T�T 0 mystring myString�U  < o      �S�S 0 foldersstring foldersString�X  �W  9 >?> l     �R�Q�P�R  �Q  �P  ? @A@ l     �O�N�M�O  �N  �M  A BCB l     �LDE�L  D 5 / Converts Text string recived by find to a list   E �FF ^   C o n v e r t s   T e x t   s t r i n g   r e c i v e d   b y   f i n d   t o   a   l i s tC GHG l  � �I�K�JI r   � �JKJ n   � �LML 2  � ��I
�I 
cparM o   � ��H�H 0 foldersstring foldersStringK o      �G�G 0 folders  �K  �J  H NON l     �F�E�D�F  �E  �D  O PQP l     �C�B�A�C  �B  �A  Q RSR i     TUT I      �@V�?�@  0 createtextfile createTextFileV W�>W o      �=�= 0 mylist myList�>  �?  U k     �XX YZY l     �<[\�<  [   Create a new text file   \ �]] .   C r e a t e   a   n e w   t e x t   f i l eZ ^_^ l     �;`a�;  ` ) # set theNewFile to choose file name   a �bb F   s e t   t h e N e w F i l e   t o   c h o o s e   f i l e   n a m e_ cdc l     �:�9�8�:  �9  �8  d efe r     ghg c     iji l    k�7�6k I    �5�4l
�5 .sysonwflfile    ��� null�4  l �3mn
�3 
prmtm m    oo �pp  S a v e   A s   F i l en �2qr
�2 
dfnmq m    ss �tt   S V N _ f i l e s _ r e s u l tr �1u�0
�1 
dflcu I   �/v�.
�/ .earsffdralis        afdrv m    �-
�- afdrdesk�.  �0  �7  �6  j m    �,
�, 
ctxth o      �+�+ 0 
thenewfile 
theNewFilef wxw l   �*�)�(�*  �)  �(  x yzy l   �'�&�%�'  �&  �%  z {|{ l   �$}~�$  } � }set theNewFile to paragraphs of (read POSIX file "/Users/anandihalli/Documents/Scripting/Apple scripts/SVN_files_result.txt")   ~ � � s e t   t h e N e w F i l e   t o   p a r a g r a p h s   o f   ( r e a d   P O S I X   f i l e   " / U s e r s / a n a n d i h a l l i / D o c u m e n t s / S c r i p t i n g / A p p l e   s c r i p t s / S V N _ f i l e s _ r e s u l t . t x t " )| ��� l   �#�"�!�#  �"  �!  � ��� Z   $��� �� H    �� D    ��� o    �� 0 
thenewfile 
theNewFile� m    �� ���  . t x t� r     ��� b    ��� o    �� 0 
thenewfile 
theNewFile� m    �� ���  . t x t� o      �� 0 
thenewfile 
theNewFile�   �  � ��� l  % %����  �  �  � ��� r   % (��� o   % &�� 0 mylist myList� o      �� 0 mylist myList� ��� l  ) )����  �  �  � ��� l  ) )����  � $  Convert the list in to string   � ��� <   C o n v e r t   t h e   l i s t   i n   t o   s t r i n g� ��� r   ) ,��� m   ) *�� ���  � o      �� 0 final Final� ��� Z   - Y����� ?   - 4��� l  - 2���� e   - 2�� I  - 2���
� .corecnte****       ****� o   - .�� 0 mylist myList�  �  �  � m   2 3�
�
 � X   7 U��	�� k   G P�� ��� l  G G����  � _ Yset Final to Final & theItem & ", " --For comma seperated use "," and for new line use ""   � ��� � s e t   F i n a l   t o   F i n a l   &   t h e I t e m   &   " ,   "   - - F o r   c o m m a   s e p e r a t e d   u s e   " , "   a n d   f o r   n e w   l i n e   u s e   " "� ��� r   G P��� b   G N��� b   G J��� o   G H�� 0 final Final� o   H I�� 0 theitem theItem� m   J M�� ���  � o      �� 0 final Final�  �	 0 theitem theItem� o   : ;�� 0 mylist myList�  �  � ��� l  Z Z��� �  �  �   � ��� r   Z ]��� o   Z [���� 0 final Final� o      ���� 0 dataout dataOut� ��� l  ^ ^��������  ��  ��  � ��� Q   ^ ����� r   a l��� l  a j������ I  a j����
�� .rdwropenshor       file� o   a b���� 0 
thenewfile 
theNewFile� �����
�� 
perm� m   e f��
�� boovtrue��  ��  ��  � o      ���� 0 fileref fileRef� R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � I  t ������
�� .sysodlogaskr        TEXT� b   t ���� b   t ���� l  t }������ c   t }��� b   t y��� m   t w�� ��� > O p e n   f o r   A c c e s s ,   E r r o r   N u m b e r :  � o   w x���� 0 errnum errNum� m   y |��
�� 
TEXT��  ��  � o   } ���
�� 
ret � o   � ����� 0 errmsg errMsg��  � ��� l  � ���������  ��  ��  � ��� I  � �����
�� .rdwrseofnull���     ****� o   � ����� 0 fileref fileRef� �����
�� 
set2� m   � �����  ��  � ��� l  � ���������  ��  ��  � ��� Q   � ����� I  � �����
�� .rdwrwritnull���     ****� o   � ����� 0 dataout dataOut� �����
�� 
refn� o   � ����� 0 fileref fileRef��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � I  � ������
�� .sysodlogaskr        TEXT� b   � ���� b   � ���� l  � ������� c   � ���� b   � ���� m   � ��� ��� * W r i t e ,   E r r o r   N u m b e r :  � o   � ����� 0 errnum errNum� m   � ���
�� 
TEXT��  ��  � o   � ���
�� 
ret � o   � ����� 0 errmsg errMsg��  �    l  � ���������  ��  ��    I  � ���
�� .rdwrseofnull���     **** o   � ����� 0 fileref fileRef ����
�� 
set2 l  � ����� n   � �	 1   � ���
�� 
leng	 o   � ����� 0 dataout dataOut��  ��  ��   

 l  � ���������  ��  ��    Q   � � I  � �����
�� .rdwrclosnull���     **** o   � ����� 0 fileref fileRef��   R      ��
�� .ascrerr ****      � **** o      ���� 0 errmsg errMsg ����
�� 
errn o      ���� 0 errnum errNum��   I  � �����
�� .sysodlogaskr        TEXT b   � � b   � � l  � ����� c   � � b   � � m   � � �   * C l o s e ,   E r r o r   N u m b e r :   o   � ����� 0 errnum errNum m   � ���
�� 
TEXT��  ��   o   � ���
�� 
ret  o   � ����� 0 errmsg errMsg��   !"! l  � ���������  ��  ��  " #$# I  � ���%��
�� .sysodlogaskr        TEXT% m   � �&& �''  D o n e��  $ (��( l  � ���������  ��  ��  ��  S )*) l     ��������  ��  ��  * +,+ l     ��������  ��  ��  , -.- l     ��������  ��  ��  . /0/ l     ��������  ��  ��  0 121 p    33 ������ 0 keywords keyWords��  2 454 p    66 ������ 0 folders  ��  5 787 p    99 ������ 0 folderstocopy FoldersToCopy��  8 :;: p    << ������ $0 thechosenfolders theChosenFolders��  ; =>= l     ��������  ��  ��  > ?@? l     ��AB��  A  createTextFile(folders)   B �CC . c r e a t e T e x t F i l e ( f o l d e r s )@ DED l  � �F����F r   � �GHG o   � ����� 0 folders  H o      ���� 0 folderstocopy FoldersToCopy��  ��  E IJI l     ��������  ��  ��  J KLK l     ��MN��  M , &display dialog length of FoldersToCopy   N �OO L d i s p l a y   d i a l o g   l e n g t h   o f   F o l d e r s T o C o p yL PQP l     �������  ��  �  Q RSR l     �~�}�|�~  �}  �|  S TUT l     �{VW�{  V # if length of FoldersToCopy >0   W �XX : i f   l e n g t h   o f   F o l d e r s T o C o p y   > 0U YZY l  � �[�z�y[ r   � �\]\ I  � ��x^_
�x .gtqpchltns    @   @ ns  ^ o   � ��w�w 0 folderstocopy FoldersToCopy_ �v`a
�v 
prmp` m   � �bb �cc ( C h o o s e   f i l e s   t o   c o p ya �ud�t
�u 
mlsld m   � ��s
�s boovtrue�t  ] o      �r�r $0 thechosenfolders theChosenFolders�z  �y  Z efe l     �q�p�o�q  �p  �o  f ghg i    iji I      �n�m�l�n 0 copyfolders copyFolders�m  �l  j k     0kk lml X     .n�kon k    )pp qrq l   �jst�j  s  display dialog folder   t �uu * d i s p l a y   d i a l o g   f o l d e rr vwv l   �ixy�i  x  exit repeat   y �zz  e x i t   r e p e a tw {|{ l   �h}~�h  } $ Assing Folder to source folder   ~ � < A s s i n g   F o l d e r   t o   s o u r c e   f o l d e r| ��� l   �g���g  � ? 9set cur_source to "'" & serverSource & "/" & folder & "'"   � ��� r s e t   c u r _ s o u r c e   t o   " ' "   &   s e r v e r S o u r c e   &   " / "   &   f o l d e r   &   " ' "� ��� r    ��� b    ��� b    ��� m    �� ���  '� 1    �f
�f 
asdr� m    �� ���  '� o      �e�e 0 
cur_source  � ��� l   �d���d  �   Copying happens here   � ��� *   C o p y i n g   h a p p e n s   h e r e� ��� I   '�c��b
�c .sysoexecTEXT���     TEXT� b    #��� b    !��� b    ��� b    ��� b    ��� m    �� ���  c p   - R f v   /� o    �a�a 0 
cur_source  � m    �� ���   � m    �� ���  '� o     �`�` 
0 target  � m   ! "�� ���  '�b  � ��� l  ( (�_���_  � < 6 Only use exit while testing to avoid complete looping   � ��� l   O n l y   u s e   e x i t   w h i l e   t e s t i n g   t o   a v o i d   c o m p l e t e   l o o p i n g� ��^� l  ( (�]�\�[�]  �\  �[  �^  
�k 
asdro o    �Z�Z $0 thechosenfolders theChosenFoldersm ��Y� l  / /�X�W�V�X  �W  �V  �Y  h ��� l     �U�T�S�U  �T  �S  � ��� l     �R�Q�P�R  �Q  �P  � ��� l     �O�N�M�O  �N  �M  � ��� l  � ���L�K� r   � ���� n   � ���� 1   � ��J
�J 
leng� o   � ��I�I 0 folderstocopy FoldersToCopy� o      �H�H 0 n  �L  �K  � ��G� l  ���F�E� Z   ����D�C� ?   � ���� o   � ��B�B 0 n  � m   � ��A�A  � I   ��@�?�>�@ 0 copyfolders copyFolders�?  �>  �D  �C  �F  �E  �G       �=�����=  � �<�;�:�<  0 createtextfile createTextFile�; 0 copyfolders copyFolders
�: .aevtoappnull  �   � ****� �9U�8�7���6�9  0 createtextfile createTextFile�8 �5��5 �  �4�4 0 mylist myList�7  � �3�2�1�0�/�.�-�,�3 0 mylist myList�2 0 
thenewfile 
theNewFile�1 0 final Final�0 0 theitem theItem�/ 0 dataout dataOut�. 0 fileref fileRef�- 0 errmsg errMsg�, 0 errnum errNum� "�+o�*s�)�(�'�&�%�$����#�"�!�� ��������������&
�+ 
prmt
�* 
dfnm
�) 
dflc
�( afdrdesk
�' .earsffdralis        afdr�& 
�% .sysonwflfile    ��� null
�$ 
ctxt
�# .corecnte****       ****
�" 
kocl
�! 
cobj
�  
perm
� .rdwropenshor       file� 0 errmsg errMsg� ���
� 
errn� 0 errnum errNum�  
� 
TEXT
� 
ret 
� .sysodlogaskr        TEXT
� 
set2
� .rdwrseofnull���     ****
� 
refn
� .rdwrwritnull���     ****
� 
leng
� .rdwrclosnull���     ****�6 �*������j � �&E�O�� 
��%E�Y hO�E�O�E�O�j k # �[��l kh ��%a %E�[OY��Y hO�E�O �a el E�W X  a �%a &_ %�%j O�a jl O �a �l W X  a �%a &_ %�%j O�a �a ,l O 
�j W X  a  �%a &_ %�%j Oa !j OP� �j������ 0 copyfolders copyFolders�  �  � ��
� 
asdr� 0 
cur_source  � ��
�	���������� $0 thechosenfolders theChosenFolders
�
 
kocl
�	 
cobj
� .corecnte****       ****� 
0 target  
� .sysoexecTEXT���     TEXT� 1 -�[��l kh  �%�%E�O�%�%�%�%�%j OP[OY��OP� �������
� .aevtoappnull  �   � ****� k    ��  #��  >��  g��  r��  ���  ���  ���  ���  ��� �� �� 8�� G�� D�� Y�� ��� ���  �  �  � � �  0 elem  � . (�� F J N R V Z ]���� l�� w�� � ��� ����������� � � � � �%'������������b���������������� 0 serversource serverSource�� �� 0 keywords keyWords�� 0 
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
prmp
�� 
mlsl�� 
�� .gtqpchltns    @   @ ns  �� $0 thechosenfolders theChosenFolders
�� 
leng�� 0 n  �� 0 copyfolders copyFolders��E�O��������vE�O�E�O�E�O�E�Oa �%E` Oa E` OjE` O ]�[a a l kh  _ k _ a %E` Y _ a %E` O_ a %�%a %�%a %E` O_ kE` OP[OY��O_ a %E` Oa �%_ %a %E` O_ j  E` !O_ !a "-E` #O_ #E` $O_ $a %a &a 'ea ( )E` *O_ $a +,E` ,O_ ,j 
*j+ -Y hascr  ��ޭ