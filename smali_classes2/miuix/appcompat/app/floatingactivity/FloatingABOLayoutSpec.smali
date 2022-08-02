.class public Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;
.super Ljava/lang/Object;
.source "FloatingABOLayoutSpec.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFixedHeightMajor:Landroid/util/TypedValue;

.field private mFixedHeightMinor:Landroid/util/TypedValue;

.field private mFixedWidthMajor:Landroid/util/TypedValue;

.field private mFixedWidthMinor:Landroid/util/TypedValue;

.field private mFloatingTheme:Z

.field private mFloatingWindow:Z

.field private mIsInDialogMode:Z

.field private mMaxHeightMajor:Landroid/util/TypedValue;

.field private mMaxHeightMinor:Landroid/util/TypedValue;

.field private mMaxWidthMajor:Landroid/util/TypedValue;

.field private mMaxWidthMinor:Landroid/util/TypedValue;

.field private mPhysicalSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mPhysicalSize:Landroid/graphics/Point;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->updatePhysicalSize(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->parseWindowSize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getFixedHeightMajor()Landroid/util/TypedValue;
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getFixedHeightMinor()Landroid/util/TypedValue;
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getFixedWidthMajor()Landroid/util/TypedValue;
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getFixedWidthMinor()Landroid/util/TypedValue;
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getMaxHeightMajor()Landroid/util/TypedValue;
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getMaxHeightMinor()Landroid/util/TypedValue;
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getMaxWidthMajor()Landroid/util/TypedValue;
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getMaxWidthMinor()Landroid/util/TypedValue;
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p4

    :goto_0
    invoke-direct {p0, p3, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->resolveDimension(Landroid/util/TypedValue;Z)I

    move-result p3

    if-lez p3, :cond_1

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p5, p6

    :goto_1
    invoke-direct {p0, p5, p2}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->resolveDimension(Landroid/util/TypedValue;Z)I

    move-result p2

    if-lez p2, :cond_3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_3
    :goto_2
    return p1
.end method

.method private getThemeResourceId(Landroid/view/ContextThemeWrapper;)I
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getThemeResId"

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Lmiuix/reflect/Reflects;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    check-cast v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lmiuix/reflect/Reflects;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "FloatingABOLayoutSpec"

    const-string v1, "catch theme resource get exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isPortrait()Z
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private parseWindowSize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lmiuix/appcompat/R$styleable;->Window:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMinor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMinor:I

    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMajor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMajor:I

    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_2
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMajor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowFixedWidthMajor:I

    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_3
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMinor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowFixedHeightMinor:I

    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_4
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowMaxWidthMinor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowMaxWidthMinor:I

    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_5
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowMaxWidthMajor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowMaxWidthMajor:I

    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_6
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowMaxHeightMajor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowMaxHeightMajor:I

    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_7
    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowMaxHeightMinor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    sget v0, Lmiuix/appcompat/R$styleable;->Window_windowMaxHeightMinor:I

    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_8
    sget v0, Lmiuix/appcompat/R$styleable;->Window_isMiuixFloatingTheme:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/helper/BaseFloatingActivityHelper;->isFloatingWindow(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private resolveDimension(Landroid/util/TypedValue;Z)I
    .locals 2

    if-eqz p1, :cond_2

    iget v0, p1, Landroid/util/TypedValue;->type:I

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, p2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    goto :goto_1

    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mPhysicalSize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mPhysicalSize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    :goto_0
    int-to-float p2, p2

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    float-to-int p1, p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method


# virtual methods
.method public getHeightMeasureSpec(I)I
    .locals 7

    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMaxHeightMinor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMaxHeightMajor()Landroid/util/TypedValue;

    move-result-object v6

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    move-result p1

    return p1
.end method

.method public getHeightMeasureSpecForDialog(I)I
    .locals 7

    iget-object v3, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    iget-object v4, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    iget-object v5, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    iget-object v6, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    move-result p1

    return p1
.end method

.method public getWidthMeasureSpec(I)I
    .locals 7

    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v4

    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMaxWidthMinor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-direct {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMaxWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    move-result p1

    return p1
.end method

.method public getWidthMeasureSpecForDialog(I)I
    .locals 7

    iget-object v3, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    iget-object v4, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    iget-object v5, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    iget-object v6, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getMeasureSpec(IZLandroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;Landroid/util/TypedValue;)I

    move-result p1

    return p1
.end method

.method public onConfigurationChanged()V
    .locals 3

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mIsInDialogMode:Z

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    instance-of v2, v1, Landroid/view/ContextThemeWrapper;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {p0, v1}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->getThemeResourceId(Landroid/view/ContextThemeWrapper;)I

    move-result v1

    if-lez v1, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :cond_0
    sget v1, Lmiuix/appcompat/R$attr;->windowFixedWidthMinor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMinor:Landroid/util/TypedValue;

    sget v1, Lmiuix/appcompat/R$attr;->windowFixedHeightMajor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMajor:Landroid/util/TypedValue;

    sget v1, Lmiuix/appcompat/R$attr;->windowFixedWidthMajor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedWidthMajor:Landroid/util/TypedValue;

    sget v1, Lmiuix/appcompat/R$attr;->windowFixedHeightMinor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFixedHeightMinor:Landroid/util/TypedValue;

    sget v1, Lmiuix/appcompat/R$attr;->windowMaxWidthMinor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMinor:Landroid/util/TypedValue;

    sget v1, Lmiuix/appcompat/R$attr;->windowMaxWidthMajor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxWidthMajor:Landroid/util/TypedValue;

    sget v1, Lmiuix/appcompat/R$attr;->windowMaxHeightMinor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMinor:Landroid/util/TypedValue;

    sget v1, Lmiuix/appcompat/R$attr;->windowMaxHeightMajor:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mMaxHeightMajor:Landroid/util/TypedValue;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->updatePhysicalSize(Landroid/content/Context;)V

    return-void
.end method

.method public onFloatingModeChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingTheme:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mFloatingWindow:Z

    return-void
.end method

.method public setIsInDialogMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mIsInDialogMode:Z

    return-void
.end method

.method public updatePhysicalSize(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingABOLayoutSpec;->mPhysicalSize:Landroid/graphics/Point;

    return-void
.end method
