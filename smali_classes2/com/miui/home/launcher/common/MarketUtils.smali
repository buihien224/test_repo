.class public Lcom/miui/home/launcher/common/MarketUtils;
.super Ljava/lang/Object;
.source "MarketUtils.java"


# direct methods
.method static synthetic lambda$startUserGuide$0(Ljava/util/HashSet;Ljava/lang/Void;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 5

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market/sdk/MarketManager;->getAppstoreUserGuide()Lcom/market/sdk/homeguide/AppstoreUserGuide;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market/sdk/homeguide/AppstoreUserGuide;->needShowUserGuide()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market/sdk/MarketManager;->getAppstoreUserGuide()Lcom/market/sdk/homeguide/AppstoreUserGuide;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market/sdk/homeguide/AppstoreUserGuide;->getTargetPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/ShortcutInfo;

    iget v3, v2, Lcom/miui/home/launcher/ShortcutInfo;->itemType:I

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    iget-wide v3, v2, Lcom/miui/home/launcher/ShortcutInfo;->screenId:J

    invoke-virtual {p0, v3, v4}, Lcom/miui/home/launcher/Workspace;->isDefaultScreen(J)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-wide p0, v2, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    const-wide/16 v3, -0x64

    cmp-long p0, p0, v3

    if-nez p0, :cond_3

    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    :cond_3
    return-object v0

    :cond_4
    return-object v0

    :cond_5
    :goto_0
    return-object v0
.end method

.method static synthetic lambda$startUserGuide$1()Z
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->hasMoved()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$startUserGuide$2(Landroid/content/Context;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v1

    new-instance v2, Lcom/market/sdk/homeguide/ViewConfig;

    invoke-direct {v2}, Lcom/market/sdk/homeguide/ViewConfig;-><init>()V

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iput v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->iconPaddingLeft:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iput v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->iconPaddingTop:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iput v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->iconPaddingRight:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    iput v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->iconPaddingBottom:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v3

    iput v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->titlePaddingLeft:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    iput v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->titlePaddingTop:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v3

    iput v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->titlePaddingRight:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    iput v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->titlePaddingBottom:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    iput v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->titleTextColor:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    iput v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->titleTextSize:F

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iput v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->titleWidth:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    iput v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->titleHeight:I

    iget-object v3, v2, Lcom/market/sdk/homeguide/ViewConfig;->titleLocation:[I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    iget-object v0, v2, Lcom/market/sdk/homeguide/ViewConfig;->iconLocation:[I

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setVisibility(I)V

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->getHomePreview()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setVisibility(I)V

    const-string p1, "home_preview.jpg"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".fileprovider"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    new-instance v1, Lcom/market/sdk/homeguide/HomeUserGuideData;

    invoke-direct {v1}, Lcom/market/sdk/homeguide/HomeUserGuideData;-><init>()V

    invoke-virtual {v1, p1}, Lcom/market/sdk/homeguide/HomeUserGuideData;->setHomeScreenUri(Landroid/net/Uri;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/market/sdk/homeguide/HomeUserGuideData;->setLocalFilePath(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/market/sdk/homeguide/HomeUserGuideData;->setViewConfig(Lcom/market/sdk/homeguide/ViewConfig;)V

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->hasMoved()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "Launcher.MarketUtils"

    const-string p1, "start user guide"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/market/sdk/MarketManager;->getManager()Lcom/market/sdk/MarketManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/market/sdk/MarketManager;->getAppstoreUserGuide()Lcom/market/sdk/homeguide/AppstoreUserGuide;

    move-result-object p0

    sget-object p1, Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$RekHUrodpu9Q64kgbjpYvlGDrq4;->INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$RekHUrodpu9Q64kgbjpYvlGDrq4;

    invoke-virtual {p0, v0, v1, p1}, Lcom/market/sdk/homeguide/AppstoreUserGuide;->tryShowUserGuide(Landroid/graphics/Bitmap;Lcom/market/sdk/homeguide/HomeUserGuideData;Lcom/market/sdk/homeguide/Interceptor;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static startUserGuide(Landroid/content/Context;Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet<",
            "Lcom/miui/home/launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$jY4pdSFjv3uA0u8Cv3E_XhRy-O4;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$jY4pdSFjv3uA0u8Cv3E_XhRy-O4;-><init>(Ljava/util/HashSet;)V

    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$zCup2OULrhcJJao3PwWnOq-cLLI;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/common/-$$Lambda$MarketUtils$zCup2OULrhcJJao3PwWnOq-cLLI;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-static {v0, p1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
