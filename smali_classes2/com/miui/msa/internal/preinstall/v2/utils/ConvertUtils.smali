.class public Lcom/miui/msa/internal/preinstall/v2/utils/ConvertUtils;
.super Ljava/lang/Object;
.source "ConvertUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConvertUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCnCloudControlInfoFromV1ToV2(Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;)Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;

    invoke-direct {v0}, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;-><init>()V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->isCloseAd()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->setCloseAd(Z)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->isOpenXout()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->setOpenXout(Z)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->getQueryType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->setQueryType(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->getxOutProtectionInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->setxOutProtectionInMillis(J)V

    return-object v0
.end method

.method public static convertCnCloudControlInfoFromV2ToV1(Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;)Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "com.miui.msa.internal.preinstall.v1.CNColudControlInfo"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ConvertUtils"

    const-string v3, "convertCnCloudControlInfoFromV2ToV1 e:"

    invoke-static {v2, v3, v1}, Lcom/miui/msa/internal/preinstall/v2/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->isCloseAd()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->setCloseAd(Z)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->isOpenXout()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->setOpenXout(Z)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->getQueryType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->setQueryType(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/CNColudControlInfo;->getxOutProtectionInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/msa/internal/preinstall/v1/CNColudControlInfo;->setxOutProtectionInMillis(J)V

    :cond_1
    return-object v0
.end method

.method public static convertFolderInfoFromV1ToV2(Lcom/miui/msa/internal/preinstall/v1/FolderInfo;)Lcom/miui/msa/internal/preinstall/v2/FolderInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;

    invoke-direct {v0}, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;-><init>()V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v1/FolderInfo;->getFolderTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->setFolderTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v1/FolderInfo;->getPackages()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->setPackages(Ljava/util/List;)V

    return-object v0
.end method

.method public static convertFolderInfoFromV2ToV1(Lcom/miui/msa/internal/preinstall/v2/FolderInfo;)Lcom/miui/msa/internal/preinstall/v1/FolderInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/miui/msa/internal/preinstall/v1/FolderInfo;

    invoke-direct {v0}, Lcom/miui/msa/internal/preinstall/v1/FolderInfo;-><init>()V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->getFolderTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v1/FolderInfo;->setFolderTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/FolderInfo;->getPackages()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/msa/internal/preinstall/v1/FolderInfo;->setPackages(Ljava/util/List;)V

    return-object v0
.end method

.method public static convertRecInfoFromV1ToV2(Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;)Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    invoke-direct {v0}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;-><init>()V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->getApkSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->setApkSize(J)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->setAppName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->getCacheTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->setCacheTime(J)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->setCategoryName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->getClickMonitorUrls()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->setClickMonitorUrls(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->getEndTimeInMills()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->setEndTimeInMills(J)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->getEx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->setEx(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->getIconUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->setIconUri(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->setId(J)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->getLandingPage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->setLandingPage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->getPassback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->setPassback(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->getShowAdMark()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->setShowAdMark(I)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->setSummary(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->getTagId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->setTagId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->getViewMonitorUrls()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->setViewMonitorUrls(Ljava/util/List;)V

    return-object v0
.end method

.method public static convertRecInfoFromV2ToV1(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;

    invoke-direct {v0}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;-><init>()V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getApkSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->setApkSize(J)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->setAppName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getCacheTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->setCacheTime(J)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->setCategoryName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getClickMonitorUrls()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->setClickMonitorUrls(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getEndTimeInMills()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->setEndTimeInMills(J)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getEx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->setEx(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getIconUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->setIconUri(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->setId(J)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getLandingPage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->setLandingPage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getPassback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->setPassback(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getShowAdMark()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->setShowAdMark(I)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->setSummary(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getTagId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->setTagId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;->getViewMonitorUrls()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;->setViewMonitorUrls(Ljava/util/List;)V

    return-object v0
.end method

.method public static convertRecListFromV1ToV2(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;

    invoke-static {v1}, Lcom/miui/msa/internal/preinstall/v2/utils/ConvertUtils;->convertRecInfoFromV1ToV2(Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;)Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertRecListFromV2ToV1(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    invoke-static {v1}, Lcom/miui/msa/internal/preinstall/v2/utils/ConvertUtils;->convertRecInfoFromV2ToV1(Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;)Lcom/miui/msa/internal/preinstall/v1/FolderRecommendAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
