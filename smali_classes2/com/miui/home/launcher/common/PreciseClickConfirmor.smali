.class public Lcom/miui/home/launcher/common/PreciseClickConfirmor;
.super Ljava/lang/Object;
.source "PreciseClickConfirmor.java"


# instance fields
.field private mConfirmClick:Z

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->mTouchSlop:I

    return-void
.end method


# virtual methods
.method public confirmClick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->mConfirmClick:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->mConfirmClick:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->mLastTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->mTouchSlop:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->mLastTouchY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->mTouchSlop:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->mConfirmClick:Z

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->mLastTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->mLastTouchY:F

    iput-boolean v1, p0, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->mConfirmClick:Z

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
