.class Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;
.super Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterpolatorController"
.end annotation


# instance fields
.field private mInterpolator:Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

.field private mReboundTime:J

.field private mReboundTimeExp:Lcom/miui/maml/data/Expression;

.field final synthetic this$0:Lcom/miui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/animation/interpolater/InterpolatorHelper;Lcom/miui/maml/data/Expression;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/elements/AdvancedSlider$1;)V

    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;->mInterpolator:Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    iput-object p3, p0, Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;->mReboundTimeExp:Lcom/miui/maml/data/Expression;

    return-void
.end method


# virtual methods
.method protected getDistance(J)J
    .locals 3

    iget-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;->mReboundTime:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;->onStop()V

    iget-wide p1, p0, Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;->mTotalDistance:D

    double-to-long p1, p1

    return-wide p1

    :cond_0
    long-to-float p1, p1

    long-to-float p2, v0

    div-float/2addr p1, p2

    iget-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;->mTotalDistance:D

    iget-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;->mInterpolator:Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    invoke-virtual {p2, p1}, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->get(F)F

    move-result p1

    float-to-double p1, p1

    mul-double/2addr v0, p1

    double-to-long p1, v0

    return-wide p1
.end method

.method protected onStart()V
    .locals 2

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;->mReboundTimeExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;->mReboundTime:J

    return-void
.end method
