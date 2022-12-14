.class public abstract Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseWidgetsVerticalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;,
        Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;,
        Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADD_CONTACTS_COMPONENT:Landroid/content/ComponentName;

.field protected static final sCategoryMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDisabledComponents:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sShortcutProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ShortcutProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sToggles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAllItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field protected mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mScreenType:I

.field private mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.contacts"

    const-string v2, "com.android.contacts.ContactShortcut"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->ADD_CONTACTS_COMPONENT:Landroid/content/ComponentName;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sShortcutProviders:Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sShortcutProviders:Ljava/util/ArrayList;

    new-instance v1, Lcom/miui/home/launcher/ShortcutProviderInfo;

    sget-object v2, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->ADD_CONTACTS_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/ShortcutProviderInfo;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sDisabledComponents:Ljava/util/Collection;

    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sDisabledComponents:Ljava/util/Collection;

    const-string v1, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    const-string v1, "com.android.calendar"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    const-string v1, "com.xiaomi.calendar"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    const-string v1, "com.miui.notes"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    const-string v1, "com.miui.player"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    const-string v1, "com.android.calculator2"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    const-string v1, "com.miui.weather2"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/widget/WidgetThumbnailView;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;)Lcom/miui/home/launcher/widget/WidgetThumbnailView;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mWidgetThumbnailView:Lcom/miui/home/launcher/widget/WidgetThumbnailView;

    return-object p0
.end method

.method private buildAppWidgetsItems(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
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

    if-ge v0, v1, :cond_5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->needsHideFromPicker()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v3, v2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->isMIUIWidget:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_2

    const-string v3, "com.mi.globalminusscreen"

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    sget-object v3, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sCategoryMaps:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->mWidgetCategory:I

    :cond_4
    invoke-virtual {p0, v2, p2}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private buildDualClockItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/home/launcher/gadget/DualClockUtils;->shouldUseDualClock()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getDualClockInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getDualClockInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private buildFirstLineItems(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getNoMtzInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/launcher/utils/ToggleManagerUtils;->getAllToggles(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;-><init>(I)V

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.miui.action.TOGGLE_SHURTCUT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "ToggleId"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v5, v4, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->loadToggleInfo(Landroid/content/Context;)V

    const/4 v3, 0x3

    iput v3, v4, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->mIconType:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->getValidShortcutProviderInfos()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutProviderInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private buildGadgetItems(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getAllGadgetNum()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-static {v1}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getGadgetInfoByIndex(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getGadgetId()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    invoke-virtual {p0, v2, p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private buildThemeClockItems(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/home/launcher/common/StorageMamlClockHelper;->getStorageClocks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;

    invoke-static {v1}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getThemeClockGadgetInfo(Lcom/miui/home/launcher/common/StorageMamlClockHelper$MamlClock_2x4;)Lcom/miui/home/launcher/gadget/ThemeClockGadgetInfo;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getValidShortcutProviderInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutProviderInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sShortcutProviders:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->stream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$l0lbedNzvFCbqUxsOllvrihahkM;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$l0lbedNzvFCbqUxsOllvrihahkM;-><init>(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static synthetic lambda$getValidShortcutProviderInfos$0(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;Lcom/miui/home/launcher/ShortcutProviderInfo;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/home/launcher/ScreenUtils;->isActivityExist(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p1

    return p1
.end method

.method public static synthetic lambda$onBindViewHolder$1(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;-><init>()V

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    iget-object v1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/miui/home/launcher/ScreenUtils;->getProviderName(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mTitle:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/appwidget/AppWidgetProviderInfo;->loadIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static synthetic lambda$onBindViewHolder$2(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;-><init>()V

    check-cast p1, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    iget v1, p1, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->addType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1104aa

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;->addType:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f110421

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mTitle:Ljava/lang/String;

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static synthetic lambda$onBindViewHolder$3(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;-><init>()V

    check-cast p1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/gadget/GadgetInfo;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic lambda$setViewHolderAsync$4(Ljava/util/concurrent/Callable;Ljava/lang/Void;)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;
    .locals 0

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$setViewHolderAsync$5(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract buildSecondLineItems(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public initAllItems()V
    .locals 5

    iget-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/Utilities;->getInstalledProvidersForAllUser(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/gadget/GadgetFactory;->loadMtzGadgetList()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-lez v1, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    const-string v3, "com.miui.player"

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    if-gtz v3, :cond_1

    iget v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    if-gtz v3, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sDisabledComponents:Ljava/util/Collection;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->sToggles:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->buildFirstLineItems(Ljava/util/List;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->buildSecondLineItems(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->buildGadgetItems(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->buildDualClockItems(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->buildThemeClockItems(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->buildAppWidgetsItems(Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected insertItemToAllItems(Lcom/miui/home/launcher/ItemInfo;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/ItemInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {p0, p1, v3}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->isSameWidgetCategory(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method protected isSameWidgetCategory(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;)Z
    .locals 4

    instance-of v0, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    instance-of v0, p2, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;->getWidgetCategoryString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    if-eq v0, v3, :cond_1

    invoke-interface {p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;->getWidgetCategoryString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;->getWidgetCategoryString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    :goto_1
    invoke-interface {p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;->getWidgetCategoryId()I

    move-result v0

    const/16 v3, -0x3e7

    if-eq v0, v3, :cond_3

    invoke-interface {p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;->getWidgetCategoryId()I

    move-result p1

    invoke-interface {p2}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$MiuiWidget;->getWidgetCategoryId()I

    move-result p2

    if-ne p1, p2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->onBindViewHolder(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;I)V
    .locals 5

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070584

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07066c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iget-object v1, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    if-nez p2, :cond_1

    iget-object v0, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f1104da

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mSmallIcon:Landroid/widget/ImageView;

    const v1, 0x7f0806ce

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    instance-of v1, v0, Lcom/miui/home/launcher/LauncherAppWidgetProviderInfo;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$LMW5eKRoxcoTdjEjCjfrPt7KCz4;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$LMW5eKRoxcoTdjEjCjfrPt7KCz4;-><init>(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->setViewHolderAsync(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;Ljava/util/concurrent/Callable;)V

    goto :goto_1

    :cond_2
    instance-of v1, v0, Lcom/miui/home/launcher/ShortcutPlaceholderProviderInfo;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$izzgTr2OUJ3l21goh08uk1-vU6w;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$izzgTr2OUJ3l21goh08uk1-vU6w;-><init>(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->setViewHolderAsync(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;Ljava/util/concurrent/Callable;)V

    goto :goto_1

    :cond_3
    instance-of v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$I6ZCygdQeMERz6E2LygMU01tirY;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$I6ZCygdQeMERz6E2LygMU01tirY;-><init>(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;Lcom/miui/home/launcher/ItemInfo;)V

    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->setViewHolderAsync(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;Ljava/util/concurrent/Callable;)V

    :cond_4
    :goto_1
    iget-object v0, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mWidgetsHorizontalAdapter:Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->setItemInfos(Ljava/util/ArrayList;)V

    iget-object p1, p1, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;->mWidgetsHorizontalAdapter:Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/widget/WidgetsHorizontalAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;
    .locals 2

    iget-object p2, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0196

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;-><init>(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setScreenType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter;->mScreenType:I

    return-void
.end method

.method protected setViewHolderAsync(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;",
            "Ljava/util/concurrent/Callable<",
            "Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$QueryResult;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$ikZrKjB52YwbnkNHa5av7nyX8xg;

    invoke-direct {v0, p2}, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$ikZrKjB52YwbnkNHa5av7nyX8xg;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p2, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$BEfDGwPhPyDYlcyX_Ma5XiVM2nI;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/widget/-$$Lambda$BaseWidgetsVerticalAdapter$BEfDGwPhPyDYlcyX_Ma5XiVM2nI;-><init>(Lcom/miui/home/launcher/widget/BaseWidgetsVerticalAdapter$ViewHolder;)V

    const/4 p1, 0x0

    invoke-static {v0, p2, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
