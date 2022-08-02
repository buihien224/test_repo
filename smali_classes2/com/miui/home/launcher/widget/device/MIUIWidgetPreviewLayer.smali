.class public Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;
.super Landroid/widget/FrameLayout;
.source "MIUIWidgetPreviewLayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MIUIWidgetPreviewLayer"


# instance fields
.field private mAttached:Z

.field private mBackground:Landroid/widget/ImageView;

.field private mPreview:Landroid/widget/ImageView;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mTempRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private attachWallpaper(Z)V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/widget/device/-$$Lambda$MIUIWidgetPreviewLayer$gH5pKqse2K8EoR3srg1avt84scY;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/widget/device/-$$Lambda$MIUIWidgetPreviewLayer$gH5pKqse2K8EoR3srg1avt84scY;-><init>(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;)V

    new-instance v1, Lcom/miui/home/launcher/widget/device/-$$Lambda$MIUIWidgetPreviewLayer$l4ks1JJjBxQvKhhpKxjo6Oe6VDU;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/widget/device/-$$Lambda$MIUIWidgetPreviewLayer$l4ks1JJjBxQvKhhpKxjo6Oe6VDU;-><init>(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;Z)V

    const/4 p1, 0x0

    invoke-static {v0, v1, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$attachWallpaper$1(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getCurrentWallpaper()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "MIUIWidgetPreviewLayer"

    const-string v0, "wallpaper is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v0, p1, v1}, Lcom/android/systemui/shared/recents/utilities/Graphics;->fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$attachWallpaper$2(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;ZLandroid/graphics/Bitmap;)V
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0602eb

    invoke-static {v0, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->startAttachAnimation()V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$detach$3(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mAttached:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$updatePreviewPosition$0(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method private startAttachAnimation()V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    const-string v3, "preview"

    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v1, v3, v4}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const-string v3, "preview"

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    const/4 v6, -0x2

    invoke-static {v6, v5}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-interface {v1, v3, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3eb33333    # 0.35f
    .end array-data
.end method


# virtual methods
.method public attach()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mAttached:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->setAlpha(F)V

    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->startAttachAnimation()V

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->attachWallpaper(Z)V

    return-void
.end method

.method public detach()V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mAttached:Z

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    aput-object p0, v2, v0

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    const-string v3, "preview"

    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    move-result-object v2

    const-string v3, "preview"

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    const/4 v6, -0x2

    invoke-static {v6, v5}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-interface {v2, v3, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    new-instance v0, Lcom/miui/home/launcher/widget/device/-$$Lambda$MIUIWidgetPreviewLayer$57RqR7P2KlckcF1Aj1aygDIFfeY;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/widget/device/-$$Lambda$MIUIWidgetPreviewLayer$57RqR7P2KlckcF1Aj1aygDIFfeY;-><init>(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method public drawPreview(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->attachWallpaper(Z)V

    :goto_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPreviewCorner(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer$1;-><init>(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;F)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :goto_0
    return-void
.end method

.method public updatePreviewPosition(Landroid/graphics/Rect;)V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/widget/device/-$$Lambda$MIUIWidgetPreviewLayer$jx49J_YQriqKlz1GyUjjP74gWj4;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/widget/device/-$$Lambda$MIUIWidgetPreviewLayer$jx49J_YQriqKlz1GyUjjP74gWj4;-><init>(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
