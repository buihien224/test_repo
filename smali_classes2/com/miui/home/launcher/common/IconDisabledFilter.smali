.class public Lcom/miui/home/launcher/common/IconDisabledFilter;
.super Ljava/lang/Object;
.source "IconDisabledFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/common/IconDisabledFilter$State;
    }
.end annotation


# static fields
.field private static final sCachedFilter:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/miui/home/launcher/common/IconDisabledFilter;

.field private static final sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

.field private static final sTempFilterMatrix:Landroid/graphics/ColorMatrix;


# instance fields
.field private mBrightness:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDesaturation:I

.field private mPrevUpdateKey:I

.field private mState:Lcom/miui/home/launcher/common/IconDisabledFilter$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/common/IconDisabledFilter;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/IconDisabledFilter;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/IconDisabledFilter;->sInstance:Lcom/miui/home/launcher/common/IconDisabledFilter;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/IconDisabledFilter;->sCachedFilter:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/IconDisabledFilter;->sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/IconDisabledFilter;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/common/IconDisabledFilter;->mColorFilter:Landroid/graphics/ColorFilter;

    sget-object v0, Lcom/miui/home/launcher/common/IconDisabledFilter$State;->NORMAL:Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    iput-object v0, p0, Lcom/miui/home/launcher/common/IconDisabledFilter;->mState:Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/home/launcher/common/IconDisabledFilter;->mDesaturation:I

    iput v0, p0, Lcom/miui/home/launcher/common/IconDisabledFilter;->mBrightness:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/miui/home/launcher/common/IconDisabledFilter;->mPrevUpdateKey:I

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/common/IconDisabledFilter;
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/common/IconDisabledFilter;->sInstance:Lcom/miui/home/launcher/common/IconDisabledFilter;

    sget-object v1, Lcom/miui/home/launcher/common/IconDisabledFilter$State;->DISABLED:Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/IconDisabledFilter;->setState(Lcom/miui/home/launcher/common/IconDisabledFilter$State;)Z

    sget-object v0, Lcom/miui/home/launcher/common/IconDisabledFilter;->sInstance:Lcom/miui/home/launcher/common/IconDisabledFilter;

    return-object v0
.end method

.method private updateFilter()V
    .locals 7

    iget v0, p0, Lcom/miui/home/launcher/common/IconDisabledFilter;->mDesaturation:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    shl-int/lit8 v0, v0, 0x10

    iget v3, p0, Lcom/miui/home/launcher/common/IconDisabledFilter;->mBrightness:I

    or-int/2addr v0, v3

    move v3, v2

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/common/IconDisabledFilter;->mBrightness:I

    if-lez v0, :cond_1

    const/high16 v3, 0x10000

    or-int/2addr v0, v3

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/miui/home/launcher/common/IconDisabledFilter;->mPrevUpdateKey:I

    if-ne v0, v4, :cond_2

    return-void

    :cond_2
    iput v0, p0, Lcom/miui/home/launcher/common/IconDisabledFilter;->mPrevUpdateKey:I

    if-eq v0, v1, :cond_6

    sget-object v1, Lcom/miui/home/launcher/common/IconDisabledFilter;->sCachedFilter:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorFilter;

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/miui/home/launcher/common/IconDisabledFilter;->getBrightness()F

    move-result v1

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    if-eqz v3, :cond_3

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/16 v2, 0xff

    invoke-static {v4, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/IconDisabledFilter;->getDesaturation()F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v3, v5, v3

    sget-object v6, Lcom/miui/home/launcher/common/IconDisabledFilter;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v6, v3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    iget v3, p0, Lcom/miui/home/launcher/common/IconDisabledFilter;->mBrightness:I

    if-lez v3, :cond_4

    sub-float/2addr v5, v1

    sget-object v1, Lcom/miui/home/launcher/common/IconDisabledFilter;->sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v1

    aput v5, v1, v2

    const/4 v2, 0x6

    aput v5, v1, v2

    const/16 v2, 0xc

    aput v5, v1, v2

    const/4 v2, 0x4

    int-to-float v3, v4

    aput v3, v1, v2

    const/16 v2, 0x9

    aput v3, v1, v2

    const/16 v2, 0xe

    aput v3, v1, v2

    sget-object v1, Lcom/miui/home/launcher/common/IconDisabledFilter;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    sget-object v2, Lcom/miui/home/launcher/common/IconDisabledFilter;->sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    :cond_4
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v2, Lcom/miui/home/launcher/common/IconDisabledFilter;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    :goto_1
    sget-object v2, Lcom/miui/home/launcher/common/IconDisabledFilter;->sCachedFilter:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_5
    iput-object v1, p0, Lcom/miui/home/launcher/common/IconDisabledFilter;->mColorFilter:Landroid/graphics/ColorFilter;

    :cond_6
    return-void
.end method


# virtual methods
.method public getBrightness()F
    .locals 2

    iget v0, p0, Lcom/miui/home/launcher/common/IconDisabledFilter;->mBrightness:I

    int-to-float v0, v0

    const/high16 v1, 0x42400000    # 48.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getDesaturation()F
    .locals 2

    iget v0, p0, Lcom/miui/home/launcher/common/IconDisabledFilter;->mDesaturation:I

    int-to-float v0, v0

    const/high16 v1, 0x42400000    # 48.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getDisabledColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/common/IconDisabledFilter;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public setBrightness(F)V
    .locals 2

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    iget v0, p0, Lcom/miui/home/launcher/common/IconDisabledFilter;->mBrightness:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/miui/home/launcher/common/IconDisabledFilter;->mBrightness:I

    invoke-direct {p0}, Lcom/miui/home/launcher/common/IconDisabledFilter;->updateFilter()V

    :cond_0
    return-void
.end method

.method public setDesaturation(F)V
    .locals 2

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    iget v0, p0, Lcom/miui/home/launcher/common/IconDisabledFilter;->mDesaturation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/miui/home/launcher/common/IconDisabledFilter;->mDesaturation:I

    invoke-direct {p0}, Lcom/miui/home/launcher/common/IconDisabledFilter;->updateFilter()V

    :cond_0
    return-void
.end method

.method public setState(Lcom/miui/home/launcher/common/IconDisabledFilter$State;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/common/IconDisabledFilter;->mState:Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/miui/home/launcher/common/IconDisabledFilter;->mState:Lcom/miui/home/launcher/common/IconDisabledFilter$State;

    iget v0, p1, Lcom/miui/home/launcher/common/IconDisabledFilter$State;->desaturation:F

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/IconDisabledFilter;->setDesaturation(F)V

    iget p1, p1, Lcom/miui/home/launcher/common/IconDisabledFilter$State;->brightness:F

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/IconDisabledFilter;->setBrightness(F)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
