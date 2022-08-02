.class public Lcom/miui/home/recents/LauncherAppTransitionManager;
.super Ljava/lang/Object;
.source "LauncherAppTransitionManager.java"


# instance fields
.field public mIsClosingAnimRunning:Z

.field public mIsIgnoreRecentsLaunchAnimationEnd:Z

.field public mIsOpenAnimRunning:Z

.field public mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/miui/home/recents/LauncherAppTransitionManager;
    .locals 1

    new-instance v0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getActivityLaunchOptions(Lcom/miui/home/launcher/Launcher;Landroid/view/View;Landroid/graphics/Rect;)Landroid/app/ActivityOptions;
    .locals 3

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    if-eqz p3, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v1, p3, Landroid/graphics/Rect;->left:I

    aget p1, v0, p1

    sub-int/2addr v1, p1

    iget p1, p3, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x1

    aget v0, v0, v2

    sub-int/2addr p1, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-static {p2, v1, p1, v0, p3}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p2, p1, p1, p3, v0}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p1

    return-object p1
.end method

.method public isOpenAnimRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/recents/LauncherAppTransitionManager;->mIsOpenAnimRunning:Z

    return v0
.end method

.method public isTaskLaunchAnimRunning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFsGestureStart()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
