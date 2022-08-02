.class public Lmiuix/animation/utils/EaseManager$SpringInterpolator;
.super Ljava/lang/Object;
.source "EaseManager.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/utils/EaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpringInterpolator"
.end annotation


# instance fields
.field private c:F

.field private c1:F

.field private c2:F

.field private damping:F

.field private initial:F

.field private k:F

.field private m:F

.field private r:F

.field private response:F

.field private w:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->damping:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->response:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->initial:F

    iget v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->initial:F

    iput v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->c1:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->m:F

    invoke-direct {p0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->updateParameters()V

    return-void
.end method

.method private updateParameters()V
    .locals 5

    iget v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->response:F

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->m:F

    float-to-double v3, v2

    mul-double/2addr v0, v3

    double-to-float v0, v0

    iput v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->k:F

    iget v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->damping:F

    float-to-double v0, v0

    const-wide v3, 0x402921fb54442d18L    # 12.566370614359172

    mul-double/2addr v0, v3

    float-to-double v3, v2

    mul-double/2addr v0, v3

    iget v3, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->response:F

    float-to-double v3, v3

    div-double/2addr v0, v3

    double-to-float v0, v0

    iput v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->c:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v2, v0

    iget v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->k:F

    mul-float/2addr v2, v0

    iget v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->c:F

    mul-float/2addr v0, v0

    sub-float/2addr v2, v0

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->m:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    div-float/2addr v0, v3

    iput v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->w:F

    iget v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->c:F

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    neg-float v0, v0

    iput v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->r:F

    iget v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->r:F

    iget v1, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->initial:F

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    sub-float/2addr v1, v0

    iget v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->w:F

    div-float/2addr v1, v0

    iput v1, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->c2:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8

    iget v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->r:F

    mul-float/2addr v0, p1

    float-to-double v0, v0

    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->c1:F

    float-to-double v2, v2

    iget v4, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->w:F

    mul-float/2addr v4, p1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget v4, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->c2:F

    float-to-double v4, v4

    iget v6, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->w:F

    mul-float/2addr v6, p1

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method

.method public setDamping(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;
    .locals 0

    iput p1, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->damping:F

    invoke-direct {p0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->updateParameters()V

    return-object p0
.end method

.method public setResponse(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;
    .locals 0

    iput p1, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->response:F

    invoke-direct {p0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->updateParameters()V

    return-object p0
.end method
