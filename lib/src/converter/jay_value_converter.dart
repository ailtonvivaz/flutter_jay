import 'jay_converter.dart';

abstract class JayValueEncoder<Input, Output> {
  Type get valueType => Input;

  Output encode(Input value, {required JayEncoder jay});
}

abstract class JayValueDecoder<Input, Output> {
  Output decode(Input data, {required JayDecoder jay});
}

abstract class JayValueConverter<Input, Output>
    implements JayValueEncoder<Input, Output>, JayValueDecoder<Output, Input> {
  @override
  Type get valueType => Input;
}
