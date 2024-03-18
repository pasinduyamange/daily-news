abstract class UseCase<Type, Parms> {
  Future<Type> call({Parms parms});
}
