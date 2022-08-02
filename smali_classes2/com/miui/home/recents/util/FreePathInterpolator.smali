.class public Lcom/miui/home/recents/util/FreePathInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "FreePathInterpolator.java"


# instance fields
.field private mArcLength:F

.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/FreePathInterpolator;->initPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .locals 13

    const v0, 0x3b03126f    # 0.002f

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object p1

    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/miui/home/recents/util/FreePathInterpolator;->mX:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/miui/home/recents/util/FreePathInterpolator;->mY:[F

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/home/recents/util/FreePathInterpolator;->mArcLength:F

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    move v5, v4

    move v1, v2

    :goto_0
    if-ge v2, v0, :cond_3

    add-int/lit8 v6, v1, 0x1

    aget v1, p1, v1

    add-int/lit8 v7, v6, 0x1

    aget v6, p1, v6

    add-int/lit8 v8, v7, 0x1

    aget v7, p1, v7

    cmpl-float v3, v1, v3

    if-nez v3, :cond_1

    cmpl-float v3, v6, v4

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Path cannot have discontinuity in the X axis."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    cmpg-float v3, v6, v4

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/miui/home/recents/util/FreePathInterpolator;->mX:[F

    aput v6, v3, v2

    iget-object v3, p0, Lcom/miui/home/recents/util/FreePathInterpolator;->mY:[F

    aput v7, v3, v2

    iget v3, p0, Lcom/miui/home/recents/util/FreePathInterpolator;->mArcLength:F

    float-to-double v9, v3

    sub-float v3, v6, v4

    float-to-double v3, v3

    sub-float v5, v7, v5

    float-to-double v11, v5

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    add-double/2addr v9, v3

    double-to-float v3, v9

    iput v3, p0, Lcom/miui/home/recents/util/FreePathInterpolator;->mArcLength:F

    add-int/lit8 v2, v2, 0x1

    move v3, v1

    move v4, v6

    move v5, v7

    move v1, v8

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Path cannot loop back on itself."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5

    iget-object v0, p0, Lcom/miui/home/recents/util/FreePathInterpolator;->mX:[F

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    aget v4, v0, v3

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    iget-object p1, p0, Lcom/miui/home/recents/util/FreePathInterpolator;->mY:[F

    aget p1, p1, v3

    return p1

    :cond_0
    aget v0, v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object p1, p0, Lcom/miui/home/recents/util/FreePathInterpolator;->mY:[F

    aget p1, p1, v1

    return p1

    :cond_1
    :goto_0
    sub-int v0, v1, v3

    if-le v0, v2, :cond_3

    add-int v0, v3, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v4, p0, Lcom/miui/home/recents/util/FreePathInterpolator;->mX:[F

    aget v4, v4, v0

    cmpg-float v4, p1, v4

    if-gez v4, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v3, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/util/FreePathInterpolator;->mX:[F

    aget v2, v0, v1

    aget v4, v0, v3

    sub-float/2addr v2, v4

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-nez v4, :cond_4

    iget-object p1, p0, Lcom/miui/home/recents/util/FreePathInterpolator;->mY:[F

    aget p1, p1, v3

    return p1

    :cond_4
    aget v0, v0, v3

    sub-float/2addr p1, v0

    div-float/2addr p1, v2

    iget-object v0, p0, Lcom/miui/home/recents/util/FreePathInterpolator;->mY:[F

    aget v2, v0, v3

    aget v0, v0, v1

    sub-float/2addr v0, v2

    mul-float/2addr p1, v0

    add-float/2addr v2, p1

    return v2
.end method
