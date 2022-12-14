.class public abstract Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;
.super Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;
.source "SystemShortcutMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ReplaceWidgetShortcutMenuItem;,
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddWidgetShortcutMenuItem;,
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;,
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;,
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$UninstallShortcutMenuItem;,
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$TipMenuItem;,
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddToWorkspaceMenuItem;,
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;,
        Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AppDetailsShortcutMenuItem;
    }
.end annotation


# static fields
.field private static sAllSystemShortcutMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sAllWidgetShortcutMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->addPairIconToWorkspace(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/ItemInfo;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->analyticalData(Lcom/miui/home/launcher/ItemInfo;Ljava/lang/String;)V

    return-void
.end method

.method private static addPairIconToWorkspace(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 7

    instance-of v0, p0, Lcom/miui/home/launcher/PairShortcutInfo;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/miui/home/launcher/PairShortcutInfo;

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/miui/home/launcher/PairShortcutInfo;->getShortcutInfo1()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppPairController()Lcom/miui/home/launcher/AppPairController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/home/launcher/PairShortcutInfo;->getShortcutInfo2()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/home/launcher/PairShortcutInfo;->getShortcutInfo2()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/ShortcutInfo;->getUserId()I

    move-result v5

    invoke-virtual {v1, v2, v4, v5}, Lcom/miui/home/launcher/AppPairController;->getAppPairIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v0}, Lcom/miui/home/launcher/PairShortcutInfo;->getPairBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "iconType"

    const/4 v4, 0x7

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/PairShortcutInfo;->getPairName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$1;

    invoke-direct {v6, p1, p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$1;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ItemInfo;)V

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/InstallShortcutReceiver;->checkToAddShortcut(Landroid/content/Context;Lcom/miui/launcher/common/PinItemRequestCompat;Landroid/content/Intent;Ljava/lang/String;ILcom/miui/home/launcher/InstallShortcutReceiver$InstallShortcutListener;)V

    :cond_0
    return-void
.end method

.method private static analyticalData(Lcom/miui/home/launcher/ItemInfo;Ljava/lang/String;)V
    .locals 3

    const-string v0, "unknown"

    const-string v1, "unknown"

    instance-of v2, p0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_0

    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getPairCompletePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getAppStyle()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v0, p1, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickShortcutMenuItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static createAllSystemShortcutMenuItems()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;

    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ShareAppShortcutMenuItem;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AppDetailsShortcutMenuItem;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AppDetailsShortcutMenuItem;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$UninstallShortcutMenuItem;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$UninstallShortcutMenuItem;-><init>()V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$EditShortcutMenuItem;-><init>()V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ReplaceWidgetShortcutMenuItem;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$ReplaceWidgetShortcutMenuItem;-><init>()V

    const/4 v4, 0x4

    aput-object v1, v0, v4

    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$DeleteShortcutMenuItem;-><init>()V

    const/4 v4, 0x5

    aput-object v1, v0, v4

    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddToWorkspaceMenuItem;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddToWorkspaceMenuItem;-><init>()V

    const/4 v4, 0x6

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->sAllSystemShortcutMenuItems:Ljava/util/List;

    new-array v0, v3, [Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;

    new-instance v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddWidgetShortcutMenuItem;

    invoke-direct {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem$AddWidgetShortcutMenuItem;-><init>()V

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->sAllWidgetShortcutMenuItems:Ljava/util/List;

    return-void
.end method

.method public static getAllSystemShortcutMenuItem()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->sAllSystemShortcutMenuItems:Ljava/util/List;

    return-object v0
.end method

.method public static getAllWidgetShortcutMenuItem()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->sAllWidgetShortcutMenuItems:Ljava/util/List;

    return-object v0
.end method

.method public static resetAllSystemShortcutMenuItems()V
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->sAllSystemShortcutMenuItems:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;

    invoke-virtual {v1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->resetData()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public isValid(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 1

    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->setUserHandle(Landroid/os/UserHandle;)V

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->setComponentName(Landroid/content/ComponentName;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->isValid()Z

    move-result p1

    return p1
.end method

.method protected resetData()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->setUserHandle(Landroid/os/UserHandle;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/shortcuts/SystemShortcutMenuItem;->setComponentName(Landroid/content/ComponentName;)V

    return-void
.end method
