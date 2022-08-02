.class public Lcom/miui/home/recents/FloatingIconLayer;
.super Ljava/lang/Object;
.source "FloatingIconLayer.java"


# static fields
.field public static final FLOATING_ICON_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

.field private static REPARENT_DELAY_COUNT:I = 0x4

.field private static sFloatingIconHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private final mAdaptiveDrawableBounds:Landroid/graphics/Rect;

.field private mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

.field private mClipRect:Landroid/graphics/Rect;

.field private mCurRectRatio:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mFloatingIconRectF:Landroid/graphics/Rect;

.field private mFloatingIconSurface:Lcom/android/systemui/shared/recents/system/SurfaceCompat;

.field private mFloatingIconSurfaceControl:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

.field private mForegroundLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;",
            ">;"
        }
    .end annotation
.end field

.field private mIconTransparentEdge:I

.field private mIsAdaptiveIcon:Z

.field private mIsDrawIcon:Z

.field private mIsNeedReparent:Z

.field private mIsOpening:Z

.field mLaunchAppAndBackHomeAnimTargetRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mModifiedRectF:Landroid/graphics/RectF;

.field private mReparentDelayCount:I

.field private mRequestCancelDrawIcon:Z

.field private mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

.field private mValidIconRectF:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/library/utils/LooperExecutor;

    invoke-static {}, Lcom/miui/home/recents/FloatingIconLayer;->getFloatingIconLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/home/recents/FloatingIconLayer;->FLOATING_ICON_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconRectF:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mValidIconRectF:Landroid/graphics/RectF;

    new-instance v0, Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mClipRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mCurRectRatio:F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mAdaptiveDrawableBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mReparentDelayCount:I

    return-void
.end method

.method private draw(I)V
    .locals 5

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move p1, v1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mIsAdaptiveIcon:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mLaunchAppAndBackHomeAnimTargetRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurface:Lcom/android/systemui/shared/recents/system/SurfaceCompat;

    iget-object v3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconRectF:Landroid/graphics/Rect;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    invoke-interface {v0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getContentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, p1, v3, v4}, Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;->draw(Lcom/android/systemui/shared/recents/system/SurfaceCompat;ILandroid/graphics/Rect;[Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/FloatingIconLayer;->getCurrentForegroundDrawables()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mAdaptiveDrawableBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mCurRectRatio:F

    invoke-static {v2, v3}, Lcom/miui/home/recents/util/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    iget-object v3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurface:Lcom/android/systemui/shared/recents/system/SurfaceCompat;

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/drawable/Drawable;

    invoke-static {v3, p1, v2, v0}, Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;->draw(Lcom/android/systemui/shared/recents/system/SurfaceCompat;ILandroid/graphics/Rect;[Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private getCurrentForegroundDrawables()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/home/recents/FloatingIconLayer;->mForegroundLayers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getFloatingIconLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Z)Lcom/miui/home/recents/FloatingIconLayer;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "FloatingIconLayer"

    const-string v1, "getFloatingIconLayer"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/home/recents/FloatingIconLayer;

    invoke-direct {v0}, Lcom/miui/home/recents/FloatingIconLayer;-><init>()V

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/recents/FloatingIconLayer;->init(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Z)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFloatingIconLayer(Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Z)Lcom/miui/home/recents/FloatingIconLayer;
    .locals 1

    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;->getSurfaceControlCompat(Landroid/view/View;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/miui/home/recents/FloatingIconLayer;->getFloatingIconLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Z)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p0

    return-object p0
.end method

.method public static getFloatingIconLooper()Landroid/os/Looper;
    .locals 3

    sget-object v0, Lcom/miui/home/recents/FloatingIconLayer;->sFloatingIconHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FloatingIconThread"

    const/16 v2, -0x14

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/home/recents/FloatingIconLayer;->sFloatingIconHandlerThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/miui/home/recents/FloatingIconLayer;->sFloatingIconHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_0
    sget-object v0, Lcom/miui/home/recents/FloatingIconLayer;->sFloatingIconHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private static getOffsetForIconBounds(ZF)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getValidFloatingIconLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Z)Lcom/miui/home/recents/FloatingIconLayer;
    .locals 2

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;->getSurfaceControlCompat(Landroid/view/View;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0, p1, p2}, Lcom/miui/home/recents/FloatingIconLayer;->getFloatingIconLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Z)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/FloatingIconLayer;->getFloatingIconLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Z)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/home/recents/FloatingIconLayer;->mIsNeedReparent:Z

    :cond_2
    return-object p0
.end method

.method private init(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Z)V
    .locals 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mLaunchAppAndBackHomeAnimTargetRef:Ljava/lang/ref/WeakReference;

    iput-boolean p3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mIsOpening:Z

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mIsDrawIcon:Z

    invoke-interface {p2}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getContentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/FloatingIconLayer;->isUseAdaptiveIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mIsAdaptiveIcon:Z

    iput-boolean p3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mRequestCancelDrawIcon:Z

    invoke-interface {p2}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-interface {p2}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconRectF:Landroid/graphics/Rect;

    invoke-virtual {v2, p3, p3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mValidIconRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconRectF:Landroid/graphics/Rect;

    invoke-virtual {p3, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-interface {p2}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getIconTransparentEdge()I

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mIconTransparentEdge:I

    iget-object p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mValidIconRectF:Landroid/graphics/RectF;

    iget p3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mIconTransparentEdge:I

    int-to-float v2, p3

    int-to-float p3, p3

    invoke-virtual {p2, v2, p3}, Landroid/graphics/RectF;->inset(FF)V

    iget-object p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mValidIconRectF:Landroid/graphics/RectF;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget-object p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mValidIconRectF:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    float-to-int p2, p2

    iget-object p3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mValidIconRectF:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    float-to-int p3, p3

    const-string v2, "Floating Icon"

    invoke-static {v2, p2, p3, p1}, Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;->getBufferLayer(Ljava/lang/String;IILcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurfaceControl:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    new-instance p1, Lcom/android/systemui/shared/recents/system/SurfaceCompat;

    iget-object p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurfaceControl:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-direct {p1, p2}, Lcom/android/systemui/shared/recents/system/SurfaceCompat;-><init>(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)V

    iput-object p1, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurface:Lcom/android/systemui/shared/recents/system/SurfaceCompat;

    iget-boolean p1, p0, Lcom/miui/home/recents/FloatingIconLayer;->mIsAdaptiveIcon:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconRectF:Landroid/graphics/Rect;

    iget p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mIconTransparentEdge:I

    neg-int p3, p2

    neg-int p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/FloatingIconLayer;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {p1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getBackgroundLayer()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getForegroundLayers()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/FloatingIconLayer;->mForegroundLayers:Ljava/util/List;

    iget-boolean p1, p0, Lcom/miui/home/recents/FloatingIconLayer;->mIsAdaptiveIcon:Z

    int-to-float p2, v0

    invoke-static {p1, p2}, Lcom/miui/home/recents/FloatingIconLayer;->getOffsetForIconBounds(ZF)I

    move-result p1

    iget-object p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mAdaptiveDrawableBounds:Landroid/graphics/Rect;

    neg-int p3, p1

    add-int/2addr v0, p1

    add-int/2addr v1, p1

    invoke-virtual {p2, p3, p3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/miui/home/recents/FloatingIconLayer;->mAdaptiveDrawableBounds:Landroid/graphics/Rect;

    iget p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mIconTransparentEdge:I

    neg-int p3, p2

    neg-int p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Rect;->offset(II)V

    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/FloatingIconLayer;->registerEventBus()V

    return-void
.end method

.method private isUseAdaptiveIcon(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    instance-of p1, p1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isLowMemoryDevices()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic lambda$drawIcon$2(Lcom/miui/home/recents/FloatingIconLayer;I)V
    .locals 2

    const-string v0, "FloatingIconLayer"

    const-string v1, "drawIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/miui/home/recents/FloatingIconLayer;->draw(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/home/recents/FloatingIconLayer;->mIsDrawIcon:Z

    return-void
.end method

.method public static synthetic lambda$release$0(Lcom/miui/home/recents/FloatingIconLayer;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "FloatingIconLayer"

    const-string v2, "release"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :try_start_1
    new-array v2, v1, [Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurfaceControl:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {p0, v2}, Lcom/miui/home/recents/FloatingIconLayer;->releaseSurfaceControl([Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)V

    new-array v1, v1, [Lcom/android/systemui/shared/recents/system/SurfaceCompat;

    iget-object v2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurface:Lcom/android/systemui/shared/recents/system/SurfaceCompat;

    aput-object v2, v1, v4

    invoke-direct {p0, v1}, Lcom/miui/home/recents/FloatingIconLayer;->releaseSurface([Lcom/android/systemui/shared/recents/system/SurfaceCompat;)V

    invoke-direct {p0}, Lcom/miui/home/recents/FloatingIconLayer;->unregisterEventBus()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "FloatingIconLayer"

    const-string v2, "release error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$releaseSync$1(Lcom/miui/home/recents/FloatingIconLayer;Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "FloatingIconLayer"

    const-string v2, "releaseSync"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurfaceControl:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {p0, p1, v2}, Lcom/miui/home/recents/FloatingIconLayer;->releaseSurfaceControlSync(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)V

    new-array p1, v1, [Lcom/android/systemui/shared/recents/system/SurfaceCompat;

    iget-object v1, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurface:Lcom/android/systemui/shared/recents/system/SurfaceCompat;

    aput-object v1, p1, v4

    invoke-direct {p0, p1}, Lcom/miui/home/recents/FloatingIconLayer;->releaseSurface([Lcom/android/systemui/shared/recents/system/SurfaceCompat;)V

    invoke-direct {p0}, Lcom/miui/home/recents/FloatingIconLayer;->unregisterEventBus()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/FloatingIconLayer;->release()V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private registerEventBus()V
    .locals 1

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private varargs releaseSurface([Lcom/android/systemui/shared/recents/system/SurfaceCompat;)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/system/SurfaceCompat;->release()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private varargs releaseSurfaceControl([Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-virtual {v3, v2}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->remove(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/FloatingIconLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->apply()V

    return-void
.end method

.method private varargs releaseSurfaceControlSync(Landroid/view/View;[Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)V
    .locals 13

    new-instance v0, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;

    invoke-direct {v0, p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;-><init>(Landroid/view/View;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, p2, v3

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v12, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;-><init>(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;FLandroid/graphics/Matrix;Landroid/graphics/Rect;IFZ)V

    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    new-array p2, v2, [Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->scheduleApply([Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    :cond_2
    return-void
.end method

.method private setMatrixAndClip(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/RectF;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mLaunchAppAndBackHomeAnimTargetRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mLaunchAppAndBackHomeAnimTargetRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mLaunchAppAndBackHomeAnimTargetRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/miui/home/launcher/anim/WidgetTypeAnimTarget;

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mValidIconRectF:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mValidIconRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mValidIconRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_4

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->right:F

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v4, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v2, v4

    cmpg-float v4, v2, v0

    if-gez v4, :cond_5

    iget-object v2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v0

    iget-object v4, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->right:F

    goto :goto_3

    :cond_5
    cmpl-float v2, v2, v0

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v0

    iget-object v4, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    :cond_6
    :goto_3
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr v4, p2

    iput v4, p0, Lcom/miui/home/recents/FloatingIconLayer;->mCurRectRatio:F

    iget p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mCurRectRatio:F

    cmpg-float v2, p2, v0

    if-gez v2, :cond_7

    iget-object p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mCurRectRatio:F

    mul-float/2addr v0, v2

    sub-float/2addr p2, v0

    div-float/2addr p2, v3

    float-to-int p2, p2

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Rect;->inset(II)V

    goto :goto_4

    :cond_7
    cmpl-float p2, p2, v0

    if-lez p2, :cond_8

    iget-object p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mCurRectRatio:F

    div-float/2addr v0, v2

    sub-float/2addr p2, v0

    div-float/2addr p2, v3

    float-to-int p2, p2

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Rect;->inset(II)V

    :cond_8
    :goto_4
    iget-object p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mValidIconRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/home/recents/FloatingIconLayer;->mModifiedRectF:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setMatrix(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/Matrix;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setWindowCrop(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/Rect;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    return-void
.end method

.method private showSurfaceControl(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/RectF;FF)V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurfaceControl:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurface:Lcom/android/systemui/shared/recents/system/SurfaceCompat;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/SurfaceCompat;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mIsNeedReparent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mLaunchAppAndBackHomeAnimTargetRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    const/4 v2, 0x0

    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;->getSurfaceControlCompat(Landroid/view/View;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mReparentDelayCount:I

    sget v3, Lcom/miui/home/recents/FloatingIconLayer;->REPARENT_DELAY_COUNT:I

    if-ge v0, v3, :cond_1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mReparentDelayCount:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object v3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurfaceControl:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->tryReparent(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mIsNeedReparent:Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurfaceControl:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-direct {p0, v0, p2}, Lcom/miui/home/recents/FloatingIconLayer;->setMatrixAndClip(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/RectF;)V

    iget-object p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurfaceControl:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {p2, v0, p3}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setCornerRadius(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object p3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurfaceControl:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    invoke-static {v0, p4}, Ljava/lang/Math;->min(FF)F

    move-result p4

    invoke-virtual {p2, p3, p4}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setAlpha(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object p3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurfaceControl:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {p2, p3, p1, v1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setRelativeLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;I)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    :cond_3
    iget-object p1, p0, Lcom/miui/home/recents/FloatingIconLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object p2, p0, Lcom/miui/home/recents/FloatingIconLayer;->mFloatingIconSurfaceControl:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->show(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    :cond_4
    iget-object p1, p0, Lcom/miui/home/recents/FloatingIconLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->apply()V

    return-void
.end method

.method private unregisterEventBus()V
    .locals 1

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public drawIcon()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/FloatingIconLayer;->drawIcon(I)V

    return-void
.end method

.method public drawIcon(I)V
    .locals 2

    sget-object v0, Lcom/miui/home/recents/FloatingIconLayer;->FLOATING_ICON_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$FloatingIconLayer$9kRGCcPPgIqzX3cs6s-WLK-n0VQ;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$FloatingIconLayer$9kRGCcPPgIqzX3cs6s-WLK-n0VQ;-><init>(Lcom/miui/home/recents/FloatingIconLayer;I)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hideFloatingIcon(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)V
    .locals 3

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, p1, v0, v2, v2}, Lcom/miui/home/recents/FloatingIconLayer;->showSurfaceControl(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/RectF;FF)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/CancelGestureAnimationMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/home/recents/FloatingIconLayer;->mRequestCancelDrawIcon:Z

    return-void
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/miui/home/recents/FloatingIconLayer;->FLOATING_ICON_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$FloatingIconLayer$5u8LAS4MlvSn3aaeGgSK0v7wWjs;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$FloatingIconLayer$5u8LAS4MlvSn3aaeGgSK0v7wWjs;-><init>(Lcom/miui/home/recents/FloatingIconLayer;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public releaseSync(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/miui/home/recents/FloatingIconLayer;->FLOATING_ICON_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$FloatingIconLayer$21FlMXAC1lfKuRhN-cOHC6ogAJA;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$FloatingIconLayer$21FlMXAC1lfKuRhN-cOHC6ogAJA;-><init>(Lcom/miui/home/recents/FloatingIconLayer;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showFloatingIcon(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/RectF;FFF)V
    .locals 1

    iget-boolean p3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mIsDrawIcon:Z

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/miui/home/recents/FloatingIconLayer;->mLock:Ljava/lang/Object;

    monitor-enter p3

    if-eqz p2, :cond_3

    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/recents/FloatingIconLayer;->mRequestCancelDrawIcon:Z

    if-eqz v0, :cond_2

    const/4 p5, 0x0

    :cond_2
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/miui/home/recents/FloatingIconLayer;->showSurfaceControl(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/RectF;FF)V

    monitor-exit p3

    return-void

    :cond_3
    :goto_0
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
