.class Lmiuix/animation/internal/TransitionInfo;
.super Lmiuix/animation/utils/LinkNode;
.source "TransitionInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/utils/LinkNode<",
        "Lmiuix/animation/internal/TransitionInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final sMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public animTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/internal/AnimTask;",
            ">;"
        }
    .end annotation
.end field

.field public volatile config:Lmiuix/animation/base/AnimConfig;

.field public volatile from:Lmiuix/animation/controller/AnimState;

.field public final id:I

.field public volatile key:Ljava/lang/Object;

.field private final mAnimStats:Lmiuix/animation/internal/AnimStats;

.field public volatile startTime:J

.field public final tag:Ljava/lang/Object;

.field public final target:Lmiuix/animation/IAnimTarget;

.field public volatile to:Lmiuix/animation/controller/AnimState;

.field public volatile updateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lmiuix/animation/internal/TransitionInfo;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .locals 1

    invoke-direct {p0}, Lmiuix/animation/utils/LinkNode;-><init>()V

    sget-object v0, Lmiuix/animation/internal/TransitionInfo;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lmiuix/animation/internal/TransitionInfo;->id:I

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    new-instance v0, Lmiuix/animation/internal/AnimStats;

    invoke-direct {v0}, Lmiuix/animation/internal/AnimStats;-><init>()V

    iput-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->mAnimStats:Lmiuix/animation/internal/AnimStats;

    iput-object p1, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-direct {p0, p2}, Lmiuix/animation/internal/TransitionInfo;->getState(Lmiuix/animation/controller/AnimState;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    iput-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->from:Lmiuix/animation/controller/AnimState;

    invoke-direct {p0, p3}, Lmiuix/animation/internal/TransitionInfo;->getState(Lmiuix/animation/controller/AnimState;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    iput-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    iget-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    invoke-virtual {p2}, Lmiuix/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    iget-boolean p2, p3, Lmiuix/animation/controller/AnimState;->isTemporary:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget v0, p0, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->tag:Ljava/lang/Object;

    iput-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    :goto_0
    const/4 p2, 0x0

    iput-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-direct {p0}, Lmiuix/animation/internal/TransitionInfo;->initValueForColorProperty()V

    iget-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p3}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmiuix/animation/base/AnimConfig;->copy(Lmiuix/animation/base/AnimConfig;)V

    if-eqz p4, :cond_1

    iget-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p4, p2}, Lmiuix/animation/base/AnimConfigLink;->addTo(Lmiuix/animation/base/AnimConfig;)V

    :cond_1
    invoke-virtual {p1}, Lmiuix/animation/IAnimTarget;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object p1

    iget-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    iget-object p3, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, p2, p3}, Lmiuix/animation/listener/ListenerNotifier;->addListeners(Ljava/lang/Object;Lmiuix/animation/base/AnimConfig;)Z

    return-void
.end method

.method static decreaseStartCountForDelayAnim(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;B)V
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    iget-object p2, p2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide p2, p2, Lmiuix/animation/internal/AnimInfo;->delay:J

    const-wide/16 v1, 0x0

    cmp-long p2, p2, v1

    if-lez p2, :cond_0

    iget-object p2, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget p2, p2, Lmiuix/animation/internal/AnimStats;->startCount:I

    if-lez p2, :cond_0

    iget-object p0, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget p2, p0, Lmiuix/animation/internal/AnimStats;->startCount:I

    sub-int/2addr p2, v0

    iput p2, p0, Lmiuix/animation/internal/AnimStats;->startCount:I

    iget p0, p1, Lmiuix/animation/internal/AnimStats;->startCount:I

    sub-int/2addr p0, v0

    iput p0, p1, Lmiuix/animation/internal/AnimStats;->startCount:I

    :cond_0
    return-void
.end method

.method private getState(Lmiuix/animation/controller/AnimState;)Lmiuix/animation/controller/AnimState;
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lmiuix/animation/controller/AnimState;->isTemporary:Z

    if-eqz v0, :cond_0

    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    invoke-virtual {v0, p1}, Lmiuix/animation/controller/AnimState;->set(Lmiuix/animation/controller/AnimState;)V

    return-object v0

    :cond_0
    return-object p1
.end method

.method private initValueForColorProperty()V
    .locals 5

    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->from:Lmiuix/animation/controller/AnimState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    invoke-virtual {v0}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    invoke-virtual {v2, v1}, Lmiuix/animation/controller/AnimState;->getTempProperty(Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;

    move-result-object v1

    instance-of v2, v1, Lmiuix/animation/property/ColorProperty;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v2, v1, v3, v4}, Lmiuix/animation/internal/AnimValueUtils;->getValueOfTarget(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lmiuix/animation/internal/TransitionInfo;->from:Lmiuix/animation/controller/AnimState;

    iget-object v3, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v2, v3, v1}, Lmiuix/animation/controller/AnimState;->get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    check-cast v1, Lmiuix/animation/property/ColorProperty;

    double-to-int v2, v2

    invoke-virtual {v4, v1, v2}, Lmiuix/animation/IAnimTarget;->setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public containsProperty(Lmiuix/animation/property/FloatProperty;)Z
    .locals 1

    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    invoke-virtual {v0, p1}, Lmiuix/animation/controller/AnimState;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAnimCount()I
    .locals 1

    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    invoke-virtual {v0}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getAnimStats()Lmiuix/animation/internal/AnimStats;
    .locals 3

    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->mAnimStats:Lmiuix/animation/internal/AnimStats;

    invoke-virtual {v0}, Lmiuix/animation/internal/AnimStats;->clear()V

    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/internal/AnimTask;

    iget-object v2, p0, Lmiuix/animation/internal/TransitionInfo;->mAnimStats:Lmiuix/animation/internal/AnimStats;

    iget-object v1, v1, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    invoke-virtual {v2, v1}, Lmiuix/animation/internal/AnimStats;->add(Lmiuix/animation/internal/AnimStats;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->mAnimStats:Lmiuix/animation/internal/AnimStats;

    return-object v0
.end method

.method public initUpdateList(Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;)V
    .locals 11

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->from:Lmiuix/animation/controller/AnimState;

    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-- doSetup, target = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", f = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", t = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\nconfig = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Lmiuix/animation/controller/AnimState;->getProperty(Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;

    move-result-object v6

    invoke-interface {p1, v6}, Lmiuix/animation/internal/TransitionInfo$IUpdateInfoCreator;->getUpdateInfo(Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, v7, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-object v9, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v1, v9, v6}, Lmiuix/animation/controller/AnimState;->get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v9

    iput-wide v9, v8, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    if-eqz v0, :cond_3

    iget-object v8, v7, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-object v9, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v9, v6}, Lmiuix/animation/controller/AnimState;->get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v9

    iput-wide v9, v8, Lmiuix/animation/internal/AnimInfo;->startValue:D

    goto :goto_1

    :cond_3
    iget-object v8, v7, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v8, v8, Lmiuix/animation/internal/AnimInfo;->startValue:D

    iget-object v10, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-static {v10, v6, v8, v9}, Lmiuix/animation/internal/AnimValueUtils;->getValueOfTarget(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    move-result-wide v8

    invoke-static {v8, v9}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, v7, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iput-wide v8, v10, Lmiuix/animation/internal/AnimInfo;->startValue:D

    :cond_4
    :goto_1
    invoke-static {v7}, Lmiuix/animation/internal/AnimValueUtils;->handleSetToValue(Lmiuix/animation/listener/UpdateInfo;)Z

    if-eqz v2, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-- doSetup, target = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", property = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lmiuix/animation/property/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", startValue = "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v9, v6, Lmiuix/animation/internal/AnimInfo;->startValue:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", targetValue = "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v9, v6, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", value = "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v6, v6, Lmiuix/animation/internal/AnimInfo;->value:D

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    iput-object v4, p0, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    return-void
.end method

.method public setupTasks(Z)V
    .locals 6

    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit16 v1, v0, 0xfa0

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget-object v3, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_0

    iget-object v3, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    new-instance v5, Lmiuix/animation/internal/AnimTask;

    invoke-direct {v5}, Lmiuix/animation/internal/AnimTask;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x0

    iget-object v3, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiuix/animation/internal/AnimTask;

    iput-object p0, v4, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    add-int v5, v1, v2

    if-le v5, v0, :cond_2

    sub-int v5, v0, v1

    goto :goto_3

    :cond_2
    move v5, v2

    :goto_3
    invoke-virtual {v4, v1, v5}, Lmiuix/animation/internal/AnimTask;->setup(II)V

    if-eqz p1, :cond_3

    iget-object v4, v4, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iput v5, v4, Lmiuix/animation/internal/AnimStats;->startCount:I

    goto :goto_4

    :cond_3
    invoke-virtual {v4}, Lmiuix/animation/internal/AnimTask;->updateAnimStats()V

    :goto_4
    add-int/2addr v1, v5

    goto :goto_2

    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransitionInfo{target = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", propSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    invoke-virtual {v1}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", next = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->next:Lmiuix/animation/utils/LinkNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
