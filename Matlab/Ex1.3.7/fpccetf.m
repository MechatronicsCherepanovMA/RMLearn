function t = fpccetf(mfr,pd,lp,n,sfr)
%pneumatic cylinder calculation t(p)
%������� ���������� ������ ������� ���������� �������������� ��� �������
%��������������� ��� ������������ ������� �  % �������������.
%������� ��� ������ ������� ������ ����������.
fv = (lp *(pi * ((pd)/2)^2))* n;
t = fv./(mfr.*(sfr./100));
