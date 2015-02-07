import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';
import 'package:di/annotations.dart';
import 'package:DartAngularPaper/component/recipe_book.dart';
import 'package:DartAngularPaper/core-list-binding/core-list-binding.dart';

@Injectable()
class Greeter {
  String text = "Hello future";
  int max = 20;
  int curValue = 12;
}

class MyAppModule extends Module {
  MyAppModule() {
    bind(RecipeBookComponent);
    bind(PaperCoreListBindings);
  }
}

main() {
  var injector = applicationFactory()
      .rootContextType(Greeter)
      .addModule(new MyAppModule())
      .run();
//  var scope = injector.get(Scope);
//  scope.context['text'] = "Hello future";
//  scope.context['max'] = 20;
//  scope.context['curValue'] = 12;
//  scope.apply();
}