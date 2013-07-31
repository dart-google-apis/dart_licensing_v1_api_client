part of licensing_v1_api;

class LicenseAssignmentsResource_ {

  final Client _client;

  LicenseAssignmentsResource_(Client client) :
      _client = client;

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
  async.Future<core.Map> delete(core.String productId, core.String skuId, core.String userId, {core.Map optParams}) {
    var url = "{productId}/sku/{skuId}/user/{userId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
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
  async.Future<LicenseAssignment> get(core.String productId, core.String skuId, core.String userId, {core.Map optParams}) {
    var url = "{productId}/sku/{skuId}/user/{userId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new LicenseAssignment.fromJson(data));
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
  async.Future<LicenseAssignment> insert(LicenseAssignmentInsert request, core.String productId, core.String skuId, {core.Map optParams}) {
    var url = "{productId}/sku/{skuId}/user";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new LicenseAssignment.fromJson(data));
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
  async.Future<LicenseAssignmentList> listForProduct(core.String productId, core.String customerId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "{productId}/users";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new LicenseAssignmentList.fromJson(data));
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
  async.Future<LicenseAssignmentList> listForProductAndSku(core.String productId, core.String skuId, core.String customerId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "{productId}/sku/{skuId}/users";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new LicenseAssignmentList.fromJson(data));
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
  async.Future<LicenseAssignment> patch(LicenseAssignment request, core.String productId, core.String skuId, core.String userId, {core.Map optParams}) {
    var url = "{productId}/sku/{skuId}/user/{userId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new LicenseAssignment.fromJson(data));
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
  async.Future<LicenseAssignment> update(LicenseAssignment request, core.String productId, core.String skuId, core.String userId, {core.Map optParams}) {
    var url = "{productId}/sku/{skuId}/user/{userId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new LicenseAssignment.fromJson(data));
  }
}

