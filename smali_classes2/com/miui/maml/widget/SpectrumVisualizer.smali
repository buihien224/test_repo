.class public Lcom/miui/maml/widget/SpectrumVisualizer;
.super Landroid/widget/ImageView;
.source "SpectrumVisualizer.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;,
        Lcom/miui/maml/widget/SpectrumVisualizer$AsymmetryDotBar;,
        Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;
    }
.end annotation


# static fields
.field private static final CONSIDER_SAMPLE_LENGTH:I = 0xa0

.field public static IS_LPA_DECODE:Z = false

.field private static final RES_DEFAULT_SLIDING_DOT_BAR_ID:I

.field private static final RES_DEFAULT_SLIDING_PANEL_ID:I

.field private static final RES_DEFAULT_SLIDING_SHADOW_DOT_BAR_ID:I

.field private static final TAG:Ljava/lang/String; = "SpectrumVisualizer"

.field private static final VISUALIZATION_SAMPLE_LENGTH:I = 0x100


# instance fields
.field private INDEX_SCALE_FACTOR:F

.field private final MAX_VALID_SAMPLE:I

.field private SAMPLE_SCALE_FACTOR:F

.field private VISUALIZE_DESC_HEIGHT:F

.field mAlphaWidthNum:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCachedBitmap:Landroid/graphics/Bitmap;

.field private mCachedCanvas:Landroid/graphics/Canvas;

.field mCellSize:I

.field mDotbarHeight:I

.field private mDrawer:Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;

.field private mEnableDrawing:Z

.field private mIsEnableUpdate:Z

.field private mIsNeedCareStreamActive:Z

.field private mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

.field mPaint:Landroid/graphics/Paint;

.field mPixels:[I

.field mPointData:[F

.field private mSampleBuf:[S

.field mShadowDotbarHeight:I

.field mShadowPixels:[I

.field private mSoftDrawEnabled:Z

.field private mVisualizationHeight:I

.field mVisualizationHeightNum:I

.field private mVisualizationWidth:I

.field mVisualizationWidthNum:I

.field private mVisualizer:Landroid/media/audiofx/Visualizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.lpa.decode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/maml/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/maml/widget/SpectrumVisualizer;->IS_LPA_DECODE:Z

    sget v0, Lcom/miui/maml/R$drawable;->sliding_panel_visualization_bg:I

    sput v0, Lcom/miui/maml/widget/SpectrumVisualizer;->RES_DEFAULT_SLIDING_PANEL_ID:I

    sget v0, Lcom/miui/maml/R$drawable;->sliding_panel_visualization_dot_bar:I

    sput v0, Lcom/miui/maml/widget/SpectrumVisualizer;->RES_DEFAULT_SLIDING_DOT_BAR_ID:I

    sget v0, Lcom/miui/maml/R$drawable;->sliding_panel_visualization_shadow_dot_bar:I

    sput v0, Lcom/miui/maml/widget/SpectrumVisualizer;->RES_DEFAULT_SLIDING_SHADOW_DOT_BAR_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/widget/SpectrumVisualizer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/widget/SpectrumVisualizer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    const/16 p3, 0xa0

    new-array p3, p3, [S

    iput-object p3, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mSampleBuf:[S

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    new-instance v0, Lcom/miui/maml/widget/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/widget/SpectrumVisualizer$1;-><init>(Lcom/miui/maml/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    const/16 v0, 0x14

    iput v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->MAX_VALID_SAMPLE:I

    iput-boolean p3, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mEnableDrawing:Z

    iput-boolean p3, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    const/4 p3, 0x0

    iput p3, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    sget-object v1, Lcom/miui/maml/R$styleable;->SpectrumVisualizer:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v1, Lcom/miui/maml/R$styleable;->SpectrumVisualizer_sliding_panel:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Lcom/miui/maml/R$styleable;->SpectrumVisualizer_sliding_dot_bar:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Lcom/miui/maml/R$styleable;->SpectrumVisualizer_sliding_shadow_dot_bar:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/miui/maml/R$styleable;->SpectrumVisualizer_symmetry:I

    invoke-virtual {p2, v4, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    sget v5, Lcom/miui/maml/R$styleable;->SpectrumVisualizer_alpha_width:I

    iget v6, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    sget v5, Lcom/miui/maml/R$styleable;->SpectrumVisualizer_update_enable:I

    invoke-virtual {p2, v5, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    sget v5, Lcom/miui/maml/R$styleable;->SpectrumVisualizer_care_streamactive:I

    invoke-virtual {p2, v5, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    move p3, v4

    goto :goto_0

    :cond_0
    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/miui/maml/widget/SpectrumVisualizer;->RES_DEFAULT_SLIDING_PANEL_ID:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/maml/widget/SpectrumVisualizer;->RES_DEFAULT_SLIDING_DOT_BAR_ID:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_2
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz p3, :cond_4

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/miui/maml/widget/SpectrumVisualizer;->RES_DEFAULT_SLIDING_SHADOW_DOT_BAR_ID:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_3
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    invoke-virtual {p0, p2, v1, v0}, Lcom/miui/maml/widget/SpectrumVisualizer;->setBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private drawInternal(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    iget v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    sub-int/2addr v0, v1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDrawer:Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;

    invoke-interface {v2, p1, v1}, Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    :goto_1
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    mul-int/lit16 v2, v0, 0xff

    iget v3, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDrawer:Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, p1, v2}, Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    iget-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDrawer:Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;

    iget v2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    sub-int/2addr v2, v0

    invoke-interface {v1, p1, v2}, Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private drawToBitmap()Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCachedCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/maml/widget/SpectrumVisualizer;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/maml/widget/SpectrumVisualizer;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/maml/widget/SpectrumVisualizer;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/maml/widget/SpectrumVisualizer;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCachedCanvas:Landroid/graphics/Canvas;

    :cond_2
    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-direct {p0, v1}, Lcom/miui/maml/widget/SpectrumVisualizer;->drawInternal(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public enableDrawing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mEnableDrawing:Z

    return-void
.end method

.method public enableUpdate(Z)V
    .locals 5

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    if-eq v0, p1, :cond_5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/miui/maml/widget/SpectrumVisualizer;->IS_LPA_DECODE:Z

    if-eqz v1, :cond_0

    const-string v0, "SpectrumVisualizer"

    const-string v1, "lpa decode is on, can\'t enable"

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/media/audiofx/Visualizer;

    invoke-direct {v1, v0}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    iget-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v1}, Landroid/media/audiofx/Visualizer;->getEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    iget-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    iget-object v2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    iget-object v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0, v4}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    goto :goto_1

    :cond_1
    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v1, v0}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-ge v1, v2, :cond_3

    const-string v1, "is_xiaomi_device"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    :cond_4
    :goto_1
    iput-boolean p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mIsEnableUpdate:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :catch_1
    :cond_5
    :goto_2
    return-void
.end method

.method public getVisualHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationHeight:I

    return v0
.end method

.method public getVisualWidth()I
    .locals 1

    iget v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationWidth:I

    return v0
.end method

.method public isUpdateEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mEnableDrawing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/maml/widget/SpectrumVisualizer;->drawToBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/maml/widget/SpectrumVisualizer;->drawInternal(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public setAlphaNum(I)V
    .locals 2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    div-int/lit8 v1, v0, 0x2

    if-le p1, v1, :cond_1

    div-int/lit8 p1, v0, 0x2

    :cond_1
    iput p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    return-void
.end method

.method public setBitmaps(IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 8

    iput p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationWidth:I

    iput p2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationHeight:I

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    iget p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    iget p2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationHeight:I

    if-le p1, p2, :cond_0

    iput p2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    :cond_0
    iget v6, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    iget v7, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    mul-int p1, v6, v7

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPixels:[I

    iget-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPixels:[I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move v3, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationWidth:I

    iget p2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    iget p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    const/high16 p1, 0x41a00000    # 20.0f

    iget p2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->SAMPLE_SCALE_FACTOR:F

    iget p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    div-int/lit8 p1, p1, 0x3

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->INDEX_SCALE_FACTOR:F

    const/high16 p1, 0x3f800000    # 1.0f

    iget p2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->VISUALIZE_DESC_HEIGHT:F

    iget p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPointData:[F

    iget p2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    if-nez p2, :cond_1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mShadowPixels:[I

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    iget p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    iget p2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDotbarHeight:I

    add-int/2addr p1, p2

    iget p3, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationHeight:I

    if-le p1, p3, :cond_2

    sub-int/2addr p3, p2

    iput p3, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    :cond_2
    iget v7, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    iget v6, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCellSize:I

    if-ge v7, v6, :cond_3

    new-instance p1, Lcom/miui/maml/widget/SpectrumVisualizer$AsymmetryDotBar;

    invoke-direct {p1, p0}, Lcom/miui/maml/widget/SpectrumVisualizer$AsymmetryDotBar;-><init>(Lcom/miui/maml/widget/SpectrumVisualizer;)V

    iput-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDrawer:Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;

    return-void

    :cond_3
    mul-int p1, v6, v7

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mShadowPixels:[I

    iget-object v1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mShadowPixels:[I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p4

    move v3, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    new-instance p1, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;

    invoke-direct {p1, p0}, Lcom/miui/maml/widget/SpectrumVisualizer$SymmetryDotBar;-><init>(Lcom/miui/maml/widget/SpectrumVisualizer;)V

    iput-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDrawer:Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/miui/maml/widget/SpectrumVisualizer$AsymmetryDotBar;

    invoke-direct {p1, p0}, Lcom/miui/maml/widget/SpectrumVisualizer$AsymmetryDotBar;-><init>(Lcom/miui/maml/widget/SpectrumVisualizer;)V

    iput-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mDrawer:Lcom/miui/maml/widget/SpectrumVisualizer$DotBarDrawer;

    :goto_0
    return-void
.end method

.method public setBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/maml/widget/SpectrumVisualizer;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/miui/maml/widget/SpectrumVisualizer;->setBitmaps(IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setSoftDrawEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mCachedCanvas:Landroid/graphics/Canvas;

    :cond_0
    return-void
.end method

.method update([B)V
    .locals 11

    iget-boolean v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/miui/maml/widget/SpectrumVisualizer;->enableDrawing(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/maml/widget/SpectrumVisualizer;->enableDrawing(Z)V

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mSampleBuf:[S

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    mul-int/lit8 v5, v4, 0x2

    aget-byte v6, p1, v5

    add-int/2addr v5, v0

    aget-byte v5, p1, v5

    mul-int/2addr v6, v6

    mul-int/2addr v5, v5

    add-int/2addr v6, v5

    int-to-double v5, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v5, v5

    const/16 v6, 0x7fff

    if-ge v5, v6, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    int-to-short v5, v5

    aput-short v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move p1, v1

    move v4, p1

    move v5, v4

    :goto_2
    iget v6, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    if-ge p1, v6, :cond_7

    move v6, v4

    move v4, v1

    :goto_3
    if-ge v5, v3, :cond_4

    aget-short v7, v2, v6

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    add-int/2addr v5, v7

    goto :goto_3

    :cond_4
    sub-int/2addr v5, v3

    if-le v4, v0, :cond_5

    add-int/lit8 v7, p1, 0x2

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    iget v9, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->INDEX_SCALE_FACTOR:F

    float-to-double v9, v9

    div-double/2addr v7, v9

    double-to-float v7, v7

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    mul-float/2addr v4, v7

    mul-float/2addr v4, v7

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    const/high16 v7, 0x41a00000    # 20.0f

    cmpl-float v7, v4, v7

    if-lez v7, :cond_6

    iget v4, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float v4, v4

    goto :goto_5

    :cond_6
    iget v7, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->SAMPLE_SCALE_FACTOR:F

    div-float/2addr v4, v7

    :goto_5
    iget-object v7, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mPointData:[F

    iget v8, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float v8, v8

    div-float/2addr v4, v8

    aget v8, v7, p1

    iget v9, p0, Lcom/miui/maml/widget/SpectrumVisualizer;->VISUALIZE_DESC_HEIGHT:F

    sub-float/2addr v8, v9

    invoke-static {v4, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aput v4, v7, p1

    add-int/lit8 p1, p1, 0x1

    move v4, v6

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/miui/maml/widget/SpectrumVisualizer;->invalidate()V

    return-void
.end method
