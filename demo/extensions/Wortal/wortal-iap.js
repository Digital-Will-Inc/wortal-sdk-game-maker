function wortalIAP_isEnabled() {
    return window.Wortal.iap.isEnabled() ? 1 : 0;
}

function wortalIAP_getCatalogAsync() {
    window.Wortal.iap.getCatalogAsync()
        .then(catalog => {
            _wortalCallback(WORTAL_EVENTS.IAP_GET_CATALOG_CALLBACK, 1, JSON.stringify(catalog), null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.IAP_GET_CATALOG_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalIAP_getPurchasesAsync() {
    window.Wortal.iap.getPurchasesAsync()
        .then(purchases => {
            _wortalCallback(WORTAL_EVENTS.IAP_GET_PURCHASES_CALLBACK, 1, JSON.stringify(purchases), null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.IAP_GET_PURCHASES_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalIAP_makePurchaseAsync(purchase) {
    window.Wortal.iap.makePurchaseAsync(JSON.parse(purchase))
        .then(purchase => {
            _wortalCallback(WORTAL_EVENTS.IAP_MAKE_PURCHASE_CALLBACK, 1, JSON.stringify(purchase), null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.IAP_MAKE_PURCHASE_CALLBACK, 0, null, JSON.stringify(error));
        });
}

function wortalIAP_consumePurchaseAsync(token) {
    window.Wortal.iap.consumePurchaseAsync(token)
        .then(() => {
            _wortalCallback(WORTAL_EVENTS.IAP_CONSUME_PURCHASE_CALLBACK, 1, null, null);
        })
        .catch(error => {
            _wortalCallback(WORTAL_EVENTS.IAP_CONSUME_PURCHASE_CALLBACK, 0, null, JSON.stringify(error));
        });
}
