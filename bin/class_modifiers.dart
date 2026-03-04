


void main(){



}

// sealed — абстрактный + можно наследовать ТОЛЬКО в этом же файле
// Компилятор знает все подклассы → можно юзать в switch без default
// Типо как sealed class в Kotlin
sealed class Animal {}

// base — можно наследовать (extends), но НЕЛЬЗЯ имплементить (implements)
// Гарантирует что логика из конструктора/методов не будет пропущена
base class Animal1 {}

// final — НЕЛЬЗЯ ни наследовать, ни имплементить вне этого файла
// Полностью закрытый класс, как final class в Java
final class Animal3 {}

// interface — НЕЛЬЗЯ наследовать (extends), но МОЖНО имплементить (implements)
// Противоположность base
interface class Animal4 {}

// mixin — можно подмешивать через with
// Типо как default methods в Java интерфейсах, но мощнее
mixin class Animal5 {}

// abstract — нельзя создать экземпляр, только наследовать
// Как abstract в Java
abstract class Animal6 {}

// можно комбинировать:
abstract base class Animal7 {}    // абстрактный + только extends
abstract interface class Animal8 {} // по сути чистый интерфейс