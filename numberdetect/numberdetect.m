A = imread('.jpg');
I = imresize(A,[90 260]);
figure
imshow(I);title('resize');


I = rgb2gray(I);





Icorrected = imtophat(I,strel('disk',15));
marker = imerode(Icorrected, strel('line',10,0));
Iclean = imreconstruct(marker, Icorrected);
BW2 = imbinarize(Iclean);
figure; 
imshowpair(Iclean,BW2,'montage');title('bina');

results = ocr(BW2,'TextLayout','Block');

fin = results.Text

% The regular expression, '\d', matches the location of any digit in the
% recognized text and ignores all non-digit characters.
regularExpr = '\w*[\d-]\w*';

% Get bounding boxes around text that matches the regular expression
%정규식으로, 논리 스칼라로 지정됩니다. 이 속성을 true로 설정하면 메서드가 패턴을 정규식으로 처리합니다.
bboxes = locateText(results,regularExpr,'UseRegexp',true);
digits = regexp(results.Text,regularExpr,'match');

Idigits = insertObjectAnnotation(I,'rectangle',bboxes,digits);

A = results.Text
figure; 
imshow(Idigits);title('box');
ddd = results


%정확도(?)
Iocr=insertObjectAnnotation(I, 'rectangle', ...
                           results.WordBoundingBoxes, ...
                           results.WordConfidences);

                       
figure; imshow(Iocr);title('accuracy');
accuracy = results.WordConfidences
                       



% Use the 'CharacterSet' parameter to constrain OCR
%0123456789만 관심이 있음
results = ocr(I, 'CharacterSet','0123456789','TextLayout','Block');
Noroibox = results.Text
Noroibox = results

% Sort the character confidences.
[sortedConf, sortedIndex] = sort(results.CharacterConfidences, 'descend');

% Keep indices associated with non-NaN confidences values.
indexesNaNsRemoved = sortedIndex( ~isnan(sortedConf) );

% Get the top ten indexes.
topTenIndexes = indexesNaNsRemoved(1:4);

% Select the top ten results.
digits = num2cell(results.Text(topTenIndexes));
bboxes = results.CharacterBoundingBoxes(topTenIndexes, :);

Idigits = insertObjectAnnotation(I,'rectangle',bboxes,digits);
B = results.Text

figure; 
imshow(Idigits);title('index4');


