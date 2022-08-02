.class public Lcom/miui/home/recents/GestureBackArrowView;
.super Landroid/view/View;
.source "GestureBackArrowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/GestureBackArrowView$ReadyState;
    }
.end annotation


# static fields
.field private static final ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final QUAD_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mArrow:Landroid/graphics/Bitmap;

.field private mArrowAnimator:Landroid/animation/ValueAnimator;

.field private mArrowDstRect:Landroid/graphics/Rect;

.field private mArrowFeedBackDone:Z

.field private mArrowHeight:I

.field private mArrowPaint:Landroid/graphics/Paint;

.field private mArrowShown:Z

.field private mArrowWidth:I

.field private mBackDstRect:Landroid/graphics/Rect;

.field private mBackHeight:I

.field private mBackWidth:I

.field private mBackground:Landroid/graphics/Bitmap;

.field private mBgPaint:Landroid/graphics/Paint;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurArrowAlpha:I

.field private mCurrentY:F

.field private mExpectBackHeight:F

.field private mIconHeight:I

.field private mIconNeedDraw:Z

.field private mIconScale:F

.field private mIconWidth:I

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private mLastIconAnimator:Landroid/animation/ValueAnimator;

.field private mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

.field private mOffsetX:F

.field private mPosition:I

.field private mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

.field private mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

.field private mScale:F

.field private mStartX:F

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveChangeAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/miui/home/recents/GestureBackArrowView;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/miui/home/recents/GestureBackArrowView;->QUAD_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/miui/home/recents/GestureBackArrowView;->ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/miui/home/recents/GestureBackArrowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/home/recents/GestureBackArrowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/GestureBackArrowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconScale:F

    sget-object p2, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    iput-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    iput-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastConfiguration:Landroid/content/res/Configuration;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowFeedBackDone:Z

    iget-object p3, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureBackArrowView;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    const-string p3, "keyguard"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/KeyguardManager;

    iput-object p3, p0, Lcom/miui/home/recents/GestureBackArrowView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mContentResolver:Landroid/content/ContentResolver;

    iput p5, p0, Lcom/miui/home/recents/GestureBackArrowView;->mPosition:I

    new-instance p1, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBgPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0}, Lcom/miui/home/recents/GestureBackArrowView;->loadResources()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackDstRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureBackArrowView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/GestureBackArrowView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowFeedBackDone:Z

    return p0
.end method

.method static synthetic access$002(Lcom/miui/home/recents/GestureBackArrowView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowFeedBackDone:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/recents/GestureBackArrowView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/home/recents/GestureBackArrowView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconNeedDraw:Z

    return p1
.end method

.method static synthetic access$302(Lcom/miui/home/recents/GestureBackArrowView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mCurArrowAlpha:I

    return p1
.end method

.method static synthetic access$402(Lcom/miui/home/recents/GestureBackArrowView;F)F
    .locals 0

    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    return p1
.end method

.method static synthetic access$500(Lcom/miui/home/recents/GestureBackArrowView;)F
    .locals 0

    iget p0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mOffsetX:F

    return p0
.end method

.method static synthetic access$600(Lcom/miui/home/recents/GestureBackArrowView;)Lcom/miui/home/recents/GestureBackArrowView$ReadyState;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/home/recents/GestureBackArrowView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$802(Lcom/miui/home/recents/GestureBackArrowView;F)F
    .locals 0

    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconScale:F

    return p1
.end method

.method static synthetic access$902(Lcom/miui/home/recents/GestureBackArrowView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowShown:Z

    return p1
.end method

.method private changeScale(FFIZ)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p3

    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    sget-object p3, Lcom/miui/home/recents/GestureBackArrowView;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/miui/home/recents/GestureBackArrowView$3;

    invoke-direct {p3, p0, p4, p1}, Lcom/miui/home/recents/GestureBackArrowView$3;-><init>(Lcom/miui/home/recents/GestureBackArrowView;ZF)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x64

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/miui/home/recents/GestureBackArrowView;->QUAD_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/miui/home/recents/GestureBackArrowView$4;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/GestureBackArrowView$4;-><init>(Lcom/miui/home/recents/GestureBackArrowView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private generateLeftBg()Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureBackArrowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080274

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private generateRightBg()Landroid/graphics/Bitmap;
    .locals 7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-direct {p0}, Lcom/miui/home/recents/GestureBackArrowView;->generateLeftBg()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private loadRecentTaskIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStubView;->supportNextTask(Landroid/app/KeyguardManager;Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureBackArrowView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/GestureStubView;->getNextTask(Landroid/content/Context;ZI)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0
.end method

.method private loadResources()V
    .locals 3

    const-string v0, "GestureBackArrowView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadResources: mPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mPosition:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/GestureBackArrowView;->generateLeftBg()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackground:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/GestureBackArrowView;->generateRightBg()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackground:Landroid/graphics/Bitmap;

    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackHeight:I

    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackWidth:I

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureBackArrowView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0802a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconWidth:I

    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconHeight:I

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureBackArrowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080273

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrow:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowHeight:I

    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowWidth:I

    return-void
.end method

.method private skipChangeScaleOnAcitonMove()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    sget-object v1, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private startArrowAnimating(ZI)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowFeedBackDone:Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mCurArrowAlpha:I

    aput v2, v1, v0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const/16 v0, 0xff

    :cond_1
    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->isSupportEffectGestureBackLinear()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/home/recents/GestureBackArrowView$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/GestureBackArrowView$1;-><init>(Lcom/miui/home/recents/GestureBackArrowView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    iget-object p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/miui/home/recents/GestureBackArrowView$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/GestureBackArrowView$2;-><init>(Lcom/miui/home/recents/GestureBackArrowView;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method getCurrentState()Lcom/miui/home/recents/GestureBackArrowView$ReadyState;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    return-object v0
.end method

.method public isArrowFeedBackDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowFeedBackDone:Z

    return v0
.end method

.method onActionDown(FFF)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    iput p3, p0, Lcom/miui/home/recents/GestureBackArrowView;->mExpectBackHeight:F

    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mCurrentY:F

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackHeight:I

    int-to-float p3, p3

    iput p3, p0, Lcom/miui/home/recents/GestureBackArrowView;->mExpectBackHeight:F

    const/high16 p3, 0x41a00000    # 20.0f

    sub-float/2addr p1, p3

    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mCurrentY:F

    :goto_0
    iput p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mStartX:F

    iget-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iput-boolean p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowShown:Z

    iput-boolean p2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconNeedDraw:Z

    return-void
.end method

.method onActionMove(F)V
    .locals 1

    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mOffsetX:F

    invoke-direct {p0}, Lcom/miui/home/recents/GestureBackArrowView;->skipChangeScaleOnAcitonMove()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/miui/home/recents/GesturesBackController;->convertOffset(F)F

    move-result p1

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureBackArrowView;->invalidate()V

    return-void
.end method

.method onActionUp(FLandroid/animation/Animator$AnimatorListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconScale:F

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    aput v1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView;->QUAD_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/miui/home/recents/GestureBackArrowView$5;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/GestureBackArrowView$5;-><init>(Lcom/miui/home/recents/GestureBackArrowView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    sget-object p1, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    const/high16 v0, -0x80000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/GestureBackArrowView;->loadResources()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mPosition:I

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    packed-switch v1, :pswitch_data_0

    move v0, v2

    move v1, v0

    move v4, v1

    move v5, v4

    move v6, v5

    move v7, v6

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureBackArrowView;->getWidth()I

    move-result v1

    iget v4, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/miui/home/recents/GestureBackArrowView;->mStartX:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    sub-int v4, v1, v4

    float-to-int v6, v5

    sub-int v6, v1, v6

    iget v7, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowWidth:I

    int-to-float v8, v7

    iget v9, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v0

    div-float/2addr v8, v3

    add-float/2addr v8, v5

    float-to-int v8, v8

    sub-int v8, v1, v8

    int-to-float v7, v7

    mul-float/2addr v7, v9

    sub-float v7, v0, v7

    div-float/2addr v7, v3

    add-float/2addr v7, v5

    float-to-int v7, v7

    sub-int v7, v1, v7

    iget v10, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconWidth:I

    int-to-float v11, v10

    mul-float/2addr v11, v9

    cmpg-float v11, v0, v11

    if-gez v11, :cond_0

    add-float/2addr v5, v0

    float-to-int v0, v5

    goto :goto_0

    :cond_0
    int-to-float v10, v10

    mul-float/2addr v10, v9

    add-float/2addr v0, v10

    div-float/2addr v0, v3

    add-float/2addr v5, v0

    float-to-int v0, v5

    :goto_0
    sub-int v0, v1, v0

    int-to-float v1, v0

    iget v5, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconWidth:I

    int-to-float v5, v5

    iget v9, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v5, v9

    add-float/2addr v1, v5

    float-to-int v1, v1

    move v5, v6

    move v6, v7

    move v7, v8

    goto :goto_2

    :pswitch_1
    iget v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mStartX:F

    float-to-int v4, v1

    add-float v5, v0, v1

    float-to-int v5, v5

    iget v6, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowWidth:I

    int-to-float v7, v6

    iget v8, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v7, v8

    sub-float v7, v0, v7

    div-float/2addr v7, v3

    add-float/2addr v7, v1

    float-to-int v7, v7

    int-to-float v6, v6

    mul-float/2addr v6, v8

    add-float/2addr v6, v0

    div-float/2addr v6, v3

    add-float/2addr v6, v1

    float-to-int v6, v6

    iget v9, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconWidth:I

    int-to-float v10, v9

    mul-float/2addr v10, v8

    cmpg-float v10, v0, v10

    if-gez v10, :cond_1

    add-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_1

    :cond_1
    int-to-float v9, v9

    mul-float/2addr v9, v8

    add-float/2addr v0, v9

    div-float/2addr v0, v3

    add-float/2addr v1, v0

    float-to-int v0, v1

    :goto_1
    int-to-float v1, v0

    iget v8, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconWidth:I

    int-to-float v8, v8

    iget v9, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v8, v9

    sub-float/2addr v1, v8

    float-to-int v1, v1

    move v12, v1

    move v1, v0

    move v0, v12

    :goto_2
    iget-object v8, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackDstRect:Landroid/graphics/Rect;

    iget v9, p0, Lcom/miui/home/recents/GestureBackArrowView;->mCurrentY:F

    iget v10, p0, Lcom/miui/home/recents/GestureBackArrowView;->mExpectBackHeight:F

    div-float v11, v10, v3

    sub-float v11, v9, v11

    float-to-int v11, v11

    div-float/2addr v10, v3

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v4, v11, v5, v9}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackground:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBackDstRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/miui/home/recents/GestureBackArrowView;->mBgPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {p1, v4, v9, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v4, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    sget-object v5, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    sget-object v5, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-ne v4, v5, :cond_2

    goto :goto_3

    :cond_2
    iget-boolean v4, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowShown:Z

    if-eqz v4, :cond_4

    const/16 v4, 0x32

    invoke-direct {p0, v2, v4}, Lcom/miui/home/recents/GestureBackArrowView;->startArrowAnimating(ZI)V

    iput-boolean v2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowShown:Z

    goto :goto_4

    :cond_3
    :goto_3
    iget-boolean v2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowShown:Z

    if-nez v2, :cond_4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconNeedDraw:Z

    const/16 v4, 0x64

    invoke-direct {p0, v2, v4}, Lcom/miui/home/recents/GestureBackArrowView;->startArrowAnimating(ZI)V

    iput-boolean v2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowShown:Z

    :cond_4
    :goto_4
    iget-boolean v2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconNeedDraw:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    float-to-double v4, v2

    const-wide v10, 0x3fb999999999999aL    # 0.1

    cmpl-double v2, v4, v10

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    sget-object v4, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-ne v2, v4, :cond_5

    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowDstRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mCurrentY:F

    iget v2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowHeight:I

    int-to-float v4, v2

    iget v5, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v3

    sub-float v4, v1, v4

    float-to-int v4, v4

    int-to-float v2, v2

    mul-float/2addr v2, v5

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v7, v4, v6, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrow:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowDstRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lcom/miui/home/recents/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    iget v4, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/miui/home/recents/GestureBackArrowView;->mCurrentY:F

    iget v5, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconHeight:I

    int-to-float v6, v5

    iget v7, p0, Lcom/miui/home/recents/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v6, v7

    div-float/2addr v6, v3

    sub-float v6, v4, v6

    float-to-int v6, v6

    int-to-float v5, v5

    mul-float/2addr v5, v7

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    float-to-int v3, v4

    invoke-virtual {v2, v0, v6, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method reset()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    const/high16 v1, -0x3b860000    # -1000.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p0, v1, v0, v2}, Lcom/miui/home/recents/GestureBackArrowView;->onActionDown(FFF)V

    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    iput-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureBackArrowView;->invalidate()V

    return-void
.end method

.method public setArrowFeedBackDone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mArrowFeedBackDone:Z

    return-void
.end method

.method setReadyFinish(Lcom/miui/home/recents/GestureBackArrowView$ReadyState;)V
    .locals 4

    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/GestureBackArrowView;->loadRecentTaskIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-eq p1, v0, :cond_5

    sget-object v1, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    const/16 v2, 0xc8

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    const v1, 0x3f95c28f    # 1.17f

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/GestureBackArrowView;->changeScale(FFIZ)V

    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    sget-object v1, Lcom/miui/home/recents/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/miui/home/recents/GestureBackArrowView;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/GestureBackArrowView;->changeScale(FFIZ)V

    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/miui/home/recents/GestureBackArrowView;->mReadyState:Lcom/miui/home/recents/GestureBackArrowView$ReadyState;

    :cond_5
    return-void
.end method
