const IAP_EVENTS = {
    GET_CATALOG_CALLBACK: "GET_CATALOG_CALLBACK",
    GET_PURCHASES_CALLBACK: "GET_PURCHASES_CALLBACK",
    MAKE_PURCHASE_CALLBACK: "MAKE_PURCHASE_CALLBACK",
    CONSUME_PURCHASE_CALLBACK: "CONSUME_PURCHASE_CALLBACK",
}

function wortalIAP_isEnabled() {
    return window.Wortal.iap.isEnabled() ? 1 : 0;
}

function wortalIAP_getCatalogAsync() {
    window.Wortal.iap.getCatalogAsync()
        .then(catalog => {
            _iapCallback(IAP_EVENTS.GET_CATALOG_CALLBACK, 1, JSON.stringify(catalog), null);
        })
        .catch(error => {
            _iapCallback(IAP_EVENTS.GET_CATALOG_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalIAP_getPurchasesAsync() {
    window.Wortal.iap.getPurchasesAsync()
        .then(purchases => {
            _iapCallback(IAP_EVENTS.GET_PURCHASES_CALLBACK, 1, JSON.stringify(purchases), null);
        })
        .catch(error => {
            _iapCallback(IAP_EVENTS.GET_PURCHASES_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalIAP_makePurchaseAsync(purchase) {
    window.Wortal.iap.makePurchaseAsync(JSON.parse(purchase))
        .then(purchase => {
            _iapCallback(IAP_EVENTS.MAKE_PURCHASE_CALLBACK, 1, JSON.stringify(purchase), null);
        })
        .catch(error => {
            _iapCallback(IAP_EVENTS.MAKE_PURCHASE_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalIAP_consumePurchaseAsync(token) {
    window.Wortal.iap.consumePurchaseAsync(token)
        .then(() => {
            _iapCallback(IAP_EVENTS.CONSUME_PURCHASE_CALLBACK, 1, null, null);
        })
        .catch(error => {
            _iapCallback(IAP_EVENTS.CONSUME_PURCHASE_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function _iapCallback(event, success, payload, error) {
    var map = {};
    map["id"] = "wortal_iap_callback";
    map["event"] = event;
    map["success"] = success;
    map["payload"] = payload;
    map["error"] = error;
    GMS_API.send_async_event_social(map);
}
