import 'package:apptemplate/dependency/sub_modules/bloc_sub_module.dart';
import 'package:apptemplate/dependency/sub_modules/i_sub_module.dart';
import 'package:apptemplate/features/tab_section/section.dart';
import 'package:apptemplate/features/tab_section/section_one_page_provider/section_one_page_provider.dart';
import 'package:apptemplate/features/tab_section/section_three_page_provider/section_three_page_provider.dart';
import 'package:apptemplate/features/tab_section/section_two_page_provider/section_two_page_provider.dart';

class SectionSubModule implements ISubModule {
  BlocSubModule _blocSubModule;

  @override
  setSubModules(List<ISubModule> subModules) {
    _blocSubModule = subModules.whereType<BlocSubModule>().first;
  }

  List<Section> get sections => [
        SectionOnePageProvider(_blocSubModule.sectionOneBloc),
        SectionTwoPageProvider(),
        SectionThreePageProvider()
      ];
}
