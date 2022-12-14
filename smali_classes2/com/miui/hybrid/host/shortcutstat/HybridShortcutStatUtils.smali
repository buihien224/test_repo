.class public Lcom/miui/hybrid/host/shortcutstat/HybridShortcutStatUtils;
.super Ljava/lang/Object;
.source "HybridShortcutStatUtils.java"


# direct methods
.method public static getExFromSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "internal"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "ex"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "HybridShortcutStatUtils"

    const-string v2, "Fail get ex from source"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v1
.end method

.method public static isQuickApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "com.miui.hybrid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "IS_QUICK_APP"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->printStackTrace()V

    return v0
.end method

.method public static onHybridShortcutMoveOut(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "move_out"

    invoke-static {p0, v0, p1}, Lcom/miui/hybrid/host/shortcutstat/HybridShortcutStatUtils;->sendToXmsf(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onHybridShortcutRemove(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "remove"

    invoke-static {p0, v0, p1}, Lcom/miui/hybrid/host/shortcutstat/HybridShortcutStatUtils;->sendToXmsf(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onHybridShortcutView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "EXTRA_SOURCE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/hybrid/host/shortcutstat/HybridShortcutStatUtils;->getExFromSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VIEW"

    invoke-static {v1}, Lcom/xiaomi/analytics/Actions;->newAdAction(Ljava/lang/String;)Lcom/xiaomi/analytics/AdAction;

    move-result-object v1

    const-string v2, "ex"

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/analytics/AdAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    const-string v0, "e"

    const-string v2, "VIEW"

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/analytics/AdAction;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/Action;

    const-string v0, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaomi/analytics/AdAction;->addParam(Ljava/lang/String;J)Lcom/xiaomi/analytics/Action;

    invoke-static {p0}, Lcom/xiaomi/analytics/Analytics;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/Analytics;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaomi/analytics/Analytics;->setDontUseSystemAnalytics(Z)V

    const-string v2, "hybridplatform_shortcutpreinstalled"

    invoke-virtual {v0, v2}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object v0

    const-string v2, "com.miui.hybrid"

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/analytics/Tracker;->track(Ljava/lang/String;Lcom/xiaomi/analytics/Action;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const-string v0, "view"

    invoke-static {p0, v0, p1}, Lcom/miui/hybrid/host/shortcutstat/HybridShortcutStatUtils;->sendToXmsf(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static sendToXmsf(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.xmsf.push.XMSF_UPLOAD_ACTIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pkgname"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "category"

    const-string v2, "hybrid_shortcut_ad"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "data"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
