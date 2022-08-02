.class public Lmiuix/smooth/SmoothPathProvider2;
.super Ljava/lang/Object;
.source "SmoothPathProvider2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/smooth/SmoothPathProvider2$SmoothData;,
        Lmiuix/smooth/SmoothPathProvider2$CornerData;
    }
.end annotation


# instance fields
.field private mKsi:F

.field private mSmooth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lmiuix/smooth/SmoothPathProvider2;->mSmooth:F

    const v0, 0x3eeb851f    # 0.46f

    iput v0, p0, Lmiuix/smooth/SmoothPathProvider2;->mKsi:F

    return-void
.end method

.method static synthetic access$000(FFDF)D
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lmiuix/smooth/SmoothPathProvider2;->smoothForWidth(FFDF)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$100(FFDF)D
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lmiuix/smooth/SmoothPathProvider2;->smoothForHeight(FFDF)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1000(DD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lmiuix/smooth/SmoothPathProvider2;->yForWidth(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1100(DD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lmiuix/smooth/SmoothPathProvider2;->kForHeight(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1200(FD)D
    .locals 0

    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider2;->mForHeight(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1300(FD)D
    .locals 0

    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider2;->nForHeight(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1400(FD)D
    .locals 0

    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider2;->pForHeight(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1500(FD)D
    .locals 0

    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider2;->xForHeight(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1600(DD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lmiuix/smooth/SmoothPathProvider2;->yForHeight(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$200(D)D
    .locals 0

    invoke-static {p0, p1}, Lmiuix/smooth/SmoothPathProvider2;->thetaForWidth(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$300(D)D
    .locals 0

    invoke-static {p0, p1}, Lmiuix/smooth/SmoothPathProvider2;->thetaForHeight(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$400(D)D
    .locals 0

    invoke-static {p0, p1}, Lmiuix/smooth/SmoothPathProvider2;->radToAngle(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$500(DD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lmiuix/smooth/SmoothPathProvider2;->kForWidth(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$600(FD)D
    .locals 0

    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider2;->mForWidth(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$700(FD)D
    .locals 0

    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider2;->nForWidth(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$800(FD)D
    .locals 0

    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider2;->pForWidth(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$900(FD)D
    .locals 0

    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider2;->xForWidth(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method private ensureFourCornerData(Lmiuix/smooth/SmoothPathProvider2$SmoothData;)V
    .locals 1

    iget-object v0, p1, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    if-nez v0, :cond_0

    new-instance v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;

    invoke-direct {v0}, Lmiuix/smooth/SmoothPathProvider2$CornerData;-><init>()V

    iput-object v0, p1, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    :cond_0
    iget-object v0, p1, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    if-nez v0, :cond_1

    new-instance v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;

    invoke-direct {v0}, Lmiuix/smooth/SmoothPathProvider2$CornerData;-><init>()V

    iput-object v0, p1, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    :cond_1
    iget-object v0, p1, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    if-nez v0, :cond_2

    new-instance v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;

    invoke-direct {v0}, Lmiuix/smooth/SmoothPathProvider2$CornerData;-><init>()V

    iput-object v0, p1, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    :cond_2
    iget-object v0, p1, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    if-nez v0, :cond_3

    new-instance v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;

    invoke-direct {v0}, Lmiuix/smooth/SmoothPathProvider2$CornerData;-><init>()V

    iput-object v0, p1, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    :cond_3
    return-void
.end method

.method private isFourCornerDataValid(Lmiuix/smooth/SmoothPathProvider2$SmoothData;)Z
    .locals 1

    iget-object v0, p1, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private static isHeightCollapsed(FFFDF)Z
    .locals 4

    float-to-double v0, p0

    add-float/2addr p1, p2

    float-to-double p0, p1

    float-to-double v2, p5

    mul-double/2addr p3, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p3, v2

    mul-double/2addr p0, p3

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isWidthCollapsed(FFFDF)Z
    .locals 4

    float-to-double v0, p0

    add-float/2addr p1, p2

    float-to-double p0, p1

    float-to-double v2, p5

    mul-double/2addr p3, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p3, v2

    mul-double/2addr p0, p3

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static kForHeight(DD)D
    .locals 6

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide v0, 0x3fdd70a3e0000000L    # 0.46000000834465027

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    add-double/2addr p0, v4

    mul-double/2addr p0, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p2, v0

    mul-double/2addr p0, p2

    const-wide/high16 p2, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v2, p2

    div-double/2addr p0, v2

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method private static kForWidth(DD)D
    .locals 6

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide v0, 0x3fdd70a3e0000000L    # 0.46000000834465027

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    add-double/2addr p0, v4

    mul-double/2addr p0, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p2, v0

    mul-double/2addr p0, p2

    const-wide/high16 p2, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v2, p2

    div-double/2addr p0, v2

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method private static mForHeight(FD)D
    .locals 4

    float-to-double v0, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static mForWidth(FD)D
    .locals 4

    float-to-double v0, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static nForHeight(FD)D
    .locals 4

    float-to-double v0, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static nForWidth(FD)D
    .locals 4

    float-to-double v0, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static pForHeight(FD)D
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static pForWidth(FD)D
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static radToAngle(D)D
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static smoothForHeight(FFDF)D
    .locals 6

    move v0, p0

    move v1, p1

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lmiuix/smooth/SmoothPathProvider2;->isHeightCollapsed(FFFDF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    div-float/2addr p0, p4

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double p0, p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method private static smoothForWidth(FFDF)D
    .locals 6

    move v0, p0

    move v1, p1

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lmiuix/smooth/SmoothPathProvider2;->isWidthCollapsed(FFFDF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    div-float/2addr p0, p4

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double p0, p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method private static thetaForHeight(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static thetaForWidth(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static xForHeight(FD)D
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v2

    div-double/2addr v0, p0

    return-wide v0
.end method

.method private static xForWidth(FD)D
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v2

    div-double/2addr v0, p0

    return-wide v0
.end method

.method private static yForHeight(DD)D
    .locals 0

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method private static yForWidth(DD)D
    .locals 0

    mul-double/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public buildSmoothData(Landroid/graphics/RectF;FFF)Lmiuix/smooth/SmoothPathProvider2$SmoothData;
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    aput p2, v0, v1

    const/4 v1, 0x5

    aput p2, v0, v1

    const/4 v1, 0x6

    aput p2, v0, v1

    const/4 v1, 0x7

    aput p2, v0, v1

    invoke-virtual {p0, p1, v0, p3, p4}, Lmiuix/smooth/SmoothPathProvider2;->buildSmoothData(Landroid/graphics/RectF;[FFF)Lmiuix/smooth/SmoothPathProvider2$SmoothData;

    move-result-object p1

    return-object p1
.end method

.method public buildSmoothData(Landroid/graphics/RectF;[FFF)Lmiuix/smooth/SmoothPathProvider2$SmoothData;
    .locals 26

    move-object/from16 v0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lmiuix/smooth/SmoothPathProvider2;->getKsi()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lmiuix/smooth/SmoothPathProvider2;->getSmooth()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v8

    new-instance v11, Lmiuix/smooth/SmoothPathProvider2$SmoothData;

    float-to-double v12, v1

    move-object v1, v11

    move v2, v7

    move v3, v8

    move-wide v4, v12

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lmiuix/smooth/SmoothPathProvider2$SmoothData;-><init>(FFDF)V

    const/16 v1, 0x8

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    array-length v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_2

    aget v4, v0, v3

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_1

    aget v4, v0, v3

    aput v4, v1, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    aget v0, v1, v2

    const/4 v3, 0x1

    aget v4, v1, v3

    const/4 v5, 0x2

    aget v6, v1, v5

    const/4 v9, 0x3

    aget v14, v1, v9

    const/4 v15, 0x4

    aget v16, v1, v15

    const/16 v17, 0x5

    aget v18, v1, v17

    const/16 v19, 0x6

    aget v20, v1, v19

    const/16 v21, 0x7

    aget v22, v1, v21

    add-float v23, v0, v6

    cmpl-float v23, v23, v7

    if-lez v23, :cond_3

    aget v0, v1, v2

    mul-float/2addr v0, v7

    aget v6, v1, v2

    aget v23, v1, v5

    add-float v6, v6, v23

    div-float/2addr v0, v6

    aget v6, v1, v5

    mul-float/2addr v6, v7

    aget v2, v1, v2

    aget v5, v1, v5

    add-float/2addr v2, v5

    div-float/2addr v6, v2

    move v2, v0

    move v0, v6

    goto :goto_1

    :cond_3
    move v2, v0

    move v0, v6

    :goto_1
    add-float v5, v14, v18

    cmpl-float v5, v5, v8

    if-lez v5, :cond_4

    aget v5, v1, v9

    mul-float/2addr v5, v8

    aget v6, v1, v9

    aget v14, v1, v17

    add-float/2addr v6, v14

    div-float v14, v5, v6

    aget v5, v1, v17

    mul-float/2addr v5, v8

    aget v6, v1, v9

    aget v9, v1, v17

    add-float/2addr v6, v9

    div-float v18, v5, v6

    move/from16 v9, v18

    goto :goto_2

    :cond_4
    move/from16 v9, v18

    :goto_2
    add-float v5, v16, v20

    cmpl-float v5, v5, v7

    if-lez v5, :cond_5

    aget v5, v1, v15

    mul-float/2addr v5, v7

    aget v6, v1, v15

    aget v16, v1, v19

    add-float v6, v6, v16

    div-float v16, v5, v6

    aget v5, v1, v19

    mul-float/2addr v7, v5

    aget v5, v1, v15

    aget v6, v1, v19

    add-float/2addr v5, v6

    div-float v20, v7, v5

    move/from16 v15, v16

    move/from16 v6, v20

    goto :goto_3

    :cond_5
    move/from16 v15, v16

    move/from16 v6, v20

    :goto_3
    add-float v5, v22, v4

    cmpl-float v5, v5, v8

    if-lez v5, :cond_6

    aget v4, v1, v21

    mul-float/2addr v4, v8

    aget v5, v1, v21

    aget v7, v1, v3

    add-float/2addr v5, v7

    div-float v22, v4, v5

    aget v4, v1, v3

    mul-float/2addr v8, v4

    aget v4, v1, v21

    aget v1, v1, v3

    add-float/2addr v4, v1

    div-float v4, v8, v4

    move-object/from16 v8, p0

    move/from16 v7, v22

    goto :goto_4

    :cond_6
    move-object/from16 v8, p0

    move/from16 v7, v22

    :goto_4
    invoke-direct {v8, v11}, Lmiuix/smooth/SmoothPathProvider2;->ensureFourCornerData(Lmiuix/smooth/SmoothPathProvider2$SmoothData;)V

    iget-object v1, v11, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/16 v16, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v25, v6

    move/from16 v24, v7

    move-wide v6, v12

    move v8, v10

    move/from16 v17, v15

    move v15, v9

    move/from16 v9, v16

    invoke-virtual/range {v1 .. v9}, Lmiuix/smooth/SmoothPathProvider2$CornerData;->build(FLandroid/graphics/RectF;FFDFI)V

    iget-object v1, v11, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    invoke-static {v0, v14}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v9, 0x1

    invoke-virtual/range {v1 .. v9}, Lmiuix/smooth/SmoothPathProvider2$CornerData;->build(FLandroid/graphics/RectF;FFDFI)V

    iget-object v1, v11, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    move/from16 v0, v17

    invoke-static {v0, v15}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v9, 0x2

    invoke-virtual/range {v1 .. v9}, Lmiuix/smooth/SmoothPathProvider2$CornerData;->build(FLandroid/graphics/RectF;FFDFI)V

    iget-object v1, v11, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    move/from16 v0, v24

    move/from16 v2, v25

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v9, 0x3

    invoke-virtual/range {v1 .. v9}, Lmiuix/smooth/SmoothPathProvider2$CornerData;->build(FLandroid/graphics/RectF;FFDFI)V

    return-object v11

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method getKsi()F
    .locals 1

    iget v0, p0, Lmiuix/smooth/SmoothPathProvider2;->mKsi:F

    return v0
.end method

.method getSmooth()F
    .locals 1

    iget v0, p0, Lmiuix/smooth/SmoothPathProvider2;->mSmooth:F

    return v0
.end method

.method public getSmoothPath(Landroid/graphics/Path;Lmiuix/smooth/SmoothPathProvider2$SmoothData;)Landroid/graphics/Path;
    .locals 23

    move-object/from16 v0, p2

    if-nez p1, :cond_0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    move-object/from16 v9, p0

    invoke-direct {v9, v0}, Lmiuix/smooth/SmoothPathProvider2;->isFourCornerDataValid(Lmiuix/smooth/SmoothPathProvider2$SmoothData;)Z

    move-result v2

    const/4 v10, 0x0

    if-eqz v2, :cond_2

    new-instance v2, Landroid/graphics/RectF;

    iget v3, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->width:F

    iget v0, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->height:F

    invoke-direct {v2, v10, v10, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-object v1

    :cond_2
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    cmpl-float v2, v2, v10

    const/4 v11, 0x0

    if-eqz v2, :cond_3

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    iget-object v5, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-wide v5, v5, Lmiuix/smooth/SmoothPathProvider2$CornerData;->thetaForVertical:D

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Lmiuix/smooth/SmoothPathProvider2;->radToAngle(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v4, v4, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v11

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v3, v11

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_1
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-wide v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForHorizontal:D

    const-wide/16 v12, 0x0

    cmpl-double v2, v2, v12

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x1

    if-eqz v2, :cond_4

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v15

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v15

    iget v6, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v14

    iget v7, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v14

    iget v8, v2, Landroid/graphics/PointF;->y:F

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_4
    iget v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->width:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v4, v4, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    iget-wide v5, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->smooth:D

    iget v7, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->ksi:F

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move-wide/from16 v20, v5

    move/from16 v22, v7

    invoke-static/range {v17 .. v22}, Lmiuix/smooth/SmoothPathProvider2;->isWidthCollapsed(FFFDF)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v11

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v3, v11

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_5
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-wide v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForHorizontal:D

    cmpl-double v2, v2, v12

    if-eqz v2, :cond_6

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v15

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v15

    iget v6, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v14

    iget v7, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v14

    iget v8, v2, Landroid/graphics/PointF;->y:F

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_6
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    cmpl-float v2, v2, v10

    if-eqz v2, :cond_7

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v3, 0x4012d97c7f3321d2L    # 4.71238898038469

    iget-object v5, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-wide v5, v5, Lmiuix/smooth/SmoothPathProvider2$CornerData;->thetaForHorizontal:D

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Lmiuix/smooth/SmoothPathProvider2;->radToAngle(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v4, v4, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :cond_7
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-wide v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForVertical:D

    cmpl-double v2, v2, v12

    if-eqz v2, :cond_8

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v15

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v15

    iget v6, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v14

    iget v7, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v14

    iget v8, v2, Landroid/graphics/PointF;->y:F

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_8
    iget v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->height:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v4, v4, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    iget-wide v5, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->smooth:D

    iget v7, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->ksi:F

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move-wide/from16 v20, v5

    move/from16 v22, v7

    invoke-static/range {v17 .. v22}, Lmiuix/smooth/SmoothPathProvider2;->isHeightCollapsed(FFFDF)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v11

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v3, v11

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_9
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-wide v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForVertical:D

    cmpl-double v2, v2, v12

    if-eqz v2, :cond_a

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v15

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v15

    iget v6, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v14

    iget v7, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v14

    iget v8, v2, Landroid/graphics/PointF;->y:F

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_a
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    cmpl-float v2, v2, v10

    if-eqz v2, :cond_b

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->rect:Landroid/graphics/RectF;

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-wide v3, v3, Lmiuix/smooth/SmoothPathProvider2$CornerData;->thetaForVertical:D

    invoke-static {v3, v4}, Lmiuix/smooth/SmoothPathProvider2;->radToAngle(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v4, v4, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :cond_b
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-wide v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForHorizontal:D

    cmpl-double v2, v2, v12

    if-eqz v2, :cond_c

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v15

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v15

    iget v6, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v14

    iget v7, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v14

    iget v8, v2, Landroid/graphics/PointF;->y:F

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_c
    iget v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->width:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v4, v4, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    iget-wide v5, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->smooth:D

    iget v7, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->ksi:F

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move-wide/from16 v20, v5

    move/from16 v22, v7

    invoke-static/range {v17 .. v22}, Lmiuix/smooth/SmoothPathProvider2;->isWidthCollapsed(FFFDF)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v11

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v3, v11

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_d
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-wide v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForHorizontal:D

    cmpl-double v2, v2, v12

    if-eqz v2, :cond_e

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v15

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v15

    iget v6, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v14

    iget v7, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v2, v14

    iget v8, v2, Landroid/graphics/PointF;->y:F

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_e
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    cmpl-float v2, v2, v10

    if-eqz v2, :cond_f

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    iget-object v5, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-wide v5, v5, Lmiuix/smooth/SmoothPathProvider2$CornerData;->thetaForHorizontal:D

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Lmiuix/smooth/SmoothPathProvider2;->radToAngle(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v4, v4, Lmiuix/smooth/SmoothPathProvider2$CornerData;->swapAngle:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :cond_f
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-wide v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForVertical:D

    cmpl-double v2, v2, v12

    if-eqz v2, :cond_10

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v15

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v15

    iget v6, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v14

    iget v7, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v14

    iget v8, v2, Landroid/graphics/PointF;->y:F

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_10
    iget v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->height:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    iget-object v4, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget v4, v4, Lmiuix/smooth/SmoothPathProvider2$CornerData;->radius:F

    iget-wide v5, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->smooth:D

    iget v7, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->ksi:F

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move-wide/from16 v20, v5

    move/from16 v22, v7

    invoke-static/range {v17 .. v22}, Lmiuix/smooth/SmoothPathProvider2;->isHeightCollapsed(FFFDF)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v11

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v3, v3, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v3, v11

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_11
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-wide v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->smoothForVertical:D

    cmpl-double v2, v2, v12

    if-eqz v2, :cond_12

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v16

    iget v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v15

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v15

    iget v6, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v2, v14

    iget v7, v2, Landroid/graphics/PointF;->x:F

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider2$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider2$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider2$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v0, v0, v14

    iget v8, v0, Landroid/graphics/PointF;->y:F

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_12
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    return-object v1
.end method
