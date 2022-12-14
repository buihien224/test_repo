.class public abstract Lcom/miui/home/launcher/overlay/OverlayTransitionController;
.super Ljava/lang/Object;
.source "OverlayTransitionController.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherStateManager$StateHandler;
.implements Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;
.implements Lcom/miui/home/launcher/util/LauncherStateSwitch;


# instance fields
.field protected isTargetOpenOverlay:Z

.field private mAlpha:F

.field protected mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

.field private mScale:F


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mScale:F

    iput v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mAlpha:F

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public canCancel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract initCurrentAnimation(F)Z
.end method

.method public isOverlayAttached()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onScrollChanged(F)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->isTargetOpenOverlay:Z

    if-eqz v2, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    sub-float v2, v1, p1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setLauncherWindowAlpha(F)V

    return-void
.end method

.method public onScrollEnd(F)V
    .locals 0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->onOverlayScrollEnd()V

    return-void
.end method

.method public onScrollStart(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->initCurrentAnimation(F)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->isTargetOpenOverlay:Z

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mCurrentAnimation:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;->pause()V

    :goto_0
    return-void
.end method

.method protected abstract reset()V
.end method

.method public setAlphaAndScale(FF)V
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mScale:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->setAlphaAndScale(FF)V

    :cond_1
    iput p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mAlpha:F

    iput p2, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mScale:F

    return-void
.end method

.method public setOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->reset()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->setOverlayCallbacks(Lcom/miui/home/launcher/overlay/LauncherOverlayCallbacks;)V

    :cond_0
    return-void
.end method

.method public showOverlay(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/OverlayTransitionController;->mLauncherOverlay:Lcom/miui/home/launcher/overlay/LauncherOverlay;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/overlay/LauncherOverlay;->showOverlay(Z)V

    :cond_0
    return-void
.end method
