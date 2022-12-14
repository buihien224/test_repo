.class public Lcom/miui/maml/elements/AdvancedSlider;
.super Lcom/miui/maml/elements/ElementGroup;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;,
        Lcom/miui/maml/elements/AdvancedSlider$EndPoint;,
        Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;,
        Lcom/miui/maml/elements/AdvancedSlider$Position;,
        Lcom/miui/maml/elements/AdvancedSlider$StartPoint;,
        Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;,
        Lcom/miui/maml/elements/AdvancedSlider$State;,
        Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;,
        Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;,
        Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;,
        Lcom/miui/maml/elements/AdvancedSlider$OnLaunchListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DRAG_TOLERANCE:I = 0x96

.field private static final FREE_ENDPOINT_DIST:F = 1.7014117E38f

.field private static final LOG_TAG:Ljava/lang/String; = "LockScreen_AdvancedSlider"

.field public static final MOVE_DIST:Ljava/lang/String; = "move_dist"

.field public static final MOVE_X:Ljava/lang/String; = "move_x"

.field public static final MOVE_Y:Ljava/lang/String; = "move_y"

.field private static final NONE_ENDPOINT_DIST:F = 3.4028235E38f

.field public static final SLIDER_STATE_NORMAL:I = 0x0

.field public static final SLIDER_STATE_PRESSED:I = 0x1

.field public static final SLIDER_STATE_REACHED:I = 0x2

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TAG_NAME:Ljava/lang/String; = "Slider"


# instance fields
.field private mCurrentEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

.field private mEndPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/AdvancedSlider$EndPoint;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsHaptic:Z

.field private mIsKeepStatusAfterLaunch:Z

.field private mMoveDistVar:Lcom/miui/maml/data/IndexedVariable;

.field private mMoveXVar:Lcom/miui/maml/data/IndexedVariable;

.field private mMoveYVar:Lcom/miui/maml/data/IndexedVariable;

.field private mMoving:Z

.field private mOnLaunchListener:Lcom/miui/maml/elements/AdvancedSlider$OnLaunchListener;

.field private mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

.field private mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

.field private mStartPointPressed:Z

.field private mStateVar:Lcom/miui/maml/data/IndexedVariable;

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;
    .locals 0

    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/maml/elements/AdvancedSlider;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/maml/elements/AdvancedSlider;->cancelMoving()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/maml/elements/AdvancedSlider;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider;->moveStartPoint(FF)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/maml/elements/AdvancedSlider;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPointPressed:Z

    return p0
.end method

.method static synthetic access$600(Lcom/miui/maml/elements/AdvancedSlider;)F
    .locals 0

    iget p0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    return p0
.end method

.method static synthetic access$700(Lcom/miui/maml/elements/AdvancedSlider;)F
    .locals 0

    iget p0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    return p0
.end method

.method private cancelMoving()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->resetInner()V

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->onCancel()V

    return-void
.end method

.method private checkEndPoint(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Z
    .locals 3

    iget-wide v0, p1, Lcom/miui/maml/util/Utils$Point;->x:D

    double-to-float v0, v0

    iget-wide v1, p1, Lcom/miui/maml/util/Utils$Point;->y:D

    double-to-float p1, v1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->touched(FFZ)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->getState()Lcom/miui/maml/elements/AdvancedSlider$State;

    move-result-object p1

    sget-object v0, Lcom/miui/maml/elements/AdvancedSlider$State;->Reached:Lcom/miui/maml/elements/AdvancedSlider$State;

    if-eq p1, v0, :cond_2

    sget-object p1, Lcom/miui/maml/elements/AdvancedSlider$State;->Reached:Lcom/miui/maml/elements/AdvancedSlider$State;

    invoke-virtual {p2, p1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    if-eq v0, p2, :cond_0

    sget-object v1, Lcom/miui/maml/elements/AdvancedSlider$State;->Pressed:Lcom/miui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider;->onReach(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/miui/maml/elements/AdvancedSlider$State;->Pressed:Lcom/miui/maml/elements/AdvancedSlider$State;

    invoke-virtual {p2, p1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    :goto_1
    return v1
.end method

.method private checkTouch(FF)Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;
    .locals 10

    new-instance v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/elements/AdvancedSlider$1;)V

    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    move-object v5, v1

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    invoke-static {v6, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$1000(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;FF)Lcom/miui/maml/util/Utils$Point;

    move-result-object v7

    invoke-virtual {v6, v7, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->getTransformedDist(Lcom/miui/maml/util/Utils$Point;FF)F

    move-result v8

    cmpg-float v9, v8, v4

    if-gez v9, :cond_0

    iput-object v6, v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    move-object v5, v7

    move v4, v8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    cmpg-float p2, v4, v3

    if-gez p2, :cond_9

    iget-wide v1, v5, Lcom/miui/maml/util/Utils$Point;->x:D

    double-to-float p2, v1

    iget-wide v1, v5, Lcom/miui/maml/util/Utils$Point;->y:D

    double-to-float v1, v1

    invoke-direct {p0, p2, v1}, Lcom/miui/maml/elements/AdvancedSlider;->moveStartPoint(FF)V

    const p2, 0x7effffff

    cmpg-float p2, v4, p2

    if-gez p2, :cond_2

    iget-object p1, v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    invoke-direct {p0, v5, p1}, Lcom/miui/maml/elements/AdvancedSlider;->checkEndPoint(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Z

    move-result p1

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    invoke-static {v1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct {p0, v5, v1}, Lcom/miui/maml/elements/AdvancedSlider;->checkEndPoint(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-object v1, v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    if-eqz p1, :cond_6

    sget-object v1, Lcom/miui/maml/elements/AdvancedSlider$State;->Reached:Lcom/miui/maml/elements/AdvancedSlider$State;

    goto :goto_3

    :cond_6
    sget-object v1, Lcom/miui/maml/elements/AdvancedSlider$State;->Pressed:Lcom/miui/maml/elements/AdvancedSlider$State;

    :goto_3
    invoke-virtual {p2, v1}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    iget-boolean p2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStateVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p1, :cond_7

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    goto :goto_4

    :cond_7
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :goto_4
    invoke-virtual {p2, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_8
    iput-boolean p1, v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->reached:Z

    return-object v0

    :cond_9
    const-string p1, "LockScreen_AdvancedSlider"

    const-string p2, "unlock touch canceled due to exceeding tollerance"

    invoke-static {p1, p2}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    const-string p2, "cancel"

    invoke-virtual {p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->performAction(Ljava/lang/String;)V

    return-object v1
.end method

.method private doLaunch(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    const-string v1, "launch"

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->performAction(Ljava/lang/String;)V

    const-string v0, "launch"

    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->performAction(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->perform()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p1, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/AdvancedSlider;->onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStateVar:Lcom/miui/maml/data/IndexedVariable;

    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "move_x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveXVar:Lcom/miui/maml/data/IndexedVariable;

    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "move_y"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveYVar:Lcom/miui/maml/data/IndexedVariable;

    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "move_dist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveDistVar:Lcom/miui/maml/data/IndexedVariable;

    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    iget-object v0, v0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;

    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->addPreTicker(Lcom/miui/maml/elements/ITicker;)V

    :goto_0
    const-string v0, "haptic"

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/AdvancedSlider;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    const-string v0, "keepStatusAfterLaunch"

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/AdvancedSlider;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mIsKeepStatusAfterLaunch:Z

    return-void
.end method

.method private moveStartPoint(FF)V
    .locals 6

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    move-result v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    move-result v0

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->moveTo(FF)V

    iget-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v0, :cond_0

    float-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/AdvancedSlider;->descale(D)D

    move-result-wide v0

    float-to-double p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider;->descale(D)D

    move-result-wide p1

    mul-double v2, v0, v0

    mul-double v4, p1, p1

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveXVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v4, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveYVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveDistVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->finish()V

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->resetInner()V

    return-void
.end method

.method public init()V
    .locals 1

    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->init()V

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->init()V

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->resetInner()V

    return-void
.end method

.method protected onCancel()V
    .locals 0

    return-void
.end method

.method protected onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;
    .locals 2

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartPoint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    return-object v0

    :cond_0
    const-string v1, "EndPoint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    :cond_1
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_2
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p1

    return-object p1
.end method

.method protected onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 0

    iget-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mOnLaunchListener:Lcom/miui/maml/elements/AdvancedSlider$OnLaunchListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/miui/maml/elements/AdvancedSlider$OnLaunchListener;->onLaunch(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    iget-boolean p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mIsKeepStatusAfterLaunch:Z

    return p1
.end method

.method protected onMove(FF)V
    .locals 0

    return-void
.end method

.method protected onReach(Ljava/lang/String;)V
    .locals 1

    iget-boolean p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/maml/ScreenElementRoot;->haptic(I)V

    :cond_0
    return-void
.end method

.method protected onRelease()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->haptic(I)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->haptic(I)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->getAbsoluteLeft()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->getAbsoluteTop()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoving:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->start(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)V

    iput-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    iput-boolean v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoving:Z

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->onRelease()V

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    const-string v2, "cancel"

    invoke-virtual {v0, v2}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->performAction(Ljava/lang/String;)V

    move v0, v4

    goto/16 :goto_5

    :pswitch_1
    iget-boolean v3, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoving:Z

    if-eqz v3, :cond_9

    invoke-direct {p0, v0, v2}, Lcom/miui/maml/elements/AdvancedSlider;->checkTouch(FF)Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    iput-object v3, p0, Lcom/miui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/AdvancedSlider;->onMove(FF)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    invoke-virtual {v0, v2}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->start(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)V

    iput-boolean v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoving:Z

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->onRelease()V

    :goto_0
    move v0, v4

    goto/16 :goto_5

    :pswitch_2
    iget-boolean v3, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoving:Z

    if-eqz v3, :cond_9

    const-string v3, "LockScreen_AdvancedSlider"

    const-string v5, "unlock touch up"

    invoke-static {v3, v5}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/miui/maml/elements/AdvancedSlider;->checkTouch(FF)Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v2, v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->reached:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    invoke-direct {p0, v2}, Lcom/miui/maml/elements/AdvancedSlider;->doLaunch(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Z

    move-result v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    const-string v3, "release"

    invoke-virtual {v2, v3}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->performAction(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    const-string v3, "release"

    invoke-virtual {v2, v3}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->performAction(Ljava/lang/String;)V

    :cond_3
    move v2, v1

    :goto_1
    iget-object v0, v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    iput-boolean v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoving:Z

    if-nez v2, :cond_5

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    invoke-virtual {v0, v2}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->start(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)V

    :cond_5
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->onRelease()V

    move v0, v4

    goto/16 :goto_5

    :pswitch_3
    iget-object v3, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v3, v0, v2, v1}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->touched(FFZ)Z

    move-result v3

    if-eqz v3, :cond_9

    iput-boolean v4, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoving:Z

    iget-object v3, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v3}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    move-result v3

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    move-result v0

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->stopRunning()V

    iget v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getOffsetX()F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    iget v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getOffsetY()F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    :cond_6
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    sget-object v2, Lcom/miui/maml/elements/AdvancedSlider$State;->Pressed:Lcom/miui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v0, v2}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    sget-object v3, Lcom/miui/maml/elements/AdvancedSlider$State;->Pressed:Lcom/miui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v2, v3}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    goto :goto_3

    :cond_7
    iput-boolean v4, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPointPressed:Z

    iget-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStateVar:Lcom/miui/maml/data/IndexedVariable;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_8
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->init()V

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->onStart()V

    move v0, v4

    goto :goto_5

    :cond_9
    :goto_4
    move v0, v1

    :goto_5
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_a

    if-eqz v0, :cond_b

    iget-boolean p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mInterceptTouch:Z

    if-eqz p1, :cond_b

    :cond_a
    move v1, v4

    :cond_b
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 0

    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->pause()V

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->resetInner()V

    return-void
.end method

.method public reset(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->reset(J)V

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->resetInner()V

    return-void
.end method

.method protected resetInner()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPointPressed:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPointPressed:Z

    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->moveTo(FF)V

    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    sget-object v2, Lcom/miui/maml/elements/AdvancedSlider$State;->Normal:Lcom/miui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v1, v2}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    sget-object v3, Lcom/miui/maml/elements/AdvancedSlider$State;->Normal:Lcom/miui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v2, v3}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveXVar:Lcom/miui/maml/data/IndexedVariable;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveYVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveDistVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStateVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_1
    iput-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoving:Z

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->requestUpdate()V

    :cond_2
    return-void
.end method

.method public setOnLaunchListener(Lcom/miui/maml/elements/AdvancedSlider$OnLaunchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mOnLaunchListener:Lcom/miui/maml/elements/AdvancedSlider$OnLaunchListener;

    return-void
.end method
