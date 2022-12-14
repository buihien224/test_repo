.class public Lcom/miui/maml/animation/ScaleAnimation;
.super Lcom/miui/maml/animation/BaseAnimation;
.source "ScaleAnimation.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ScaleAnimation"


# instance fields
.field private mDelayValueX:D

.field private mDelayValueY:D


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 4

    const-string v0, "Item"

    const-string v1, "value"

    const-string v2, "x"

    const-string v3, "y"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/miui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/maml/animation/ScaleAnimation;->getItem(I)Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/ScaleAnimation;->getItemX(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/maml/animation/ScaleAnimation;->mDelayValueX:D

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/ScaleAnimation;->getItemY(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/maml/animation/ScaleAnimation;->mDelayValueY:D

    return-void
.end method

.method private getItemX(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D
    .locals 2

    if-nez p1, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->attrExists(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    :goto_1
    return-wide v0
.end method

.method private getItemY(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D
    .locals 2

    if-nez p1, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->attrExists(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1, v0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v0

    :goto_1
    return-wide v0
.end method


# virtual methods
.method protected getDelayValue(I)D
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/miui/maml/animation/ScaleAnimation;->mDelayValueY:D

    goto :goto_1

    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/miui/maml/animation/ScaleAnimation;->mDelayValueX:D

    :goto_1
    return-wide v0
.end method

.method public final getScaleX()D
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/ScaleAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getScaleY()D
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/ScaleAnimation;->getCurValue(I)D

    move-result-wide v0

    return-wide v0
.end method

.method protected onTick(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;F)V
    .locals 7

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/maml/animation/ScaleAnimation;->getItemX(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, p2}, Lcom/miui/maml/animation/ScaleAnimation;->getItemX(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v3

    sub-double/2addr v3, v0

    float-to-double v5, p3

    mul-double/2addr v3, v5

    add-double/2addr v0, v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/maml/animation/ScaleAnimation;->setCurValue(ID)V

    invoke-direct {p0, p1}, Lcom/miui/maml/animation/ScaleAnimation;->getItemY(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide v0

    const/4 p1, 0x2

    invoke-direct {p0, p2}, Lcom/miui/maml/animation/ScaleAnimation;->getItemY(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)D

    move-result-wide p2

    sub-double/2addr p2, v0

    mul-double/2addr p2, v5

    add-double/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/maml/animation/ScaleAnimation;->setCurValue(ID)V

    return-void
.end method
