.class public Lcom/miui/maml/animation/interpolater/BounceEaseInOutInterpolater;
.super Ljava/lang/Object;
.source "BounceEaseInOutInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-gez v1, :cond_0

    mul-float/2addr p1, v2

    invoke-static {p1}, Lcom/miui/maml/animation/interpolater/BounceEaseInInterpolater;->getInterpolationImp(F)F

    move-result p1

    mul-float/2addr p1, v0

    return p1

    :cond_0
    mul-float/2addr p1, v2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    invoke-static {p1}, Lcom/miui/maml/animation/interpolater/BounceEaseOutInterpolater;->getInterpolationImp(F)F

    move-result p1

    mul-float/2addr p1, v0

    add-float/2addr p1, v0

    return p1
.end method
