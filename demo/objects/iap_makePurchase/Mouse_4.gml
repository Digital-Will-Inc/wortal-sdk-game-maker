purchaseConfig = {
	productID: global.productId
}
global.iap_log += "\nProduct ID: " + global.productId;
// The purchase config needs to be stringified JSON.
wortal_iap_make_purchase_async(json_stringify(purchaseConfig));