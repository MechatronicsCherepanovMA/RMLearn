function v = fvd(mfr,sfr,d)
%������� ���������� �������� ����� ������������� ����� ������� �� �������
s = pi * ((d/2)^2);
rrf = (mfr.*(sfr./100));
v = rrf./s;