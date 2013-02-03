part of licensing_v1_api_client;

class LicenseAssignmentsResource extends Resource {

  LicenseAssignmentsResource(Client client) : super(client) {
  }

  /**
   * Revoke License.
   *
   * [productId] - Name for product
   *
   * [skuId] - Name for sku
   *
   * [userId] - email id or unique Id of the user
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(String productId, String skuId, String userId, {Map optParams}) {
    var completer = new Completer();
    var url = "{productId}/sku/{skuId}/user/{userId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (productId == null) paramErrors.add("productId is required");
    if (productId != null) urlParams["productId"] = productId;
    if (skuId == null) paramErrors.add("skuId is required");
    if (skuId != null) urlParams["skuId"] = skuId;
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Get license assignment of a particular product and sku for a user
   *
   * [productId] - Name for product
   *
   * [skuId] - Name for sku
   *
   * [userId] - email id or unique Id of the user
   *
   * [optParams] - Additional query parameters
   */
  Future<LicenseAssignment> get(String productId, String skuId, String userId, {Map optParams}) {
    var completer = new Completer();
    var url = "{productId}/sku/{skuId}/user/{userId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (productId == null) paramErrors.add("productId is required");
    if (productId != null) urlParams["productId"] = productId;
    if (skuId == null) paramErrors.add("skuId is required");
    if (skuId != null) urlParams["skuId"] = skuId;
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new LicenseAssignment.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Assign License.
   *
   * [request] - LicenseAssignmentInsert to send in this request
   *
   * [productId] - Name for product
   *
   * [skuId] - Name for sku
   *
   * [optParams] - Additional query parameters
   */
  Future<LicenseAssignment> insert(LicenseAssignmentInsert request, String productId, String skuId, {Map optParams}) {
    var completer = new Completer();
    var url = "{productId}/sku/{skuId}/user";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (productId == null) paramErrors.add("productId is required");
    if (productId != null) urlParams["productId"] = productId;
    if (skuId == null) paramErrors.add("skuId is required");
    if (skuId != null) urlParams["skuId"] = skuId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new LicenseAssignment.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List license assignments for given product of the customer.
   *
   * [productId] - Name for product
   *
   * [customerId] - CustomerId represents the customer for whom licenseassignments are queried
   *
   * [maxResults] - Maximum number of campaigns to return at one time. Must be positive. Optional. Default value is 100.
   *   Default: 100
   *   Minimum: 1
   *   Maximum: 1000
   *
   * [pageToken] - Token to fetch the next page.Optional. By default server will return first page
   *   Default: 
   *
   * [optParams] - Additional query parameters
   */
  Future<LicenseAssignmentList> listForProduct(String productId, String customerId, {int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "{productId}/users";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) queryParams["customerId"] = customerId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (productId == null) paramErrors.add("productId is required");
    if (productId != null) urlParams["productId"] = productId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new LicenseAssignmentList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List license assignments for given product and sku of the customer.
   *
   * [productId] - Name for product
   *
   * [skuId] - Name for sku
   *
   * [customerId] - CustomerId represents the customer for whom licenseassignments are queried
   *
   * [maxResults] - Maximum number of campaigns to return at one time. Must be positive. Optional. Default value is 100.
   *   Default: 100
   *   Minimum: 1
   *   Maximum: 1000
   *
   * [pageToken] - Token to fetch the next page.Optional. By default server will return first page
   *   Default: 
   *
   * [optParams] - Additional query parameters
   */
  Future<LicenseAssignmentList> listForProductAndSku(String productId, String skuId, String customerId, {int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "{productId}/sku/{skuId}/users";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) queryParams["customerId"] = customerId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (productId == null) paramErrors.add("productId is required");
    if (productId != null) urlParams["productId"] = productId;
    if (skuId == null) paramErrors.add("skuId is required");
    if (skuId != null) urlParams["skuId"] = skuId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new LicenseAssignmentList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Assign License. This method supports patch semantics.
   *
   * [request] - LicenseAssignment to send in this request
   *
   * [productId] - Name for product
   *
   * [skuId] - Name for sku for which license would be revoked
   *
   * [userId] - email id or unique Id of the user
   *
   * [optParams] - Additional query parameters
   */
  Future<LicenseAssignment> patch(LicenseAssignment request, String productId, String skuId, String userId, {Map optParams}) {
    var completer = new Completer();
    var url = "{productId}/sku/{skuId}/user/{userId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (productId == null) paramErrors.add("productId is required");
    if (productId != null) urlParams["productId"] = productId;
    if (skuId == null) paramErrors.add("skuId is required");
    if (skuId != null) urlParams["skuId"] = skuId;
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new LicenseAssignment.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Assign License.
   *
   * [request] - LicenseAssignment to send in this request
   *
   * [productId] - Name for product
   *
   * [skuId] - Name for sku for which license would be revoked
   *
   * [userId] - email id or unique Id of the user
   *
   * [optParams] - Additional query parameters
   */
  Future<LicenseAssignment> update(LicenseAssignment request, String productId, String skuId, String userId, {Map optParams}) {
    var completer = new Completer();
    var url = "{productId}/sku/{skuId}/user/{userId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (productId == null) paramErrors.add("productId is required");
    if (productId != null) urlParams["productId"] = productId;
    if (skuId == null) paramErrors.add("skuId is required");
    if (skuId != null) urlParams["skuId"] = skuId;
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new LicenseAssignment.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

