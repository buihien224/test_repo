.class public Lcom/miui/launcher/utils/BoostHelper;
.super Ljava/lang/Object;
.source "BoostHelper.java"


# static fields
.field private static final BOOST_PRIORITY:I = -0x14

.field private static final TAG:Ljava/lang/String; = "Launcher.Boost"

.field private static final sInstance:Lcom/miui/launcher/utils/BoostHelper;


# instance fields
.field private mEnableRTMode:Z

.field private mIsSchedRTDisabled:Z

.field private mIsTurboSchedDisabled:Z

.field private mLastDuration:J

.field private mNormalBoostToken:Ljava/lang/Object;

.field private mOldRenderPriority:I

.field private mOldUIPriority:I

.field private mProcessManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mRenderThreadTid:I

.field private mSchedThreadsMethod:Ljava/lang/reflect/Method;

.field private mStartTime:J

.field private mTurboSchedManagerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mTurboSchedManagerObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/launcher/utils/BoostHelper;

    invoke-direct {v0}, Lcom/miui/launcher/utils/BoostHelper;-><init>()V

    sput-object v0, Lcom/miui/launcher/utils/BoostHelper;->sInstance:Lcom/miui/launcher/utils/BoostHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mRenderThreadTid:I

    iput-boolean v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mIsTurboSchedDisabled:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/launcher/utils/BoostHelper;->mTurboSchedManagerClass:Ljava/lang/Class;

    iput-object v1, p0, Lcom/miui/launcher/utils/BoostHelper;->mTurboSchedManagerObject:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/miui/launcher/utils/BoostHelper;->mNormalBoostToken:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mIsSchedRTDisabled:Z

    iput-object v1, p0, Lcom/miui/launcher/utils/BoostHelper;->mProcessManagerClass:Ljava/lang/Class;

    iput-object v1, p0, Lcom/miui/launcher/utils/BoostHelper;->mSchedThreadsMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/launcher/utils/BoostHelper;->mEnableRTMode:Z

    :try_start_0
    iget-object v2, p0, Lcom/miui/launcher/utils/BoostHelper;->mProcessManagerClass:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "miui.process.ProcessManager"

    invoke-static {v2}, Lcom/miui/launcher/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/launcher/utils/BoostHelper;->mProcessManagerClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/miui/launcher/utils/BoostHelper;->mProcessManagerClass:Ljava/lang/Class;

    const-string v3, "beginSchedThreads"

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v5, v0, [Ljava/lang/Class;

    invoke-static {v4, v5}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const-string v6, "[I"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-static {v2, v3, v4, v5}, Lcom/miui/launcher/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/launcher/utils/BoostHelper;->mSchedThreadsMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Launcher.Boost"

    const-string v4, "reflect error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    :try_start_1
    const-string v2, "persist.sys.enable_rtmode"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/launcher/utils/BoostHelper;->mEnableRTMode:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "Launcher.Boost"

    const-string v4, "get property error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object v2, p0, Lcom/miui/launcher/utils/BoostHelper;->mProcessManagerClass:Ljava/lang/Class;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/launcher/utils/BoostHelper;->mSchedThreadsMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/miui/launcher/utils/BoostHelper;->mEnableRTMode:Z

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mIsSchedRTDisabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/launcher/utils/BoostHelper;Landroid/view/View;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/miui/launcher/utils/BoostHelper;->getRenderThreadId(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/miui/launcher/utils/BoostHelper;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/launcher/utils/BoostHelper;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/miui/launcher/utils/BoostHelper;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/launcher/utils/BoostHelper;->mLastDuration:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/miui/launcher/utils/BoostHelper;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/miui/launcher/utils/BoostHelper;->mTurboSchedManagerClass:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/launcher/utils/BoostHelper;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    iput-object p1, p0, Lcom/miui/launcher/utils/BoostHelper;->mTurboSchedManagerClass:Ljava/lang/Class;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/launcher/utils/BoostHelper;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/launcher/utils/BoostHelper;->mTurboSchedManagerObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lcom/miui/launcher/utils/BoostHelper;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/miui/launcher/utils/BoostHelper;->mTurboSchedManagerObject:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/miui/launcher/utils/BoostHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/launcher/utils/BoostHelper;->mIsTurboSchedDisabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/launcher/utils/BoostHelper;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/miui/launcher/utils/BoostHelper;->mProcessManagerClass:Ljava/lang/Class;

    return-object p0
.end method

.method private bindCoreInternal(Landroid/view/View;J)V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/launcher/utils/BoostHelper;->mStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/miui/launcher/utils/BoostHelper;->mLastDuration:J

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    sub-long v4, p2, v2

    move-wide v5, v4

    goto :goto_0

    :cond_0
    move-wide v5, p2

    :goto_0
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    cmp-long v0, v5, v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/launcher/utils/BoostHelper;->mNormalBoostToken:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/miui/launcher/utils/BoostHelper$1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/launcher/utils/BoostHelper$1;-><init>(Lcom/miui/launcher/utils/BoostHelper;Landroid/view/View;JJ)V

    iget-object v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mNormalBoostToken:Ljava/lang/Object;

    invoke-virtual {v9, v10, v0, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public static getInstance()Lcom/miui/launcher/utils/BoostHelper;
    .locals 1

    sget-object v0, Lcom/miui/launcher/utils/BoostHelper;->sInstance:Lcom/miui/launcher/utils/BoostHelper;

    return-object v0
.end method

.method private getRenderThreadId(Landroid/view/View;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mRenderThreadTid:I

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getThreadedRenderer()Landroid/view/ThreadedRenderer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    :cond_0
    const-string v1, "nGetRenderThreadTid"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v3, "mNativeProxy"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v3

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "Launcher.Boost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRenderThreadId tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/miui/launcher/utils/BoostHelper;->mRenderThreadTid:I

    :cond_1
    iget p1, p0, Lcom/miui/launcher/utils/BoostHelper;->mRenderThreadTid:I

    return p1
.end method


# virtual methods
.method public bindCore(Landroid/view/View;J)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mIsTurboSchedDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/launcher/utils/BoostHelper;->bindCoreInternal(Landroid/view/View;J)V

    return-void
.end method

.method public boost(Landroid/view/View;Z)V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/miui/launcher/utils/BoostHelper;->getRenderThreadId(Landroid/view/View;)I

    move-result p1

    const-string v1, "Launcher.Boost"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boost enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ";ui thread tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";render thread tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p1, "Launcher.Boost"

    const-string p2, "render-thread tid = 0, do not boost"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result p2

    iput p2, p0, Lcom/miui/launcher/utils/BoostHelper;->mOldUIPriority:I

    const-string p2, "Launcher.Boost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ui thread old priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/launcher/utils/BoostHelper;->mOldUIPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result p2

    iput p2, p0, Lcom/miui/launcher/utils/BoostHelper;->mOldRenderPriority:I

    const-string p2, "Launcher.Boost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "render thread old priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/launcher/utils/BoostHelper;->mOldRenderPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Launcher.Boost"

    const/16 v1, -0x14

    invoke-static {v0, v1, p2}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    const-string p2, "Launcher.Boost"

    invoke-static {p1, v1, p2}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    const-string p1, "Launcher.Boost"

    const-string p2, "ui thread and render thread are boosted"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/miui/launcher/utils/BoostHelper;->mOldUIPriority:I

    const-string v1, "Launcher.Boost"

    invoke-static {v0, p2, v1}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    iget p2, p0, Lcom/miui/launcher/utils/BoostHelper;->mOldRenderPriority:I

    const-string v0, "Launcher.Boost"

    invoke-static {p1, p2, v0}, Landroid/os/MiuiProcess;->setThreadPriority(IILjava/lang/String;)V

    const-string p1, "Launcher.Boost"

    const-string p2, "ui thread and render thread are reset"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Launcher.Boost"

    const-string v0, "boost failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public boostGesture(JLandroid/view/View;II)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mIsSchedRTDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :try_start_0
    invoke-direct {p0, p3}, Lcom/miui/launcher/utils/BoostHelper;->getRenderThreadId(Landroid/view/View;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget p3, p0, Lcom/miui/launcher/utils/BoostHelper;->mRenderThreadTid:I

    if-lez p3, :cond_2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-lez p4, :cond_3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-lez p5, :cond_4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p3, p3, [I

    const/4 p4, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p4, p5, :cond_5

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    aput p5, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/launcher/utils/BoostHelper;->boostThreadInternal(J[I)V

    :cond_6
    return-void
.end method

.method public boostMainThreadAndRenderThread(JLandroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mIsSchedRTDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :try_start_0
    invoke-direct {p0, p3}, Lcom/miui/launcher/utils/BoostHelper;->getRenderThreadId(Landroid/view/View;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget p3, p0, Lcom/miui/launcher/utils/BoostHelper;->mRenderThreadTid:I

    if-lez p3, :cond_2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p3, p3, [I

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/launcher/utils/BoostHelper;->boostThreadInternal(J[I)V

    :cond_4
    return-void
.end method

.method public boostThreadInternal(J[I)V
    .locals 2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/launcher/utils/BoostHelper$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/miui/launcher/utils/BoostHelper$2;-><init>(Lcom/miui/launcher/utils/BoostHelper;[IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isSchedRTDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/launcher/utils/BoostHelper;->mIsSchedRTDisabled:Z

    return v0
.end method
