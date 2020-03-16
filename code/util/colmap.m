function map = colmap(col,inv)
% create colormap
%
% make colormaps based on pycortex:
%    https://gallantlab.github.io/colormaps.html
%
% colorset
%  {'Paired','viridis','terrain','rainbow','Spectral','Pastel1_r','RdBu_r','coolwarm'}
% 
%  inv: if 1 inverse color map;
% 
% 
% 
% 
% Written by horikawa-t 20200225

%% color interpolation

switch col
    case 'Paired'
        map = [... % Paired
            166,142,119,96,72,49,36,61,86,112,137,169,163,141,119,97,75,53,80,115,149,184,218,250,246,242,238,234,230,228,232,237,242,247,251,253,253,253,254,254,254,246,237,228,219,209,199,183,166,150,133,116,114,146,172,198,224,249,244,230,217,203,190,177;...
            206,191,176,161,146,131,123,141,159,176,194,216,215,204,194,183,172,161,159,158,157,156,154,152,130,108,86,64,42,33,62,90,126,154,183,182,171,160,149,138,127,135,144,152,161,170,175,155,134,114,94,74,72,114,147,181,214,248,232,203,174,146,117,89;...
            227,218,210,202,194,186,178,171,164,156,149,140,127,111,94,78,62,46,60,79,97,116,135,151,129,108,86,65,43,31,46,60,78,92,107,97,77,58,39,20,1,34,71,108,145,182,212,202,191,181,171,160,153,153,153,153,153,153,137,117,98,78,59,40;...
            ]'/255;
    case 'viridis'
        map = [... % viridis
            68,69,70,71,71,72,72,71,71,70,69,67,65,63,61,60,58,56,54,52,50,48,46,45,43,42,40,39,37,36,34,33,31,31,30,30,31,32,35,38,42,47,53,59,66,73,81,89,98,107,116,126,136,149,159,170,181,191,202,212,223,233,243,253;...
            1,6,12,18,24,29,34,39,44,49,54,60,65,69,74,78,83,87,91,95,99,103,107,111,115,119,122,126,130,134,137,141,146,150,153,157,161,165,168,172,176,179,183,186,190,193,196,199,202,205,208,210,213,215,217,219,221,223,224,225,227,228,229,231;...
            84,90,95,101,106,111,115,119,123,126,129,132,134,135,137,138,139,140,140,141,141,141,142,142,142,142,142,142,142,141,141,140,140,139,138,136,135,133,131,129,126,123,120,117,113,109,104,100,95,89,84,78,71,63,56,50,43,36,30,26,24,25,30,36;...
            ]'/255;
    case 'terrain'
        map = [... % terrain
            51,45,40,35,29,24,19,13,8,3,0,0,0,0,0,0,5,21,37,53,69,85,101,117,133,149,165,181,197,213,229,245,250,242,234,226,218,210,202,194,186,178,170,162,154,146,138,130,133,141,149,157,165,175,183,191,199,207,215,223,231,239,247,255;...
            51,61,72,83,93,104,115,125,136,147,156,166,174,182,190,198,205,208,211,214,217,221,224,227,230,233,237,240,243,246,249,253,248,238,228,217,207,197,187,176,166,156,146,135,125,115,105,95,98,109,119,129,139,152,162,173,183,193,203,214,224,234,244,255;...
            153,163,174,185,195,206,217,227,238,249,244,214,190,166,142,118,103,106,109,112,115,119,122,125,128,131,135,138,141,144,147,151,150,145,141,137,133,128,124,120,115,111,107,102,98,94,89,85,91,102,112,123,134,147,158,169,179,190,201,212,222,233,244,255;...
            ]'/255;
    case 'rainbow'
        map = [... % rainbow
            127,119,111,103,95,87,79,71,63,55,47,37,29,21,13,5,2,10,18,26,34,42,50,58,66,74,82,90,98,106,114,122,132,140,148,156,164,172,180,188,196,204,212,220,228,236,244,252,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255;...
            0,12,25,37,49,62,74,86,97,109,120,134,144,154,164,174,183,191,199,207,214,220,226,232,237,241,245,248,250,252,254,254,254,254,252,250,248,245,241,237,232,226,220,214,207,199,191,183,174,164,154,144,134,120,109,97,86,74,62,49,37,25,12,0;...
            255,254,254,254,253,253,252,251,250,248,247,245,243,241,239,237,234,232,229,226,223,220,217,214,210,207,203,199,195,191,187,183,177,172,168,163,158,153,148,143,138,132,127,122,116,110,105,99,93,87,81,75,69,62,56,49,43,37,31,25,18,12,6,0;...
            ]'/255;
    case 'Spectral'
        map = [... % Spectral
            158,166,175,183,192,201,209,216,220,225,230,236,241,244,246,247,248,250,251,253,253,253,253,253,253,253,254,254,254,254,254,254,252,248,244,240,236,232,227,218,209,199,190,181,172,161,150,139,129,118,107,97,89,79,71,63,55,52,59,66,73,80,87,94;...
            1,10,20,29,39,48,58,66,73,81,88,97,105,114,124,134,144,154,165,174,182,190,198,206,214,222,227,232,237,242,247,251,254,252,250,249,247,246,244,240,236,232,229,225,221,217,213,208,204,200,196,189,180,168,159,150,141,132,123,114,105,96,87,79;...
            66,68,70,72,74,76,78,77,75,74,72,69,67,69,74,78,83,88,92,97,104,111,117,124,130,137,145,153,161,169,177,185,187,181,174,168,162,156,152,154,156,158,160,161,163,164,164,164,164,164,164,166,170,175,179,182,186,187,183,178,174,170,166,162;...
            ]'/255;
    case 'Pastel1_r'
        map = [... % Pastel1_r
            242,243,244,246,247,248,250,251,252,249,246,243,240,237,234,231,230,233,236,239,243,246,249,252,254,254,254,254,254,254,254,254,251,247,243,239,235,231,227,223,220,218,216,213,211,209,206,204,201,198,195,192,189,185,182,179,187,196,205,214,223,232,241,251;...
            242,238,235,232,229,226,223,220,217,217,217,217,216,216,216,216,217,222,227,232,237,242,246,251,253,248,243,239,234,229,224,219,215,214,212,210,208,207,205,203,205,209,213,217,221,225,229,233,232,228,224,221,217,212,208,205,201,198,195,192,189,186,183,180;...
            242,241,240,239,238,238,237,236,235,229,224,216,210,204,198,193,189,191,193,195,197,199,200,202,202,197,192,188,183,178,173,168,170,178,186,194,201,209,217,225,225,221,217,213,209,205,202,198,199,203,207,210,214,219,223,226,220,213,207,200,193,187,180,174;...
            ]'/255;
    case 'RdBu_r'
        map = [... % RdBu_r
            5,9,13,18,22,26,31,36,41,47,52,59,64,73,85,97,110,122,135,147,157,167,176,186,196,206,213,219,225,231,237,243,247,248,249,250,251,252,252,251,249,248,247,245,244,239,235,230,225,221,216,211,205,198,192,187,181,173,161,150,138,126,114,103;...
            48,56,64,73,81,90,98,106,113,120,127,136,143,150,158,166,174,182,190,197,202,207,212,217,222,227,231,233,236,239,242,245,244,239,235,231,226,222,216,208,199,191,183,174,166,155,144,133,123,112,101,90,79,64,53,42,31,22,18,15,11,7,3,0;...
            97,108,120,132,144,155,167,174,177,181,185,189,193,197,201,205,209,214,218,222,225,228,230,233,236,239,240,241,243,244,245,246,242,234,227,219,212,204,196,185,174,163,153,142,131,122,114,106,97,89,81,74,69,62,57,51,46,42,40,38,36,34,32,31;...
            ]'/255;
    case 'RdGy_r'
        map = [... % RdGy_r
            26 34 42 50 58 66 74 82 91 100 109 121 130 139 147 155 163 171 179 186 192 198 204 210 216 222 227 232 237 242 247 251 254 254 254 253 253 253 252 251 249 248 247 245 244 239 235 230 225 221 216 211 205 198 192 187 181 173 161 150 138 126 114 103 ;...
            26 34 42 50 58 66 74 82 91 100 109 121 130 139 147 155 163 171 179 186 192 198 204 210 216 222 227 232 237 242 247 251 251 245 240 234 228 223 216 208 199 191 183 174 166 155 144 133 123 112 101 90 79 64 53 42 31 22 18 15 11 7 3 0 ;...
            26 34 42 50 58 66 74 82 91 100 109 121 130 139 147 155 163 171 179 186 192 198 204 210 216 222 227 232 237 242 247 251 249 240 231 223 214 205 196 185 174 163 153 142 131 122 114 106 97 89 81 74 69 62 57 51 46 42 40 38 36 34 32 31 ;...
            ]'/255;
    case 'coolwarm'
        map = [... % coolwarm
            58,63,67,72,77,82,87,92,97,103,108,115,120,126,131,137,142,148,153,159,164,170,175,180,185,190,195,200,205,209,214,218,223,227,231,234,237,239,242,243,245,246,246,247,247,246,245,244,243,241,238,236,233,229,225,221,217,212,207,202,197,191,185,179;...
            76,83,90,96,103,110,117,123,130,136,142,149,155,161,166,172,177,181,186,190,194,198,202,205,208,211,213,215,217,218,219,220,219,217,214,211,208,205,201,197,193,188,183,178,173,167,161,155,149,142,135,128,121,112,104,96,88,79,70,61,50,40,22,3;...
            192,198,204,209,215,220,225,229,234,237,241,244,247,249,251,252,253,254,254,254,254,253,251,250,248,245,242,239,236,232,228,223,217,211,205,199,193,187,181,175,168,162,156,149,143,137,130,124,118,112,106,100,94,87,82,76,71,66,61,56,51,46,42,38;...
            ]'/255;
    otherwise
        fprintf('%s is not matched.\nUse Paired instead.',col)
        map = [... % Paired
            166,142,119,96,72,49,36,61,86,112,137,169,163,141,119,97,75,53,80,115,149,184,218,250,246,242,238,234,230,228,232,237,242,247,251,253,253,253,254,254,254,246,237,228,219,209,199,183,166,150,133,116,114,146,172,198,224,249,244,230,217,203,190,177;...
            206,191,176,161,146,131,123,141,159,176,194,216,215,204,194,183,172,161,159,158,157,156,154,152,130,108,86,64,42,33,62,90,126,154,183,182,171,160,149,138,127,135,144,152,161,170,175,155,134,114,94,74,72,114,147,181,214,248,232,203,174,146,117,89;...
            227,218,210,202,194,186,178,171,164,156,149,140,127,111,94,78,62,46,60,79,97,116,135,151,129,108,86,65,43,31,46,60,78,92,107,97,77,58,39,20,1,34,71,108,145,182,212,202,191,181,171,160,153,153,153,153,153,153,137,117,98,78,59,40;...
            ]'/255;
end

if exist('inv','var') && inv
    map = map(end:-1:1,:);
end

%% debug
if 0
    clc
    idx = round(linspace(1,256,64));
    
    close all
    figure;
    cnt = 0;
    colNames = {'Paired','viridis','terrain','rainbow','Spectral',...
        'Pastel1_r','RdBu_r','coolwarm','RdGy_r'};
    for i = 1:length(colNames)
        cnt=cnt+1;subplottight(3,3,cnt);
        I = imread(sprintf('/home/mu/horikawa-t/figicon/pycortex_colormap/%s.png',colNames{i}));
        imagesc(I), axis off
        I3 = shiftdim(I(:,idx,:),1);
        fprintf('map = [... %% %s\n',colNames{i})
        for ix = 1:3
            for ixx = 1:64
                fprintf('%d ',I3(ixx,ix))
            end
            fprintf(';...\n')
        end
        fprintf(']''/255;\n')
    end
end