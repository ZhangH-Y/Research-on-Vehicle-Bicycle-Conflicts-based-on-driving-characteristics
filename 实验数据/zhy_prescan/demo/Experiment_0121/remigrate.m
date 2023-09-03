function remigrate()
%REMIGRATE restore original model from migration backup and then migrate again

%restore old model
backupfolder = '.\Migrated\version_840_161551' ;
backupmodel  = 'Experiment_0121_840_161551_cs' ;
backupfile   = '.\Migrated\version_840_161551\Experiment_0121_840_161551_cs.slx' ;
srcfolder    = '.' ;
srcmodel     = 'Experiment_0121_cs' ;
modelreferencing = 0 ;
mbxutils.backupModel(backupfolder,backupmodel,srcfolder,srcmodel); 
chdir('.');
open_system('Experiment_0121_cs');

%migrate restored model
migrate_all(srcmodel,modelreferencing,backupfile);
end
