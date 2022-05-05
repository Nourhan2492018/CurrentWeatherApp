abstract class CurrentWeatherState{}

class CurrentWeatherInitial extends CurrentWeatherState{}
class CurrentWeatherSuccessState extends CurrentWeatherState {}
class CurrentWeatherErrorState extends CurrentWeatherState {
  final error;
  CurrentWeatherErrorState(this.error);
}
class CurrentWeatherLoadingState extends CurrentWeatherState {}