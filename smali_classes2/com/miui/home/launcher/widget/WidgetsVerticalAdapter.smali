.class public Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;
.super Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;
.source "WidgetsVerticalAdapter.java"


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/widget/WidgetThumbnailView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;-><init>(Lcom/miui/home/launcher/widget/WidgetThumbnailView;)V

    return-void
.end method

.method private buildShortConfigActivityItems(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->mWidgetCategory:I

    :cond_0
    invoke-virtual {p0, v1, p2}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static getCustomShortcutActivityList(Lcom/miui/home/launcher/util/PackageUserKey;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/util/PackageUserKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    :try_start_0
    const-class v2, Landroid/content/pm/LauncherApps;

    const-string v3, "getShortcutConfigActivityList"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Landroid/os/UserHandle;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object p0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, p0, Lcom/miui/home/launcher/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/miui/home/launcher/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    move-object v12, v3

    move-object v3, p0

    move-object p0, v12

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    invoke-virtual {v1, v5}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v9

    const-string v10, "launcherapps"

    invoke-virtual {v9, v10}, Lcom/miui/home/launcher/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/LauncherApps;

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v3, v10, v7

    aput-object v5, v10, v8

    invoke-virtual {v2, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/LauncherActivityInfo;

    if-nez v6, :cond_3

    invoke-virtual {v9}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v11, 0x1a

    if-lt v10, v11, :cond_2

    :cond_3
    new-instance v10, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;

    invoke-direct {v10, v9}, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo$ShortcutConfigActivityInfoVO;-><init>(Landroid/content/pm/LauncherActivityInfo;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "WidgetsVerticalAdapter"

    const-string v2, "Error calling new API"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-object v0
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;-><init>()V

    check-cast p1, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lcom/miui/home/launcher/ScreenUtils;->getProviderName(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mTitle:Ljava/lang/String;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcom/miui/home/launcher/IconCache;->getAppUserBadgedIcon(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method protected buildSecondLineItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public initAllItems()V
    .locals 2

    invoke-super {p0}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->initAllItems()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->getCustomShortcutActivityList(Lcom/miui/home/launcher/util/PackageUserKey;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->buildShortConfigActivityItems(Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->onBindViewHolder(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->onBindViewHolder(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;I)V

    iget-object v0, p0, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/ItemInfo;

    instance-of v0, p2, Lcom/miui/home/launcher/compat/ShortcutConfigActivityInfo;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsVerticalAdapter$rbvSJy-ABYw3R28YiB3axX-CC00;

    invoke-direct {v0, p0, p2}, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetsVerticalAdapter$rbvSJy-ABYw3R28YiB3axX-CC00;-><init>(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;->setViewHolderAsync(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;Ljava/util/concurrent/Callable;)V

    :cond_1
    return-void
.end method
