.class public final Lcom/miui/home/settings/AllHideAppActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "AllHideAppActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAllHideAppActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AllHideAppActivity.kt\ncom/miui/home/settings/AllHideAppActivity\n*L\n1#1,110:1\n*E\n"
.end annotation


# instance fields
.field private mAppsDisposable:Lio/reactivex2/disposables/Disposable;

.field private mIconProvider:Lcom/miui/home/launcher/IconProvider;

.field private mListAdapter:Lcom/miui/home/settings/HideAppAdapter;

.field private mListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getHideApps(Lcom/miui/home/settings/AllHideAppActivity;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/settings/AllHideAppActivity;->getHideApps()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateHideAppList(Lcom/miui/home/settings/AllHideAppActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/settings/AllHideAppActivity;->updateHideAppList(Ljava/util/List;)V

    return-void
.end method

.method private final getHideApps()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/LauncherAppsCompat;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/miui/home/library/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    new-instance v5, Lcom/miui/home/launcher/AppInfo;

    const-string v6, "activityInfo"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-direct {v5, v1, v3, v6}, Lcom/miui/home/launcher/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    invoke-direct {p0, v5}, Lcom/miui/home/settings/AllHideAppActivity;->isHideAppValid(Lcom/miui/home/launcher/AppInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/miui/home/settings/AllHideAppActivity;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    if-eqz v6, :cond_1

    invoke-virtual {v6, v3}, Lcom/miui/home/launcher/IconProvider;->getActivityIcon(Landroid/content/pm/LauncherActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Lcom/miui/home/launcher/AppInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private final initData()V
    .locals 2

    new-instance v0, Lcom/miui/home/settings/AllHideAppActivity$initData$1;

    invoke-direct {v0, p0}, Lcom/miui/home/settings/AllHideAppActivity$initData$1;-><init>(Lcom/miui/home/settings/AllHideAppActivity;)V

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lio/reactivex2/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex2/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex2/schedulers/Schedulers;->computation()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex2/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex2/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/home/settings/AllHideAppActivity$initData$2;

    invoke-direct {v1, p0}, Lcom/miui/home/settings/AllHideAppActivity$initData$2;-><init>(Lcom/miui/home/settings/AllHideAppActivity;)V

    check-cast v1, Lio/reactivex2/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex2/Observable;->subscribe(Lio/reactivex2/functions/Consumer;)Lio/reactivex2/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mAppsDisposable:Lio/reactivex2/disposables/Disposable;

    return-void
.end method

.method private final initView()V
    .locals 3

    const v0, 0x7f0a018f

    invoke-virtual {p0, v0}, Lcom/miui/home/settings/AllHideAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.hide_app_recycler)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string v1, "mListView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/miui/home/settings/HideAppAdapter;

    invoke-direct {v0, v2}, Lcom/miui/home/settings/HideAppAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mListAdapter:Lcom/miui/home/settings/HideAppAdapter;

    iget-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    const-string v1, "mListView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/miui/home/settings/AllHideAppActivity;->mListAdapter:Lcom/miui/home/settings/HideAppAdapter;

    if-nez v1, :cond_2

    const-string v2, "mListAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0a01e1

    invoke-virtual {p0, v0}, Lcom/miui/home/settings/AllHideAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.loading_progress)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method private final isHideAppValid(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 6

    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/settings/AllHideAppActivity;->isUninstallAppValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getThirdApplicationConfig()Lcom/miui/home/launcher/ThirdApplicationConfig;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_0

    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getGlobalHideAppItem()Z

    move-result v2

    goto :goto_0

    :cond_0
    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getHideAppItem()Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/miui/home/launcher/ThirdApplicationConfig;->getProhibitHiddenActivities()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getClassName()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method private final isUninstallAppValid(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/Launcher;)Z
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isApplicatoin()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isHybirdApp(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    check-cast p2, Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ItemInfo;->canBeDeleted(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final updateHideAppList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mListAdapter:Lcom/miui/home/settings/HideAppAdapter;

    if-nez v0, :cond_0

    const-string v1, "mListAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/home/settings/HideAppAdapter;->setList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/home/settings/AllHideAppActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez p1, :cond_1

    const-string v0, "mProgressBar"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0086

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/AllHideAppActivity;->setContentView(I)V

    const p1, 0x7f110261

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/AllHideAppActivity;->setTitle(I)V

    invoke-direct {p0}, Lcom/miui/home/settings/AllHideAppActivity;->initView()V

    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/home/launcher/IconProvider;->newInstance(Landroid/content/Context;)Lcom/miui/home/launcher/IconProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/settings/AllHideAppActivity;->mIconProvider:Lcom/miui/home/launcher/IconProvider;

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStart()V

    invoke-direct {p0}, Lcom/miui/home/settings/AllHideAppActivity;->initData()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    iget-object v0, p0, Lcom/miui/home/settings/AllHideAppActivity;->mAppsDisposable:Lio/reactivex2/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method
