.class public Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SmoothGradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/smooth/SmoothGradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SmoothConstantState"
.end annotation


# instance fields
.field mLayerType:I

.field mParent:Landroid/graphics/drawable/Drawable$ConstantState;

.field mRadii:[F

.field mRadius:F

.field mStrokeColor:I

.field mStrokeWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeWidth:I

    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeColor:I

    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mLayerType:I

    return-void
.end method

.method public constructor <init>(Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeWidth:I

    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeColor:I

    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mLayerType:I

    iget v0, p1, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadius:F

    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadius:F

    iget-object v0, p1, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadii:[F

    iput-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadii:[F

    iget v0, p1, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeWidth:I

    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeWidth:I

    iget v0, p1, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeColor:I

    iput v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeColor:I

    iget-object v0, p1, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    iget p1, p1, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mLayerType:I

    iput p1, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mLayerType:I

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lmiuix/smooth/SmoothGradientDrawable;

    invoke-direct {v0, p0, v1, v1}, Lmiuix/smooth/SmoothGradientDrawable;-><init>(Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;Landroid/content/res/Resources;Lmiuix/smooth/SmoothGradientDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;

    invoke-direct {v0, p0}, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;-><init>(Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;)V

    new-instance v2, Lmiuix/smooth/SmoothGradientDrawable;

    invoke-direct {v2, v0, p1, v1}, Lmiuix/smooth/SmoothGradientDrawable;-><init>(Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;Landroid/content/res/Resources;Lmiuix/smooth/SmoothGradientDrawable$1;)V

    return-object v2
.end method

.method public setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0

    iput-object p1, p0, Lmiuix/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method
