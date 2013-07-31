part of licensing_v1_api;

/** Template for LiscenseAssignment Resource */
class LicenseAssignment {

  /** ETag of the resource. */
  core.String etags;

  /** Identifies the resource as a LicenseAssignment. */
  core.String kind;

  /** Name of the product. */
  core.String productId;

  /** Link to this page. */
  core.String selfLink;

  /** Name of the sku of the product. */
  core.String skuId;

  /** Email id of the user. */
  core.String userId;

  /** Create new LicenseAssignment from JSON data */
  LicenseAssignment.fromJson(core.Map json) {
    if (json.containsKey("etags")) {
      etags = json["etags"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("productId")) {
      productId = json["productId"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("skuId")) {
      skuId = json["skuId"];
    }
    if (json.containsKey("userId")) {
      userId = json["userId"];
    }
  }

  /** Create JSON Object for LicenseAssignment */
  core.Map toJson() {
    var output = new core.Map();

    if (etags != null) {
      output["etags"] = etags;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (productId != null) {
      output["productId"] = productId;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (skuId != null) {
      output["skuId"] = skuId;
    }
    if (userId != null) {
      output["userId"] = userId;
    }

    return output;
  }

  /** Return String representation of LicenseAssignment */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Template for LicenseAssignment Insert request */
class LicenseAssignmentInsert {

  /** Email id of the user */
  core.String userId;

  /** Create new LicenseAssignmentInsert from JSON data */
  LicenseAssignmentInsert.fromJson(core.Map json) {
    if (json.containsKey("userId")) {
      userId = json["userId"];
    }
  }

  /** Create JSON Object for LicenseAssignmentInsert */
  core.Map toJson() {
    var output = new core.Map();

    if (userId != null) {
      output["userId"] = userId;
    }

    return output;
  }

  /** Return String representation of LicenseAssignmentInsert */
  core.String toString() => JSON.stringify(this.toJson());

}

/** LicesnseAssignment List for a given product/sku for a customer. */
class LicenseAssignmentList {

  /** ETag of the resource. */
  core.String etag;

  /** The LicenseAssignments in this page of results. */
  core.List<LicenseAssignment> items;

  /** Identifies the resource as a collection of LicenseAssignments. */
  core.String kind;

  /** The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. */
  core.String nextPageToken;

  /** Create new LicenseAssignmentList from JSON data */
  LicenseAssignmentList.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new LicenseAssignment.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for LicenseAssignmentList */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of LicenseAssignmentList */
  core.String toString() => JSON.stringify(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
