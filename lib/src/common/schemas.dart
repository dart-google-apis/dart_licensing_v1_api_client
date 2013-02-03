part of licensing_v1_api_client;

/** Template for LiscenseAssignment Resource */
class LicenseAssignment {

  /** ETag of the resource. */
  String etags;

  /** Identifies the resource as a LicenseAssignment. */
  String kind;

  /** Name of the product. */
  String productId;

  /** Link to this page. */
  String selfLink;

  /** Name of the sku of the product. */
  String skuId;

  /** Email id of the user. */
  String userId;

  /** Create new LicenseAssignment from JSON data */
  LicenseAssignment.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** Template for LicenseAssignment Insert request */
class LicenseAssignmentInsert {

  /** Email id of the user */
  String userId;

  /** Create new LicenseAssignmentInsert from JSON data */
  LicenseAssignmentInsert.fromJson(Map json) {
    if (json.containsKey("userId")) {
      userId = json["userId"];
    }
  }

  /** Create JSON Object for LicenseAssignmentInsert */
  Map toJson() {
    var output = new Map();

    if (userId != null) {
      output["userId"] = userId;
    }

    return output;
  }

  /** Return String representation of LicenseAssignmentInsert */
  String toString() => JSON.stringify(this.toJson());

}

/** LicesnseAssignment List for a given product/sku for a customer. */
class LicenseAssignmentList {

  /** ETag of the resource. */
  String etag;

  /** The LicenseAssignments in this page of results. */
  List<LicenseAssignment> items;

  /** Identifies the resource as a collection of LicenseAssignments. */
  String kind;

  /** The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. */
  String nextPageToken;

  /** Create new LicenseAssignmentList from JSON data */
  LicenseAssignmentList.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new LicenseAssignment.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for LicenseAssignmentList */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
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
  String toString() => JSON.stringify(this.toJson());

}

