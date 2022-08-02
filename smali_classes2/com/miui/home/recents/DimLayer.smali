.class public Lcom/miui/home/recents/DimLayer;
.super Ljava/lang/Object;
.source "DimLayer.java"


# static fields
.field private static final sInstance:Lcom/miui/home/recents/DimLayer;


# instance fields
.field private mCurrentAlpha:F

.field private mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

.field private mIsNeedReparent:Z

.field private mIsSupportDim:Z

.field private final mLock:Ljava/lang/Object;

.field private mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/recents/DimLayer;

    invoke-direct {v0}, Lcom/miui/home/recents/DimLayer;-><init>()V

    sput-object v0, Lcom/miui/home/recents/DimLayer;->sInstance:Lcom/miui/home/recents/DimLayer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/recents/DimLayer;->mIsSupportDim:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/DimLayer;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/miui/home/recents/DimLayer;
    .locals 1

    sget-object v0, Lcom/miui/home/recents/DimLayer;->sInstance:Lcom/miui/home/recents/DimLayer;

    return-object v0
.end method

.method private isSupportDim()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/recents/DimLayer;->mIsSupportDim:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private reparentToLauncher()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/home/recents/DimLayer;->mIsNeedReparent:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;->getSurfaceControlCompat(Landroid/view/View;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object v2, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->reparent(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object v0, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->apply()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/recents/DimLayer;->mIsNeedReparent:Z
    :try_end_0
    .catch Lcom/android/systemui/shared/recents/system/TransactionCompat$IllegalParamsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/TransactionCompat$IllegalParamsException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public createDimLayer()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/home/recents/DimLayer;->isSupportDim()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/DimLayer;->removeDimLayer()V

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;->getSurfaceControlCompat(Landroid/view/View;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/DimLayer;->createDimLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/recents/DimLayer;->mIsNeedReparent:Z

    :cond_1
    return-void
.end method

.method public createDimLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/home/recents/DimLayer;->isSupportDim()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/recents/DimLayer;->removeDimLayer()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/DimLayer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/DimLayer;->removeDimLayer()V

    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-nez v1, :cond_2

    const-string v1, "Launcher Dim"

    invoke-static {v1, p1}, Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;->getColorLayer(Ljava/lang/String;Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    new-instance p1, Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-direct {p1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    const-string p1, "DimLayer"

    const-string v1, "createDimLayer"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/home/recents/DimLayer;->mIsNeedReparent:Z

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dim(FLcom/android/systemui/shared/recents/system/SurfaceControlCompat;Z)V
    .locals 5

    invoke-direct {p0}, Lcom/miui/home/recents/DimLayer;->isSupportDim()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/DimLayer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/DimLayer;->mCurrentAlpha:F

    iget-object p1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget v3, p0, Lcom/miui/home/recents/DimLayer;->mCurrentAlpha:F

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v3, v4

    invoke-virtual {p1, v1, v3}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setAlpha(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object p1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-eqz p3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_0
    invoke-virtual {p1, v1, p2, v3}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setRelativeLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;I)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget p1, p0, Lcom/miui/home/recents/DimLayer;->mCurrentAlpha:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object p2, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->show(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object p2, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->hide(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-direct {p0}, Lcom/miui/home/recents/DimLayer;->reparentToLauncher()V

    :goto_1
    iget-object p1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->setEarlyWakeup()Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object p1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->apply()V

    const-string p1, "DimLayer"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dim mCurrentAlpha="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/DimLayer;->mCurrentAlpha:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "   isDimSelf="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "DimLayer"

    const-string p3, "dim error"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getCurrentAlpha()F
    .locals 1

    iget v0, p0, Lcom/miui/home/recents/DimLayer;->mCurrentAlpha:F

    return v0
.end method

.method public removeDimLayer()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/DimLayer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object v2, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->remove(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)Lcom/android/systemui/shared/recents/system/TransactionCompat;

    iget-object v1, p0, Lcom/miui/home/recents/DimLayer;->mTransaction:Lcom/android/systemui/shared/recents/system/TransactionCompat;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/system/TransactionCompat;->apply()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/home/recents/DimLayer;->mDimLayer:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    const-string v1, "DimLayer"

    const-string v2, "removeDimLayer"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "DimLayer"

    const-string v3, "removeDimLayer error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
