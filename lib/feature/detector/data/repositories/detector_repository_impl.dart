import 'package:dartz/dartz.dart';
import 'package:gpt_detector/app/errors/failure.dart';
import 'package:gpt_detector/core/network/network_info.dart';
import 'package:gpt_detector/feature/detector/data/data_sources/remote/detector_remote_data_source.dart';
import 'package:gpt_detector/feature/detector/data/model/detector/detector_model.dart';
import 'package:gpt_detector/feature/detector/domain/entities/detector/detector_entity.dart';
import 'package:gpt_detector/feature/detector/domain/repositories/detector_repository.dart';

class DetectorRepositoryImpl implements DetectorRepository {
  DetectorRepositoryImpl({
    required DetectorRemoteDataSource detectorRemoteDataSource,
    required NetworkInfo networkInfo,
  })  : _detectorRemoteDataSource = detectorRemoteDataSource,
        _networkInfo = networkInfo;

  final DetectorRemoteDataSource _detectorRemoteDataSource;
  final NetworkInfo _networkInfo;

  @override
  Future<Either<Failure, DetectorEntity>> detect(String userInput) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _detectorRemoteDataSource.detect(userInput);

        return right(response.toDetectorEntity());
      } catch (_) {
        return left(const Failure.networkFailure());
      }
    } else {
      return left(const Failure.noInternetFailure());
    }
  }
}
