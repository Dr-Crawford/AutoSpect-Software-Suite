function labels = mz_modify_PeakTabel_Labels(labels)
labels=regexprep(labels,'+','_plus');
labels=regexprep(labels,'\[|\]','');
labels=remove_meta_characters_from_cellstr(labels);
labels=strcat('LA_',labels);
labels=regexprep(labels,'LA__','LA_');
labels=regexprep(labels,'LA_','LA__');