(in-package :direct)

(defun planar-rational-quadratic-bezier/planar-rational-quadratic-bezier-c2
    (xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2)
  (LET* ((G622 (EXPT WA0 2))
	 (G623 (EXPT WA2 2))
	 (G624 (EXPT WB0 2))
	 (G626 (* -12 G622 G623 WB0 WB1))
	 (G627 (EXPT WB1 2))
	 (G629 (* 2 G622 G623 WB0 WB2))
	 (G630
           (+ (* 6 G622 G623 G624) G626 (* 4 G622 G623 G627)
              G629))
	 (G631 (EXPT XA2 2))
	 (G633 (* -12 G622 G623 G624))
	 (G634 (* 12 G622 G623 WB0 WB1))
	 (G636 (+ G633 G634 (* -2 G622 G623 WB0 WB2)))
	 (G638 (EXPT XB0 2))
	 (G639 (* 6 G622 G623 G624 G638))
	 (G640 (* -8 G622 G623 G627))
	 (G641 (+ G634 G640))
	 (G643 (* -12 G622 G623 WB0 WB1 XB0))
	 (G646 (EXPT XB1 2))
	 (G647 (* 4 G622 G623 G627 G646))
	 (G648 (* -2 G622 G623 WB0 WB2 XA2))
	 (G649 (* 2 G622 G623 WB0 WB2 XB0))
	 (G655 (EXPT WA1 2))
	 (G656 (* -24 WA0 G655 WA2 G624))
	 (G657 (* 48 WA0 G655 WA2 WB0 WB1))
	 (G658 (* -16 WA0 G655 WA2 G627))
	 (G659 (* -8 WA0 G655 WA2 WB0 WB2))
	 (G660 (+ G656 G657 G658 G659))
	 (G662 (* 24 WA0 G655 WA2 G624))
	 (G663 (* -24 WA0 G655 WA2 WB0 WB1))
	 (G665 (+ G662 G663 (* 4 WA0 G655 WA2 WB0 WB2)))
	 (G666 (* G665 XA1))
	 (G670 (* -24 WA0 G655 WA2 G624 G638))
	 (G671 (* 16 WA0 G655 WA2 G627))
	 (G672 (+ G663 G671))
	 (G673 (* G672 XA1))
	 (G675 (* 48 WA0 G655 WA2 WB0 WB1 XB0))
	 (G678 (* -16 WA0 G655 WA2 G627 G646))
	 (G679 (* 4 WA0 G655 WA2 WB0 WB2 XA1))
	 (G680 (* 4 WA0 G655 WA2 WB0 WB2 XA2))
	 (G681 (* -8 WA0 G655 WA2 WB0 WB2 XB0))
	 (G688
           (+ G662 (* -48 WA0 G655 WA2 WB0 WB1) G671
              (* 8 WA0 G655 WA2 WB0 WB2)))
	 (G690 (* 24 WA0 G655 WA2 WB0 WB1))
	 (G692 (+ G656 G690 (* -4 WA0 G655 WA2 WB0 WB2)))
	 (G698 (+ G690 G658))
	 (G713 (EXPT XA1 2))
	 (G720 (+ (* 12 G622 G623 G624) G626 G629))
	 (G721 (* G720 XA0))
	 (G723 (+ (* -48 WA0 G655 WA2 G624) G657 G659))
	 (G730 (+ (* 24 WA0 G655 WA2) (* -12 G622 G623)))
	 (G733 (+ G626 (* 8 G622 G623 G627)))
	 (G734 (* G733 XA0))
	 (G736 (+ G657 (* -32 WA0 G655 WA2 G627)))
	 (G741 (+ (* -48 WA0 G655 WA2) (* 24 G622 G623)))
	 (G747 (+ (* 16 WA0 G655 WA2) (* -8 G622 G623)))
	 (G749 (* 2 G622 G623 WB0 WB2 XA0))
	 (G750 (* -8 WA0 G655 WA2 WB0 WB2 XA1))
	 (G754 (+ (* 8 WA0 G655 WA2) (* -4 G622 G623)))
	 (G767 (* 4 WA0 G655 WA2 WB0 WB2 XA0))
	 (G774 (EXPT XA0 2))
	 (G780 (* -2 G622 G623 WB0 WB2 XA0))
	 (G786 (* G692 G713))
	 (G791 (* 24 WA0 G655 WA2 G624 XA1))
	 (G794 (+ (* -24 WA0 G655 WA2) (* 12 G622 G623)))
	 (G799 (* -24 WA0 G655 WA2 WB0 WB1 XA1))
	 (G801
           (+ (* 12 G622 G623 WB0 WB1 XA0) G799 (* G730 WB0 WB1 XA2)))
	 (G805 (+ (* -4 WA0 G655 WA2) (* 2 G622 G623)))
	 (G807 (+ G780 G679 (* G805 WB0 WB2 XA2)))
	 (G811 (* G665 XA0 XA1))
	 (G821 (* 48 WA0 G655 WA2 WB0 WB1 XA1))
	 (G823
           (+ (* -24 WA0 G655 WA2 WB0 WB1 XA0) G821
              (* -24 WA0 G655 WA2 WB0 WB1 XA2)))
	 (G825 (+ G767 G750 G680))
	 (G837
           (+ (* G730 WB0 WB1 XA0) G799 (* 12 G622 G623 WB0 WB1 XA2)))
	 (G840 (+ (* G805 WB0 WB2 XA0) G679 G648))
	 (G857 (* G698 G713))
	 (G863 (* 16 WA0 G655 WA2 G627 XA1))
	 (G866 (+ (* -16 WA0 G655 WA2) (* 8 G622 G623)))
	 (G872 (* G672 XA0 XA1))
	 (G915 (* -4 WA0 G655 WA2 WB0 WB2 G713))
	 (G922 (* 4 WA0 G655 WA2 WB0 WB2 XA0 XA1)))
    (+
     (*
      (+ (* G630 G631) (* G636 XA2 XB0) G639
	 (* (+ (* G641 XA2) G643) XB1) G647 (* (+ G648 G649) XB2))
      (EXPT YA0 2))
     (*
      (+ (* G660 XA1 XA2) (* (+ G666 (* G665 XA2)) XB0) G670
	 (* (+ G673 (* G672 XA2) G675) XB1) G678
	 (* (+ G679 G680 G681) XB2))
      YA0 YA1)
     (*
      (+ (* G688 XA0 XA2) (* (+ (* G692 XA0) (* G692 XA2)) XB0)
	 (* 24 WA0 G655 WA2 G624 G638)
	 (* (+ (* G698 XA0) (* G698 XA2) (* -48 WA0 G655 WA2 WB0 WB1 XB0))
            XB1)
	 (* 16 WA0 G655 WA2 G627 G646)
	 (*
          (+ (* -4 WA0 G655 WA2 WB0 WB2 XA0) (* -4 WA0 G655 WA2 WB0 WB2 XA2)
             (* 8 WA0 G655 WA2 WB0 WB2 XB0))
          XB2))
      (EXPT YA1 2))
     (*
      (+
       (*
	(+ (* G688 G713)
           (*
            (+ G633 (* 24 G622 G623 WB0 WB1) G640
               (* -4 G622 G623 WB0 WB2))
            XA0 XA2)
           (* (+ G721 (* G723 XA1) (* G720 XA2)) XB0)
           (* G730 G624 G638)
           (* (+ G734 (* G736 XA1) (* G733 XA2) (* G741 WB0 WB1 XB0))
              XB1)
           (* G747 G627 G646)
           (*
            (+ G749 G750 (* 2 G622 G623 WB0 WB2 XA2)
               (* G754 WB0 WB2 XB0))
            XB2))
	YA0)
       (*
	(+ (* G660 XA0 XA1) (* (+ (* G665 XA0) G666) XB0) G670
           (* (+ (* G672 XA0) G673 G675) XB1) G678
           (* (+ G767 G679 G681) XB2))
	YA1))
      YA2)
     (*
      (+ (* G630 G774) (* G636 XA0 XB0) G639
	 (* (+ (* G641 XA0) G643) XB1) G647 (* (+ G780 G649) XB2))
      (EXPT YA2 2))
     (*
      (+
       (*
	(+ G786 (* (+ G721 G666) XA2) (* G636 G631)
           (* (+ (* -12 G622 G623 G624 XA0) G791 (* G794 G624 XA2))
              XB0)
           (* G801 XB1) (* G807 XB2))
	YA0)
       (*
	(+ G811 (* (+ (* G723 XA0) G666) XA2)
           (*
            (+ (* 24 WA0 G655 WA2 G624 XA0) (* -48 WA0 G655 WA2 G624 XA1)
               (* 24 WA0 G655 WA2 G624 XA2))
            XB0)
           (* G823 XB1) (* G825 XB2))
	YA1)
       (*
	(+ (* G636 G774) G811 G786 (* G720 XA0 XA2)
           (* (+ (* G794 G624 XA0) G791 (* -12 G622 G623 G624 XA2))
              XB0)
           (* G837 XB1) (* G840 XB2))
	YA2))
      YB0)
     (*
      (+ (* 6 G622 G623 G624 G774) (* -24 WA0 G655 WA2 G624 XA0 XA1)
	 (* 24 WA0 G655 WA2 G624 G713)
	 (* (+ (* G730 G624 XA0) (* -24 WA0 G655 WA2 G624 XA1)) XA2)
	 (* 6 G622 G623 G624 G631))
      (EXPT YB0 2))
     (*
      (+
       (*
	(+ G857 (* (+ G734 G673) XA2) (* G641 G631) (* G801 XB0)
           (* (+ (* -8 G622 G623 G627 XA0) G863 (* G866 G627 XA2))
              XB1))
	YA0)
       (*
	(+ G872 (* (+ (* G736 XA0) G673) XA2) (* G823 XB0)
           (*
            (+ (* 16 WA0 G655 WA2 G627 XA0) (* -32 WA0 G655 WA2 G627 XA1)
               (* 16 WA0 G655 WA2 G627 XA2))
            XB1))
	YA1)
       (*
	(+ (* G641 G774) G872 G857 (* G733 XA0 XA2) (* G837 XB0)
           (* (+ (* G866 G627 XA0) G863 (* -8 G622 G623 G627 XA2))
              XB1))
	YA2)
       (*
	(+ (* -12 G622 G623 WB0 WB1 G774)
           (* 48 WA0 G655 WA2 WB0 WB1 XA0 XA1)
           (* -48 WA0 G655 WA2 WB0 WB1 G713)
           (* (+ (* G741 WB0 WB1 XA0) G821) XA2)
           (* -12 G622 G623 WB0 WB1 G631))
	YB0))
      YB1)
     (*
      (+ (* 4 G622 G623 G627 G774) (* -16 WA0 G655 WA2 G627 XA0 XA1)
	 (* 16 WA0 G655 WA2 G627 G713)
	 (* (+ (* G747 G627 XA0) (* -16 WA0 G655 WA2 G627 XA1)) XA2)
	 (* 4 G622 G623 G627 G631))
      (EXPT YB1 2))
     (*
      (+
       (*
	(+ G915 (* (+ G749 G679) XA2) (* -2 G622 G623 WB0 WB2 G631)
           (* G807 XB0))
	YA0)
       (*
	(+ G922 (* (+ (* -8 WA0 G655 WA2 WB0 WB2 XA0) G679) XA2)
           (* G825 XB0))
	YA1)
       (*
	(+ (* -2 G622 G623 WB0 WB2 G774) G922 G915
           (* 2 G622 G623 WB0 WB2 XA0 XA2) (* G840 XB0))
	YA2)
       (*
	(+ (* 2 G622 G623 WB0 WB2 G774)
           (* -8 WA0 G655 WA2 WB0 WB2 XA0 XA1)
           (* 8 WA0 G655 WA2 WB0 WB2 G713)
           (* (+ (* G754 WB0 WB2 XA0) G750) XA2)
           (* 2 G622 G623 WB0 WB2 G631))
	YB0))
      YB2))))
