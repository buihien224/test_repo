.class public Lcom/miui/launcher/utils/PkgUsageStatsUtils;
.super Ljava/lang/Object;
.source "PkgUsageStatsUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadAllPackageUsageStats(Landroid/content/Context;JLjava/util/ArrayList;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/launcher/common/AppUsageStat;",
            ">;"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/launcher/utils/PkgUsageStatsUtils;->loadAllPackageUsageStatsGte_21(Landroid/content/Context;JLjava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p3}, Lcom/miui/launcher/utils/PkgUsageStatsUtils;->loadAllPackageUsageStatsLte_19(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static loadAllPackageUsageStats(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/launcher/common/AppUsageStat;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/miui/launcher/utils/PkgUsageStatsUtils;->loadAllPackageUsageStats(Landroid/content/Context;JLjava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static loadAllPackageUsageStatsGte_21(Landroid/content/Context;JLjava/util/ArrayList;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/launcher/common/AppUsageStat;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/launcher/utils/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "android.app.usage.UsageStats"

    invoke-static {v1}, Lcom/miui/launcher/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "usagestats"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "queryUsageStats"

    const-class v6, Ljava/util/List;

    const/4 p0, 0x3

    new-array v7, p0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v2, v7, v9

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v2, v7, v8

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v2, v7, v10

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p0, v9

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p0, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p0, v10

    move-object v8, p0

    invoke-static/range {v3 .. v8}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/miui/launcher/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    const-string v4, "getPackageName"

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    new-array v7, v9, [Ljava/lang/Object;

    move-object v2, v1

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v4, "getLastTimeUsed"

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    new-array v7, v9, [Ljava/lang/Object;

    move-object v2, v1

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    new-instance v2, Lcom/miui/launcher/common/AppUsageStat;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, p2, v3, v4}, Lcom/miui/launcher/common/AppUsageStat;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static loadAllPackageUsageStatsLte_19(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/launcher/common/AppUsageStat;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/launcher/utils/CollectionUtils;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "com.android.internal.os.PkgUsageStats"

    invoke-static {v1}, Lcom/miui/launcher/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const-class v1, [Ljava/lang/Object;

    const-string v2, "getAllPackageUsageStats"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3, v5}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    array-length v1, p0

    :goto_0
    if-ge v4, v1, :cond_5

    aget-object v2, p0, v4

    const-string v3, "packageName"

    invoke-static {v2, v3}, Lcom/miui/launcher/utils/ReflectUtils;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    const-string v5, "componentResumeTimes"

    invoke-static {v2, v5}, Lcom/miui/launcher/utils/ReflectUtils;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-wide/16 v5, 0x0

    invoke-static {v2}, Lcom/miui/launcher/utils/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_3

    move-wide v5, v7

    goto :goto_1

    :cond_4
    new-instance v2, Lcom/miui/launcher/common/AppUsageStat;

    invoke-direct {v2, v3, v5, v6}, Lcom/miui/launcher/common/AppUsageStat;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-object v0

    :cond_6
    :goto_3
    return-object v0
.end method
