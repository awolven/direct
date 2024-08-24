(in-package :direct)

(defun intersection-planar-rational-quadratic-bezier/planar-rational-cubic-bezier-c2
    (xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2 xb3 yb3 wb3)
  (declare (ignore xb3 yb3 wb3))
  (LET* ((G634 (EXPT WA0 2))
	 (G635 (EXPT WA2 2))
	 (G636 (EXPT WB0 2))
	 (G638 (* -30 G634 G635 WB0 WB1))
	 (G639 (EXPT WB1 2))
	 (G641 (* 6 G634 G635 WB0 WB2))
	 (G642
           (+ (* 15 G634 G635 G636) G638 (* 9 G634 G635 G639)
              G641))
	 (G643 (EXPT XA2 2))
	 (G645 (* -30 G634 G635 G636))
	 (G646 (* 30 G634 G635 WB0 WB1))
	 (G648 (+ G645 G646 (* -6 G634 G635 WB0 WB2)))
	 (G650 (EXPT XB0 2))
	 (G651 (* 15 G634 G635 G636 G650))
	 (G652 (* -18 G634 G635 G639))
	 (G653 (+ G646 G652))
	 (G655 (* -30 G634 G635 WB0 WB1 XB0))
	 (G658 (EXPT XB1 2))
	 (G659 (* 9 G634 G635 G639 G658))
	 (G660 (* -6 G634 G635 WB0 WB2 XA2))
	 (G661 (* 6 G634 G635 WB0 WB2 XB0))
	 (G667 (EXPT WA1 2))
	 (G668 (* -60 WA0 G667 WA2 G636))
	 (G669 (* 120 WA0 G667 WA2 WB0 WB1))
	 (G670 (* -36 WA0 G667 WA2 G639))
	 (G671 (* -24 WA0 G667 WA2 WB0 WB2))
	 (G672 (+ G668 G669 G670 G671))
	 (G674 (* 60 WA0 G667 WA2 G636))
	 (G675 (* -60 WA0 G667 WA2 WB0 WB1))
	 (G677 (+ G674 G675 (* 12 WA0 G667 WA2 WB0 WB2)))
	 (G678 (* G677 XA1))
	 (G682 (* -60 WA0 G667 WA2 G636 G650))
	 (G683 (* 36 WA0 G667 WA2 G639))
	 (G684 (+ G675 G683))
	 (G685 (* G684 XA1))
	 (G687 (* 120 WA0 G667 WA2 WB0 WB1 XB0))
	 (G690 (* -36 WA0 G667 WA2 G639 G658))
	 (G691 (* 12 WA0 G667 WA2 WB0 WB2 XA1))
	 (G692 (* 12 WA0 G667 WA2 WB0 WB2 XA2))
	 (G693 (* -24 WA0 G667 WA2 WB0 WB2 XB0))
	 (G700
           (+ G674 (* -120 WA0 G667 WA2 WB0 WB1) G683
              (* 24 WA0 G667 WA2 WB0 WB2)))
	 (G702 (* 60 WA0 G667 WA2 WB0 WB1))
	 (G704 (+ G668 G702 (* -12 WA0 G667 WA2 WB0 WB2)))
	 (G710 (+ G702 G670))
	 (G725 (EXPT XA1 2))
	 (G732 (+ (* 30 G634 G635 G636) G638 G641))
	 (G733 (* G732 XA0))
	 (G735 (+ (* -120 WA0 G667 WA2 G636) G669 G671))
	 (G742 (+ (* 60 WA0 G667 WA2) (* -30 G634 G635)))
	 (G745 (+ G638 (* 18 G634 G635 G639)))
	 (G746 (* G745 XA0))
	 (G748 (+ G669 (* -72 WA0 G667 WA2 G639)))
	 (G753 (+ (* -120 WA0 G667 WA2) (* 60 G634 G635)))
	 (G759 (+ (* 36 WA0 G667 WA2) (* -18 G634 G635)))
	 (G761 (* 6 G634 G635 WB0 WB2 XA0))
	 (G762 (* -24 WA0 G667 WA2 WB0 WB2 XA1))
	 (G766 (+ (* 24 WA0 G667 WA2) (* -12 G634 G635)))
	 (G779 (* 12 WA0 G667 WA2 WB0 WB2 XA0))
	 (G786 (EXPT XA0 2))
	 (G792 (* -6 G634 G635 WB0 WB2 XA0))
	 (G798 (* G704 G725))
	 (G803 (* 60 WA0 G667 WA2 G636 XA1))
	 (G806 (+ (* -60 WA0 G667 WA2) (* 30 G634 G635)))
	 (G811 (* -60 WA0 G667 WA2 WB0 WB1 XA1))
	 (G813
           (+ (* 30 G634 G635 WB0 WB1 XA0) G811 (* G742 WB0 WB1 XA2)))
	 (G817 (+ (* -12 WA0 G667 WA2) (* 6 G634 G635)))
	 (G819 (+ G792 G691 (* G817 WB0 WB2 XA2)))
	 (G823 (* G677 XA0 XA1))
	 (G833 (* 120 WA0 G667 WA2 WB0 WB1 XA1))
	 (G835
           (+ (* -60 WA0 G667 WA2 WB0 WB1 XA0) G833
              (* -60 WA0 G667 WA2 WB0 WB1 XA2)))
	 (G837 (+ G779 G762 G692))
	 (G849
           (+ (* G742 WB0 WB1 XA0) G811 (* 30 G634 G635 WB0 WB1 XA2)))
	 (G852 (+ (* G817 WB0 WB2 XA0) G691 G660))
	 (G869 (* G710 G725))
	 (G875 (* 36 WA0 G667 WA2 G639 XA1))
	 (G878 (+ (* -36 WA0 G667 WA2) (* 18 G634 G635)))
	 (G884 (* G684 XA0 XA1))
	 (G927 (* -12 WA0 G667 WA2 WB0 WB2 G725))
	 (G934 (* 12 WA0 G667 WA2 WB0 WB2 XA0 XA1)))
    (+
     (*
      (+ (* G642 G643) (* G648 XA2 XB0) G651
	 (* (+ (* G653 XA2) G655) XB1) G659 (* (+ G660 G661) XB2))
      (EXPT YA0 2))
     (*
      (+ (* G672 XA1 XA2) (* (+ G678 (* G677 XA2)) XB0) G682
	 (* (+ G685 (* G684 XA2) G687) XB1) G690
	 (* (+ G691 G692 G693) XB2))
      YA0 YA1)
     (*
      (+ (* G700 XA0 XA2) (* (+ (* G704 XA0) (* G704 XA2)) XB0)
	 (* 60 WA0 G667 WA2 G636 G650)
	 (* (+ (* G710 XA0) (* G710 XA2) (* -120 WA0 G667 WA2 WB0 WB1 XB0))
            XB1)
	 (* 36 WA0 G667 WA2 G639 G658)
	 (*
          (+ (* -12 WA0 G667 WA2 WB0 WB2 XA0)
             (* -12 WA0 G667 WA2 WB0 WB2 XA2)
             (* 24 WA0 G667 WA2 WB0 WB2 XB0))
          XB2))
      (EXPT YA1 2))
     (*
      (+
       (*
	(+ (* G700 G725)
           (*
            (+ G645 (* 60 G634 G635 WB0 WB1) G652
               (* -12 G634 G635 WB0 WB2))
            XA0 XA2)
           (* (+ G733 (* G735 XA1) (* G732 XA2)) XB0)
           (* G742 G636 G650)
           (* (+ G746 (* G748 XA1) (* G745 XA2) (* G753 WB0 WB1 XB0))
              XB1)
           (* G759 G639 G658)
           (*
            (+ G761 G762 (* 6 G634 G635 WB0 WB2 XA2)
               (* G766 WB0 WB2 XB0))
            XB2))
	YA0)
       (*
	(+ (* G672 XA0 XA1) (* (+ (* G677 XA0) G678) XB0) G682
           (* (+ (* G684 XA0) G685 G687) XB1) G690
           (* (+ G779 G691 G693) XB2))
	YA1))
      YA2)
     (*
      (+ (* G642 G786) (* G648 XA0 XB0) G651
	 (* (+ (* G653 XA0) G655) XB1) G659 (* (+ G792 G661) XB2))
      (EXPT YA2 2))
     (*
      (+
       (*
	(+ G798 (* (+ G733 G678) XA2) (* G648 G643)
           (* (+ (* -30 G634 G635 G636 XA0) G803 (* G806 G636 XA2))
              XB0)
           (* G813 XB1) (* G819 XB2))
	YA0)
       (*
	(+ G823 (* (+ (* G735 XA0) G678) XA2)
           (*
            (+ (* 60 WA0 G667 WA2 G636 XA0)
               (* -120 WA0 G667 WA2 G636 XA1)
               (* 60 WA0 G667 WA2 G636 XA2))
            XB0)
           (* G835 XB1) (* G837 XB2))
	YA1)
       (*
	(+ (* G648 G786) G823 G798 (* G732 XA0 XA2)
           (* (+ (* G806 G636 XA0) G803 (* -30 G634 G635 G636 XA2))
              XB0)
           (* G849 XB1) (* G852 XB2))
	YA2))
      YB0)
     (*
      (+ (* 15 G634 G635 G636 G786) (* -60 WA0 G667 WA2 G636 XA0 XA1)
	 (* 60 WA0 G667 WA2 G636 G725)
	 (* (+ (* G742 G636 XA0) (* -60 WA0 G667 WA2 G636 XA1)) XA2)
	 (* 15 G634 G635 G636 G643))
      (EXPT YB0 2))
     (*
      (+
       (*
	(+ G869 (* (+ G746 G685) XA2) (* G653 G643) (* G813 XB0)
           (* (+ (* -18 G634 G635 G639 XA0) G875 (* G878 G639 XA2))
              XB1))
	YA0)
       (*
	(+ G884 (* (+ (* G748 XA0) G685) XA2) (* G835 XB0)
           (*
            (+ (* 36 WA0 G667 WA2 G639 XA0) (* -72 WA0 G667 WA2 G639 XA1)
               (* 36 WA0 G667 WA2 G639 XA2))
            XB1))
	YA1)
       (*
	(+ (* G653 G786) G884 G869 (* G745 XA0 XA2) (* G849 XB0)
           (* (+ (* G878 G639 XA0) G875 (* -18 G634 G635 G639 XA2))
              XB1))
	YA2)
       (*
	(+ (* -30 G634 G635 WB0 WB1 G786)
           (* 120 WA0 G667 WA2 WB0 WB1 XA0 XA1)
           (* -120 WA0 G667 WA2 WB0 WB1 G725)
           (* (+ (* G753 WB0 WB1 XA0) G833) XA2)
           (* -30 G634 G635 WB0 WB1 G643))
	YB0))
      YB1)
     (*
      (+ (* 9 G634 G635 G639 G786) (* -36 WA0 G667 WA2 G639 XA0 XA1)
	 (* 36 WA0 G667 WA2 G639 G725)
	 (* (+ (* G759 G639 XA0) (* -36 WA0 G667 WA2 G639 XA1)) XA2)
	 (* 9 G634 G635 G639 G643))
      (EXPT YB1 2))
     (*
      (+
       (*
	(+ G927 (* (+ G761 G691) XA2) (* -6 G634 G635 WB0 WB2 G643)
           (* G819 XB0))
	YA0)
       (*
	(+ G934 (* (+ (* -24 WA0 G667 WA2 WB0 WB2 XA0) G691) XA2)
           (* G837 XB0))
	YA1)
       (*
	(+ (* -6 G634 G635 WB0 WB2 G786) G934 G927
           (* 6 G634 G635 WB0 WB2 XA0 XA2) (* G852 XB0))
	YA2)
       (*
	(+ (* 6 G634 G635 WB0 WB2 G786)
           (* -24 WA0 G667 WA2 WB0 WB2 XA0 XA1)
           (* 24 WA0 G667 WA2 WB0 WB2 G725)
           (* (+ (* G766 WB0 WB2 XA0) G762) XA2)
           (* 6 G634 G635 WB0 WB2 G643))
	YB0))
      YB2))))
