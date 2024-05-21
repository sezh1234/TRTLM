%% Define Raw Parameters
RawParaSet = struct;
RawParaSet.geometry.L_neg = 46.6e-6;
RawParaSet.geometry.L_sep = 18.7e-6;
RawParaSet.geometry.L_pos = 43e-6;
RawParaSet.geometry.L_cc_neg = 5e-6;
RawParaSet.geometry.L_cc_pos = 5e-6;
RawParaSet.geometry.r_s_neg = 6.3e-6;
RawParaSet.geometry.r_s_pos = 2.13e-6;

RawParaSet.geometry.electrode_Len = 2;
RawParaSet.geometry.electrode_Wid = 0.5;
RawParaSet.geometry.Area = RawParaSet.geometry.electrode_Len*...
    RawParaSet.geometry.electrode_Wid;
RawParaSet.geometry.tab_neg_Len = 0.05;
RawParaSet.geometry.tab_neg_Wid = 0.01;
RawParaSet.geometry.tab_pos_Len = 0.05;
RawParaSet.geometry.tab_pos_Wid = 0.01;

RawParaSet.porosity.eps_l_neg = 0.29;
RawParaSet.porosity.eps_l_sep = 1;
RawParaSet.porosity.eps_l_pos = 0.21;

RawParaSet.porosity.eps_s_neg = 0.49;
RawParaSet.porosity.eps_s_pos = 0.57;
RawParaSet.porosity.Bruggeman_neg = 1.52;
RawParaSet.porosity.Bruggeman_sep = 1.62;
RawParaSet.porosity.Bruggeman_pos = 1.44;

RawParaSet.electrical.sigma_s_neg = 100;
RawParaSet.electrical.sigma_s_pos = 10;
RawParaSet.electrical.sigma_l = 1;
RawParaSet.electrical.sigma_cc_neg = 3.774e7;
RawParaSet.electrical.sigma_cc_pos = 5.998e7;

RawParaSet.masstransport.D_s_neg = 3e-14;%1e-15~1e-13
RawParaSet.masstransport.D_s_pos = 5e-15;%1e-15~1e-13
RawParaSet.masstransport.D_l = 2.5e-10;
RawParaSet.masstransport.tplus = 0.26;

RawParaSet.kinetics.k_ct_neg = 2e-11;%5e-12~5e-10
RawParaSet.kinetics.k_ct_pos = 2e-11;%2e-12~2e-10
RawParaSet.kinetics.f_a = 0.2;

RawParaSet.concentraion.c_s_max_neg = 31390;
RawParaSet.concentraion.c_s_max_pos = 48390;
RawParaSet.concentraion.soc_low_neg = 0.1;
RawParaSet.concentraion.soc_top_neg = 0.8;
RawParaSet.concentraion.soc_low_pos = 0.05;
RawParaSet.concentraion.soc_top_pos = 0.8;
RawParaSet.concentraion.c_l0 = 1000;

RawParaSet.constant.F = 96485;
RawParaSet.constant.R = 8.3145;

%% Load Parameters
Area = Simulink.Parameter; Area.Value = RawParaSet.geometry.Area; Area.DataType = "single";
L_neg = RawParaSet.geometry.L_neg;
L_sep = RawParaSet.geometry.L_sep;
L_pos = RawParaSet.geometry.L_pos;
r_s_neg = Simulink.Parameter; r_s_neg.Value = RawParaSet.geometry.r_s_neg; r_s_neg.DataType = "single";
r_s_pos = Simulink.Parameter; r_s_pos.Value = RawParaSet.geometry.r_s_pos; r_s_pos.DataType = "single";

eps_l_neg = RawParaSet.porosity.eps_l_neg;
eps_l_sep = RawParaSet.porosity.eps_l_sep;
eps_l_pos = RawParaSet.porosity.eps_l_pos;
eps_s_neg = RawParaSet.porosity.eps_s_neg;
eps_s_pos = RawParaSet.porosity.eps_s_pos;

Bruggeman_neg = RawParaSet.porosity.Bruggeman_neg;
Bruggeman_sep = RawParaSet.porosity.Bruggeman_sep;
Bruggeman_pos = RawParaSet.porosity.Bruggeman_pos;

sigma_s_neg = Simulink.Parameter; sigma_s_neg.Value = RawParaSet.electrical.sigma_s_neg; sigma_s_neg.DataType = 'single';
sigma_s_pos = Simulink.Parameter; sigma_s_pos.Value = RawParaSet.electrical.sigma_s_pos; sigma_s_pos.DataType = 'single';
sigma_l = Simulink.Parameter; sigma_l.Value = RawParaSet.electrical.sigma_l; sigma_l.DataType = 'single';

D_s_neg = Simulink.Parameter; D_s_neg.Value = RawParaSet.masstransport.D_s_neg; D_s_neg.DataType = 'single';
D_s_pos = Simulink.Parameter; D_s_pos.Value = RawParaSet.masstransport.D_s_pos; D_s_pos.DataType = 'single';
D_l = RawParaSet.masstransport.D_l;
tplus = Simulink.Parameter; tplus.Value = RawParaSet.masstransport.tplus; tplus.DataType = 'single';

k_ct_neg = Simulink.Parameter; k_ct_neg.Value = RawParaSet.kinetics.k_ct_neg; k_ct_neg.DataType = 'single';
k_ct_pos = Simulink.Parameter; k_ct_pos.Value = RawParaSet.kinetics.k_ct_pos; k_ct_pos.DataType = 'single';
f_a = Simulink.Parameter; f_a.Value = RawParaSet.kinetics.f_a; f_a.DataType = 'single';

c_s_max_neg = Simulink.Parameter; c_s_max_neg.Value = RawParaSet.concentraion.c_s_max_neg; c_s_max_neg.DataType = 'single';
c_s_max_pos = Simulink.Parameter; c_s_max_pos.Value = RawParaSet.concentraion.c_s_max_pos; c_s_max_pos.DataType = 'single';
soc_low_neg = RawParaSet.concentraion.soc_low_neg;
soc_top_neg = RawParaSet.concentraion.soc_top_neg;
soc_low_pos = RawParaSet.concentraion.soc_low_pos;
soc_top_pos = RawParaSet.concentraion.soc_top_pos;
c_l0 = Simulink.Parameter; c_l0.Value = RawParaSet.concentraion.c_l0; c_l0.DataType = 'single';

F = Simulink.Parameter; F.Value = RawParaSet.constant.F; F.DataType = 'single';
R = Simulink.Parameter; R.Value = RawParaSet.constant.R; R.DataType = 'single';

%% Calculate

% meshing
h_neg = Simulink.Parameter; h_neg.Value = L_neg/2; h_neg.DataType = 'single';
h_sep = Simulink.Parameter; h_sep.Value = L_sep/1; h_sep.DataType = 'single';
h_pos = Simulink.Parameter; h_pos.Value = L_pos/2; h_pos.DataType = 'single';
h_electrolyte = Simulink.Parameter; h_electrolyte.Value = [ones(1,2)*h_neg.Value h_sep.Value ones(1,2)*h_pos.Value]; h_electrolyte.DataType = 'single';
volume_length_neg = Simulink.Parameter;
volume_length_neg.Value = ones(1,3)*h_neg.Value;
volume_length_neg.Value(1) = h_neg.Value/2;
volume_length_neg.Value(3) = h_neg.Value/2;
volume_length_neg.DataType = 'single';
volume_length_pos = Simulink.Parameter;
volume_length_pos.Value = ones(1,3)*h_pos.Value;
volume_length_pos.Value(1) = h_pos.Value/2;
volume_length_pos.Value(3) = h_pos.Value/2;
volume_length_pos.DataType = 'single';

% porosity related parameter
eps_l = [ones(1,2)*eps_l_neg  eps_l_sep ones(1,2)*eps_l_pos];
eps_s = [ones(1,2)*eps_s_neg  0 ones(1,2)*eps_s_pos];

S_a_neg = Simulink.Parameter; S_a_neg.Value = 3*eps_s_neg/r_s_neg.Value; S_a_neg.DataType = 'single';
S_a_pos = Simulink.Parameter; S_a_pos.Value = 3*eps_s_pos/r_s_pos.Value; S_a_pos.DataType = 'single';

Bruggeman = [ones(1,2)*Bruggeman_neg  Bruggeman_sep ones(1,2)*Bruggeman_pos];

theta_lookup_neg = Simulink.Parameter; 
theta_lookup_neg.Value = [0;0.01;0.02;0.03;0.04;0.05;0.06;0.07;0.08;0.09;0.1;0.11;0.12;0.13;0.14;0.15;0.16;0.17;0.18;0.19;0.2;0.21;0.22;0.23;0.24;0.25;0.26;0.27;0.28;0.29;0.3;0.31;0.32;0.33;0.34;0.35;0.36;0.37;0.38;0.39;0.4;0.41;0.42;0.43;0.44;0.45;0.46;0.47;0.48;0.49;0.5;0.51;0.52;0.53;0.54;0.55;0.56;0.57;0.58;0.59;0.6;0.61;0.62;0.63;0.64;0.65;0.66;0.67;0.68;0.69;0.7;0.71;0.72;0.73;0.74;0.75;0.76;0.77;0.78;0.79;0.8;0.81;0.82;0.83;0.84;0.85;0.86;0.87;0.88;0.89;0.9;0.91;0.92;0.93;0.94;0.95;0.96;0.97;0.98];
theta_lookup_neg.DataType = 'single';
OCV_lookup_neg = Simulink.Parameter; 
OCV_lookup_neg.Value = [2.781186612;1.520893224;0.893922607;0.581284406;0.42452844;0.344895805;0.303146342;0.279578072;0.264093089;0.251347845;0.238588379;0.224803164;0.210294358;0.196408586;0.184624188;0.175188157;0.167373311;0.160452107;0.154025412;0.147948522;0.142214997;0.13688271;0.132033114;0.127747573;0.124091616;0.121103387;0.11878567;0.117102317;0.115980205;0.115317054;0.114993965;0.114890105;0.114896278;0.114924619;0.114913068;0.114824904;0.114644725;0.114372614;0.114017954;0.11359371;0.11311133;0.112575849;0.111980245;0.111297682;0.110470149;0.109393081;0.107900592;0.10576964;0.102783317;0.09889031;0.094391564;0.089921069;0.086112415;0.083265315;0.081326247;0.080074892;0.07928329;0.078778765;0.078447703;0.078220432;0.078055641;0.077929111;0.077826563;0.077739397;0.077662227;0.077591472;0.077524557;0.077459463;0.077394455;0.077327934;0.077258337;0.077184077;0.077103499;0.077014851;0.076916258;0.07680571;0.07668104;0.07653992;0.076379839;0.076198086;0.075991699;0.075757371;0.075491288;0.075188813;0.07484398;0.074448647;0.07399118;0.073454466;0.072812991;0.072028722;0.071045433;0.069780996;0.068116222;0.065874599;0.062770873;0.058253898;0.051075794;0.038790069;0.020172191];
OCV_lookup_neg.DataType = 'single';

theta_lookup_pos = Simulink.Parameter; 
theta_lookup_pos.Value = [0;0.032;0.102;0.187;0.289;0.38;0.543;0.775;0.872;0.925;0.943;0.957;0.966;0.97;0.972;0.975];
theta_lookup_pos.DataType = 'single';
OCV_lookup_pos = Simulink.Parameter; 
OCV_lookup_pos.Value = [4.44;4.34;4.23;4.13;4.025;3.945;3.835;3.71;3.62;3.51;3.42;3.3;3.165;3.02;2.9;2.688];
OCV_lookup_pos.DataType = 'single';

% electrolyte parameter
sigma_l_eff = Simulink.Parameter; sigma_l_eff.Value = eps_l.^Bruggeman.*sigma_l.Value; sigma_l_eff.DataType = 'single';% effective conductivity S/m
sigma_l_eff_neg = Simulink.Parameter; sigma_l_eff_neg.Value = sigma_l_eff.Value(1:2); sigma_l_eff_neg.DataType = 'single';
sigma_l_eff_pos = Simulink.Parameter; sigma_l_eff_pos.Value = sigma_l_eff.Value(4:5); sigma_l_eff_pos.DataType = 'single';
D_l_eff = eps_l.^Bruggeman*D_l; % effective diffusion coefficient of the electrolyte m^2/s

%electrode parameter
sigma_s = [ones(1,2)*sigma_s_neg.Value  0 ones(1,2)*sigma_s_pos.Value];
sigma_s_eff = Simulink.Parameter; sigma_s_eff.Value = eps_s.^Bruggeman.*sigma_s; sigma_s_eff.DataType = 'single';
sigma_s_eff_neg = Simulink.Parameter; sigma_s_eff_neg.Value = sigma_s_eff.Value(1:2); sigma_s_eff_neg.DataType = 'single';
sigma_s_eff_pos = Simulink.Parameter; sigma_s_eff_pos.Value = sigma_s_eff.Value(4:5); sigma_s_eff_pos.DataType = 'single';

%% electrolyte concentration state-space model
de_n = D_l*eps_l_neg^Bruggeman_neg;
de_p = D_l*eps_l_pos^Bruggeman_pos;
de_s = D_l*eps_l_sep^Bruggeman_sep;

Y = (1-tplus.Value)/F.Value;
O_n = sqrt(eps_l_neg/de_n);
O_p = sqrt(eps_l_pos/de_p);

a0_n_matrix = reshape([(L_neg.^2.*Y.*de_n.*-2.0+L_neg.^2.*Y.*de_s.*7.0+L_neg.*L_pos.*Y.*de_n.*2.0+L_neg.*L_sep.*Y.*de_n.*4.0)./(de_n.*de_s.*3.2e+1),(-L_neg.^2.*Y.*de_n+L_neg.^2.*Y.*de_s.*2.0+L_neg.*L_pos.*Y.*de_n+L_neg.*L_sep.*Y.*de_n.*2.0)./(de_n.*de_s.*1.6e+1),(-L_neg.^2.*Y+L_neg.*L_pos.*Y+L_neg.*L_sep.*Y.*2.0)./(de_s.*1.6e+1),(-L_neg.^2.*Y.*de_n+L_neg.^2.*Y.*de_s.*2.0+L_neg.*L_pos.*Y.*de_n+L_neg.*L_sep.*Y.*de_n.*2.0)./(de_n.*de_s.*8.0),(L_neg.^2.*Y.*de_n.*-4.0+L_neg.^2.*Y.*de_s.*7.0+L_neg.*L_pos.*Y.*de_n.*4.0+L_neg.*L_sep.*Y.*de_n.*8.0)./(de_n.*de_s.*3.2e+1),(-L_neg.^2.*Y+L_neg.*L_pos.*Y+L_neg.*L_sep.*Y.*2.0)./(de_s.*8.0),(L_neg.^2.*Y.*de_n.*-2.0+L_neg.^2.*Y.*de_s+L_neg.*L_pos.*Y.*de_n.*2.0+L_neg.*L_sep.*Y.*de_n.*4.0)./(de_n.*de_s.*3.2e+1),(L_neg.^2.*Y.*de_n.*-2.0+L_neg.^2.*Y.*de_s+L_neg.*L_pos.*Y.*de_n.*2.0+L_neg.*L_sep.*Y.*de_n.*4.0)./(de_n.*de_s.*3.2e+1),(-L_neg.^2.*Y+L_neg.*L_pos.*Y+L_neg.*L_sep.*Y.*2.0)./(de_s.*1.6e+1)],[3,3]);
a0_p_matrix = reshape([((-L_pos.^2.*Y+L_neg.*L_pos.*Y+L_pos.*L_sep.*Y.*2.0).*(-1.0./1.6e+1))./de_s,((L_pos.^2.*Y.*de_p.*-2.0+L_pos.^2.*Y.*de_s+L_neg.*L_pos.*Y.*de_p.*2.0+L_pos.*L_sep.*Y.*de_p.*4.0).*(-1.0./3.2e+1))./(de_p.*de_s),((L_pos.^2.*Y.*de_p.*-2.0+L_pos.^2.*Y.*de_s+L_neg.*L_pos.*Y.*de_p.*2.0+L_pos.*L_sep.*Y.*de_p.*4.0).*(-1.0./3.2e+1))./(de_p.*de_s),((-L_pos.^2.*Y+L_neg.*L_pos.*Y+L_pos.*L_sep.*Y.*2.0).*(-1.0./8.0))./de_s,((L_pos.^2.*Y.*de_p.*-4.0+L_pos.^2.*Y.*de_s.*7.0+L_neg.*L_pos.*Y.*de_p.*4.0+L_pos.*L_sep.*Y.*de_p.*8.0).*(-1.0./3.2e+1))./(de_p.*de_s),((-L_pos.^2.*Y.*de_p+L_pos.^2.*Y.*de_s.*2.0+L_neg.*L_pos.*Y.*de_p+L_pos.*L_sep.*Y.*de_p.*2.0).*(-1.0./8.0))./(de_p.*de_s),((-L_pos.^2.*Y+L_neg.*L_pos.*Y+L_pos.*L_sep.*Y.*2.0).*(-1.0./1.6e+1))./de_s,((-L_pos.^2.*Y.*de_p+L_pos.^2.*Y.*de_s.*2.0+L_neg.*L_pos.*Y.*de_p+L_pos.*L_sep.*Y.*de_p.*2.0).*(-1.0./1.6e+1))./(de_p.*de_s),((L_pos.^2.*Y.*de_p.*-2.0+L_pos.^2.*Y.*de_s.*7.0+L_neg.*L_pos.*Y.*de_p.*2.0+L_pos.*L_sep.*Y.*de_p.*4.0).*(-1.0./3.2e+1))./(de_p.*de_s)],[3,3]);
b1_n_matrix = reshape([(L_neg.^3.*O_n.^2.*de_n.^2.*9.6e+1+L_neg.^3.*O_n.^2.*de_s.^2.*4.97e+2-L_neg.^3.*O_n.^2.*de_n.*de_s.*3.8e+2+L_neg.*L_pos.^2.*O_n.^2.*de_n.^2.*9.6e+1-L_neg.^2.*L_pos.*O_n.^2.*de_n.^2.*1.92e+2+L_neg.*L_sep.^2.*O_n.^2.*de_n.^2.*3.84e+2-L_neg.^2.*L_sep.*O_n.^2.*de_n.^2.*3.84e+2+L_neg.*L_pos.*L_sep.*O_n.^2.*de_n.^2.*3.84e+2+L_neg.^2.*L_pos.*O_n.^2.*de_n.*de_s.*3.8e+2+L_neg.^2.*L_sep.*O_n.^2.*de_n.*de_s.*7.6e+2)./(L_neg.*de_s.^2.*1.344e+3-L_neg.*de_n.*de_s.*3.84e+2+L_pos.*de_n.*de_s.*3.84e+2+L_sep.*de_n.*de_s.*7.68e+2),(L_neg.^3.*O_n.^2.*de_n.^2.*2.4e+1+L_neg.^3.*O_n.^2.*de_s.^2.*8.6e+1-L_neg.^3.*O_n.^2.*de_n.*de_s.*8.3e+1+L_neg.*L_pos.^2.*O_n.^2.*de_n.^2.*2.4e+1-L_neg.^2.*L_pos.*O_n.^2.*de_n.^2.*4.8e+1+L_neg.*L_sep.^2.*O_n.^2.*de_n.^2.*9.6e+1-L_neg.^2.*L_sep.*O_n.^2.*de_n.^2.*9.6e+1+L_neg.*L_pos.*L_sep.*O_n.^2.*de_n.^2.*9.6e+1+L_neg.^2.*L_pos.*O_n.^2.*de_n.*de_s.*8.3e+1+L_neg.^2.*L_sep.*O_n.^2.*de_n.*de_s.*1.66e+2)./(L_neg.*de_s.^2.*1.92e+2-L_neg.*de_n.*de_s.*9.6e+1+L_pos.*de_n.*de_s.*9.6e+1+L_sep.*de_n.*de_s.*1.92e+2),(L_neg.^2.*O_n.^2.*de_n.*-2.4e+1+L_neg.^2.*O_n.^2.*de_s.*4.7e+1+L_neg.*L_pos.*O_n.^2.*de_n.*2.4e+1+L_neg.*L_sep.*O_n.^2.*de_n.*4.8e+1)./(de_s.*9.6e+1),(L_neg.^3.*O_n.^2.*de_n.^2.*2.4e+1+L_neg.^3.*O_n.^2.*de_s.^2.*8.6e+1-L_neg.^3.*O_n.^2.*de_n.*de_s.*8.3e+1+L_neg.*L_pos.^2.*O_n.^2.*de_n.^2.*2.4e+1-L_neg.^2.*L_pos.*O_n.^2.*de_n.^2.*4.8e+1+L_neg.*L_sep.^2.*O_n.^2.*de_n.^2.*9.6e+1-L_neg.^2.*L_sep.*O_n.^2.*de_n.^2.*9.6e+1+L_neg.*L_pos.*L_sep.*O_n.^2.*de_n.^2.*9.6e+1+L_neg.^2.*L_pos.*O_n.^2.*de_n.*de_s.*8.3e+1+L_neg.^2.*L_sep.*O_n.^2.*de_n.*de_s.*1.66e+2)./(L_neg.*de_s.^2.*1.92e+2-L_neg.*de_n.*de_s.*9.6e+1+L_pos.*de_n.*de_s.*9.6e+1+L_sep.*de_n.*de_s.*1.92e+2),(L_neg.^3.*O_n.^2.*de_n.^2.*1.92e+2+L_neg.^3.*O_n.^2.*de_s.^2.*4.97e+2-L_neg.^3.*O_n.^2.*de_n.*de_s.*5.68e+2+L_neg.*L_pos.^2.*O_n.^2.*de_n.^2.*1.92e+2-L_neg.^2.*L_pos.*O_n.^2.*de_n.^2.*3.84e+2+L_neg.*L_sep.^2.*O_n.^2.*de_n.^2.*7.68e+2-L_neg.^2.*L_sep.*O_n.^2.*de_n.^2.*7.68e+2+L_neg.*L_pos.*L_sep.*O_n.^2.*de_n.^2.*7.68e+2+L_neg.^2.*L_pos.*O_n.^2.*de_n.*de_s.*5.68e+2+L_neg.^2.*L_sep.*O_n.^2.*de_n.*de_s.*1.136e+3)./(L_neg.*de_s.^2.*1.344e+3-L_neg.*de_n.*de_s.*7.68e+2+L_pos.*de_n.*de_s.*7.68e+2+L_sep.*de_n.*de_s.*1.536e+3),(L_neg.^2.*O_n.^2.*de_n.*-2.4e+1+L_neg.^2.*O_n.^2.*de_s.*3.5e+1+L_neg.*L_pos.*O_n.^2.*de_n.*2.4e+1+L_neg.*L_sep.*O_n.^2.*de_n.*4.8e+1)./(de_s.*9.6e+1),(L_neg.^3.*O_n.^2.*de_n.^2.*9.6e+1+L_neg.^3.*O_n.^2.*de_s.^2.*9.5e+1-L_neg.^3.*O_n.^2.*de_n.*de_s.*2.36e+2+L_neg.*L_pos.^2.*O_n.^2.*de_n.^2.*9.6e+1-L_neg.^2.*L_pos.*O_n.^2.*de_n.^2.*1.92e+2+L_neg.*L_sep.^2.*O_n.^2.*de_n.^2.*3.84e+2-L_neg.^2.*L_sep.*O_n.^2.*de_n.^2.*3.84e+2+L_neg.*L_pos.*L_sep.*O_n.^2.*de_n.^2.*3.84e+2+L_neg.^2.*L_pos.*O_n.^2.*de_n.*de_s.*2.36e+2+L_neg.^2.*L_sep.*O_n.^2.*de_n.*de_s.*4.72e+2)./(L_neg.*de_s.^2.*1.92e+2-L_neg.*de_n.*de_s.*3.84e+2+L_pos.*de_n.*de_s.*3.84e+2+L_sep.*de_n.*de_s.*7.68e+2),(L_neg.^3.*O_n.^2.*de_n.^2.*9.6e+1+L_neg.^3.*O_n.^2.*de_s.^2.*7.1e+1-L_neg.^3.*O_n.^2.*de_n.*de_s.*1.88e+2+L_neg.*L_pos.^2.*O_n.^2.*de_n.^2.*9.6e+1-L_neg.^2.*L_pos.*O_n.^2.*de_n.^2.*1.92e+2+L_neg.*L_sep.^2.*O_n.^2.*de_n.^2.*3.84e+2-L_neg.^2.*L_sep.*O_n.^2.*de_n.^2.*3.84e+2+L_neg.*L_pos.*L_sep.*O_n.^2.*de_n.^2.*3.84e+2+L_neg.^2.*L_pos.*O_n.^2.*de_n.*de_s.*1.88e+2+L_neg.^2.*L_sep.*O_n.^2.*de_n.*de_s.*3.76e+2)./(L_neg.*de_s.^2.*1.92e+2-L_neg.*de_n.*de_s.*3.84e+2+L_pos.*de_n.*de_s.*3.84e+2+L_sep.*de_n.*de_s.*7.68e+2),(L_neg.^2.*O_n.^2.*de_n.*-2.4e+1+L_neg.^2.*O_n.^2.*de_s.*1.1e+1+L_neg.*L_pos.*O_n.^2.*de_n.*2.4e+1+L_neg.*L_sep.*O_n.^2.*de_n.*4.8e+1)./(de_s.*9.6e+1)],[3,3]);
b1_p_matrix = reshape([(L_pos.^2.*O_p.^2.*de_p.*-2.4e+1+L_pos.^2.*O_p.^2.*de_s.*1.1e+1+L_neg.*L_pos.*O_p.^2.*de_p.*2.4e+1+L_pos.*L_sep.*O_p.^2.*de_p.*4.8e+1)./(de_s.*9.6e+1),(L_pos.^3.*O_p.^2.*de_p.^2.*9.6e+1+L_pos.^3.*O_p.^2.*de_s.^2.*7.1e+1-L_pos.^3.*O_p.^2.*de_p.*de_s.*1.88e+2-L_neg.*L_pos.^2.*O_p.^2.*de_p.^2.*1.92e+2+L_neg.^2.*L_pos.*O_p.^2.*de_p.^2.*9.6e+1+L_pos.*L_sep.^2.*O_p.^2.*de_p.^2.*3.84e+2-L_pos.^2.*L_sep.*O_p.^2.*de_p.^2.*3.84e+2+L_neg.*L_pos.*L_sep.*O_p.^2.*de_p.^2.*3.84e+2+L_neg.*L_pos.^2.*O_p.^2.*de_p.*de_s.*1.88e+2+L_pos.^2.*L_sep.*O_p.^2.*de_p.*de_s.*3.76e+2)./(L_pos.*de_s.^2.*1.92e+2+L_neg.*de_p.*de_s.*3.84e+2-L_pos.*de_p.*de_s.*3.84e+2+L_sep.*de_p.*de_s.*7.68e+2),(L_pos.^3.*O_p.^2.*de_p.^2.*9.6e+1+L_pos.^3.*O_p.^2.*de_s.^2.*9.5e+1-L_pos.^3.*O_p.^2.*de_p.*de_s.*2.36e+2-L_neg.*L_pos.^2.*O_p.^2.*de_p.^2.*1.92e+2+L_neg.^2.*L_pos.*O_p.^2.*de_p.^2.*9.6e+1+L_pos.*L_sep.^2.*O_p.^2.*de_p.^2.*3.84e+2-L_pos.^2.*L_sep.*O_p.^2.*de_p.^2.*3.84e+2+L_neg.*L_pos.*L_sep.*O_p.^2.*de_p.^2.*3.84e+2+L_neg.*L_pos.^2.*O_p.^2.*de_p.*de_s.*2.36e+2+L_pos.^2.*L_sep.*O_p.^2.*de_p.*de_s.*4.72e+2)./(L_pos.*de_s.^2.*1.92e+2+L_neg.*de_p.*de_s.*3.84e+2-L_pos.*de_p.*de_s.*3.84e+2+L_sep.*de_p.*de_s.*7.68e+2),(L_pos.^2.*O_p.^2.*de_p.*-2.4e+1+L_pos.^2.*O_p.^2.*de_s.*3.5e+1+L_neg.*L_pos.*O_p.^2.*de_p.*2.4e+1+L_pos.*L_sep.*O_p.^2.*de_p.*4.8e+1)./(de_s.*9.6e+1),(L_pos.^3.*O_p.^2.*de_p.^2.*1.92e+2+L_pos.^3.*O_p.^2.*de_s.^2.*4.97e+2-L_pos.^3.*O_p.^2.*de_p.*de_s.*5.68e+2-L_neg.*L_pos.^2.*O_p.^2.*de_p.^2.*3.84e+2+L_neg.^2.*L_pos.*O_p.^2.*de_p.^2.*1.92e+2+L_pos.*L_sep.^2.*O_p.^2.*de_p.^2.*7.68e+2-L_pos.^2.*L_sep.*O_p.^2.*de_p.^2.*7.68e+2+L_neg.*L_pos.*L_sep.*O_p.^2.*de_p.^2.*7.68e+2+L_neg.*L_pos.^2.*O_p.^2.*de_p.*de_s.*5.68e+2+L_pos.^2.*L_sep.*O_p.^2.*de_p.*de_s.*1.136e+3)./(L_pos.*de_s.^2.*1.344e+3+L_neg.*de_p.*de_s.*7.68e+2-L_pos.*de_p.*de_s.*7.68e+2+L_sep.*de_p.*de_s.*1.536e+3),(L_pos.^3.*O_p.^2.*de_p.^2.*2.4e+1+L_pos.^3.*O_p.^2.*de_s.^2.*8.6e+1-L_pos.^3.*O_p.^2.*de_p.*de_s.*8.3e+1-L_neg.*L_pos.^2.*O_p.^2.*de_p.^2.*4.8e+1+L_neg.^2.*L_pos.*O_p.^2.*de_p.^2.*2.4e+1+L_pos.*L_sep.^2.*O_p.^2.*de_p.^2.*9.6e+1-L_pos.^2.*L_sep.*O_p.^2.*de_p.^2.*9.6e+1+L_neg.*L_pos.*L_sep.*O_p.^2.*de_p.^2.*9.6e+1+L_neg.*L_pos.^2.*O_p.^2.*de_p.*de_s.*8.3e+1+L_pos.^2.*L_sep.*O_p.^2.*de_p.*de_s.*1.66e+2)./(L_pos.*de_s.^2.*1.92e+2+L_neg.*de_p.*de_s.*9.6e+1-L_pos.*de_p.*de_s.*9.6e+1+L_sep.*de_p.*de_s.*1.92e+2),(L_pos.^2.*O_p.^2.*de_p.*-2.4e+1+L_pos.^2.*O_p.^2.*de_s.*4.7e+1+L_neg.*L_pos.*O_p.^2.*de_p.*2.4e+1+L_pos.*L_sep.*O_p.^2.*de_p.*4.8e+1)./(de_s.*9.6e+1),(L_pos.^3.*O_p.^2.*de_p.^2.*2.4e+1+L_pos.^3.*O_p.^2.*de_s.^2.*8.6e+1-L_pos.^3.*O_p.^2.*de_p.*de_s.*8.3e+1-L_neg.*L_pos.^2.*O_p.^2.*de_p.^2.*4.8e+1+L_neg.^2.*L_pos.*O_p.^2.*de_p.^2.*2.4e+1+L_pos.*L_sep.^2.*O_p.^2.*de_p.^2.*9.6e+1-L_pos.^2.*L_sep.*O_p.^2.*de_p.^2.*9.6e+1+L_neg.*L_pos.*L_sep.*O_p.^2.*de_p.^2.*9.6e+1+L_neg.*L_pos.^2.*O_p.^2.*de_p.*de_s.*8.3e+1+L_pos.^2.*L_sep.*O_p.^2.*de_p.*de_s.*1.66e+2)./(L_pos.*de_s.^2.*1.92e+2+L_neg.*de_p.*de_s.*9.6e+1-L_pos.*de_p.*de_s.*9.6e+1+L_sep.*de_p.*de_s.*1.92e+2),(L_pos.^3.*O_p.^2.*de_p.^2.*9.6e+1+L_pos.^3.*O_p.^2.*de_s.^2.*4.97e+2-L_pos.^3.*O_p.^2.*de_p.*de_s.*3.8e+2-L_neg.*L_pos.^2.*O_p.^2.*de_p.^2.*1.92e+2+L_neg.^2.*L_pos.*O_p.^2.*de_p.^2.*9.6e+1+L_pos.*L_sep.^2.*O_p.^2.*de_p.^2.*3.84e+2-L_pos.^2.*L_sep.*O_p.^2.*de_p.^2.*3.84e+2+L_neg.*L_pos.*L_sep.*O_p.^2.*de_p.^2.*3.84e+2+L_neg.*L_pos.^2.*O_p.^2.*de_p.*de_s.*3.8e+2+L_pos.^2.*L_sep.*O_p.^2.*de_p.*de_s.*7.6e+2)./(L_pos.*de_s.^2.*1.344e+3+L_neg.*de_p.*de_s.*3.84e+2-L_pos.*de_p.*de_s.*3.84e+2+L_sep.*de_p.*de_s.*7.68e+2)],[3,3]);

%定义状态空间方程——负极
T_s = Simulink.Parameter; T_s.Value = 1; T_s.DataType = 'single';%定义计算周期
vector_A_neg = [];
for i = 1:3
    for j = 1:3
        vector_A_neg = [vector_A_neg,exp(-T_s.Value/b1_n_matrix(i,j))];
    end
end
A_neg = Simulink.Parameter; A_neg.Value = diag(vector_A_neg); A_neg.DataType = 'single';
B_neg = Simulink.Parameter; B_neg.Value = []; B_neg.DataType = 'single';
for i = 1:3
    vector_B_neg = [];
    for j = 1:3
        vector_B_neg = [vector_B_neg,a0_n_matrix(i,j)*(1-exp(-T_s.Value/b1_n_matrix(i,j)))];
    end
    B_neg.Value = [B_neg.Value;diag([vector_B_neg])];
end
%定义状态空间方程——正极
vector_A_pos = [];
for i = 1:3
    for j = 1:3
        vector_A_pos = [vector_A_pos,exp(-T_s.Value/b1_p_matrix(i,j))];
    end
end
A_pos = Simulink.Parameter; A_pos.Value = diag(vector_A_pos); A_pos.DataType = 'single';
B_pos = Simulink.Parameter; B_pos.Value = []; B_pos.DataType = 'single';
for i = 1:3
    vector_B_pos = [];
    for j = 1:3
        vector_B_pos = [vector_B_pos,a0_p_matrix(i,j)*(1-exp(-T_s.Value/b1_p_matrix(i,j)))];
    end
    B_pos.Value = [B_pos.Value;diag([vector_B_pos])];
end
B_pos.Value = -B_pos.Value;
iden = [1 1 1];zero = [0 0 0];
C = Simulink.Parameter;
C.Value = [iden zero zero;...
    zero iden zero;...
    zero zero iden];
C.DataType = 'single';
D = 0;
%% electrode surface concentration state-space model
lamda1 = Simulink.Parameter; lamda1.Value = 0.6173; lamda1.DataType = 'single';
lamda2 = Simulink.Parameter; lamda2.Value = 0.3827; lamda2.DataType = 'single';
Tau1_neg = Simulink.Parameter; Tau1_neg.Value =  0.04365*r_s_neg.Value^2/D_s_neg.Value; Tau1_neg.DataType = 'single';
Tau2_neg = Simulink.Parameter; Tau2_neg.Value = 0.003459*r_s_neg.Value^2/D_s_neg.Value; Tau2_neg.DataType = 'single';
Tau1_pos = Simulink.Parameter; Tau1_pos.Value = 0.04365*r_s_pos.Value^2/D_s_pos.Value; Tau1_pos.DataType = 'single';
Tau2_pos = Simulink.Parameter; Tau2_pos.Value = 0.003459*r_s_pos.Value^2/D_s_pos.Value; Tau2_pos.DataType = 'single';
Tau_neg = 0.0286*r_s_neg.Value^2/D_s_neg.Value;