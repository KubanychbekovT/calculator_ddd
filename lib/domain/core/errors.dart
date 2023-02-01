class NotAuthenticatedError extends Error {}

class UnexpectedValueError extends Error {




  @override
  String toString() {
    const explanation = "Encountered a ValueFailure at an unrecoverable point.";

    return Error.safeToString('$explanation Failure was');
  }
}