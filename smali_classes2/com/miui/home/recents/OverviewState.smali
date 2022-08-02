.class public Lcom/miui/home/recents/OverviewState;
.super Lcom/miui/home/launcher/LauncherState;
.source "OverviewState.java"


# static fields
.field private static TAG:Ljava/lang/String; = "OverviewState"


# instance fields
.field public mIsIgnoreWallpaperZoom:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x1f4

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/LauncherState;-><init>(II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/recents/OverviewState;->mIsIgnoreWallpaperZoom:Z

    return-void
.end method


# virtual methods
.method public getShortcutMenuLayerAlpha()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getShortcutMenuLayerScale()F
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowLevelOrLiteDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f6e147b    # 0.93f

    goto :goto_0

    :cond_0
    const v0, 0x3f59999a    # 0.85f

    :goto_0
    return v0
.end method

.method public getWorkspaceTranslationY(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onExitState(Lcom/miui/home/launcher/Launcher;)V
    .locals 4

    sget-object v0, Lcom/miui/home/recents/OverviewState;->TAG:Ljava/lang/String;

    const-string v1, "onExitState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->onExitState()V

    invoke-static {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v2

    const-string v3, "action_close_recent"

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-boolean v0, p0, Lcom/miui/home/recents/OverviewState;->mIsIgnoreWallpaperZoom:Z

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->animateWallpaperZoom(Z)V

    :cond_1
    iput-boolean v1, p0, Lcom/miui/home/recents/OverviewState;->mIsIgnoreWallpaperZoom:Z

    return-void
.end method

.method public onStateEnabled(Lcom/miui/home/launcher/Launcher;)V
    .locals 5

    sget-object v0, Lcom/miui/home/recents/OverviewState;->TAG:Ljava/lang/String;

    const-string v1, "onStateEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->reloadStackView()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setOverviewStateEnabled(Z)V

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->usingFsGesture()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060565

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/home/recents/util/RotationHelper;->updateRotationAnimation(I)V

    const v2, 0x7f110025

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    invoke-static {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v2

    const-string v3, "action_open_recent"

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->sendWallPaperCommand(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->animateWallpaperZoom(Z)V

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/common/messages/CloseAllOverLauncherWindowMessage;

    invoke-direct {v3}, Lcom/miui/home/launcher/common/messages/CloseAllOverLauncherWindowMessage;-><init>()V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentStateRequest(I)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isWidgetThumbnailViewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->showWidgetsPreviewLayout(Z)V

    :cond_1
    return-void
.end method

.method public onStateTransitionEnd(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    sget-object v0, Lcom/miui/home/recents/OverviewState;->TAG:Ljava/lang/String;

    const-string v1, "onStateTransitionEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentStateRequest(I)V

    return-void
.end method

.method public reenter(Lcom/miui/home/launcher/Launcher;)V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/home/recents/OverviewState;->mIsFromFsGesture:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x258

    invoke-static {p1, v1, v2, v3}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->showStatusBar(Lcom/miui/home/launcher/Launcher;ZJ)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    :cond_1
    return-void
.end method
