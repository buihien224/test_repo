.class public Lcom/miui/maml/AnimatingDrawable;
.super Lcom/miui/maml/MamlDrawable;
.source "AnimatingDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;
    }
.end annotation


# static fields
.field private static final QUIET_IMAGE_NAME:Ljava/lang/String; = "quietImage.png"

.field private static final TAG:Ljava/lang/String; = "Maml.AnimatingDrawable"

.field public static final TIME_FANCY_CACHE:I


# instance fields
.field private final mAnimIndex:I

.field private final mClassName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mFancyDrawable:Lcom/miui/maml/FancyDrawable;

.field private final mLayerIndex:I

.field private final mLock:Ljava/lang/Object;

.field private final mPackageName:Ljava/lang/String;

.field private mQuietDrawable:Landroid/graphics/drawable/Drawable;

.field private final mResourceManager:Lcom/miui/maml/ResourceManager;

.field private mUseFancyWhenStatic:Z

.field private mUseQuietWhenAnim:Z

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;)V
    .locals 10

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v9}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;I)V
    .locals 10

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;II)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/maml/MamlDrawable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/maml/AnimatingDrawable;->mUseFancyWhenStatic:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/miui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    iput-object p1, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/miui/maml/AnimatingDrawable;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iput-object p2, p0, Lcom/miui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    iput p6, p0, Lcom/miui/maml/AnimatingDrawable;->mLayerIndex:I

    iput p7, p0, Lcom/miui/maml/AnimatingDrawable;->mAnimIndex:I

    iput-boolean p8, p0, Lcom/miui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    iput-boolean p9, p0, Lcom/miui/maml/AnimatingDrawable;->mUseFancyWhenStatic:Z

    invoke-direct {p0}, Lcom/miui/maml/AnimatingDrawable;->init()V

    return-void
.end method

.method private init()V
    .locals 11

    new-instance v10, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;

    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/maml/AnimatingDrawable;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object v5, p0, Lcom/miui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    iget v6, p0, Lcom/miui/maml/AnimatingDrawable;->mLayerIndex:I

    iget v7, p0, Lcom/miui/maml/AnimatingDrawable;->mAnimIndex:I

    iget-boolean v8, p0, Lcom/miui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    iget-boolean v9, p0, Lcom/miui/maml/AnimatingDrawable;->mUseFancyWhenStatic:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    iput-object v10, p0, Lcom/miui/maml/AnimatingDrawable;->mState:Lcom/miui/maml/MamlDrawable$MamlDrawableState;

    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mResourceManager:Lcom/miui/maml/ResourceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "den"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v2, v1}, Lcom/miui/maml/ResourceManager;->setExtraResource(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "quietImage.png"

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/AnimatingDrawable;->setIntrinsicSize(II)V

    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_0
    const-string v0, "Maml.AnimatingDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mQuietDrwable is null! package/class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    invoke-virtual {v1}, Lcom/miui/maml/FancyDrawable;->cleanUp()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected drawIcon(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/maml/AnimatingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/maml/AnimatingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Lcom/miui/maml/AnimatingDrawable;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/maml/AnimatingDrawable;->mIntrinsicWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/miui/maml/AnimatingDrawable;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/maml/AnimatingDrawable;->mIntrinsicHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string v0, "Maml.AnimatingDrawable"

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Maml.AnimatingDrawable"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getAnimIndex()I
    .locals 2

    iget v0, p0, Lcom/miui/maml/AnimatingDrawable;->mAnimIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/miui/maml/AnimatingDrawable;->mLayerIndex:I

    return v0
.end method

.method public getFancyDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/maml/AnimatingDrawable;->prepareFancyDrawable()V

    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getQuietDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStartDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/maml/AnimatingDrawable;->prepareFancyDrawable()V

    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    invoke-virtual {v1}, Lcom/miui/maml/FancyDrawable;->getStartDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isOnlyFancyWork()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/miui/maml/AnimatingDrawable;->mUseFancyWhenStatic:Z

    return v0
.end method

.method public isOnlyQuietWork()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/miui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    return v0
.end method

.method public prepareFancyDrawable()V
    .locals 9

    iget-boolean v0, p0, Lcom/miui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/miui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    iget v8, p0, Lcom/miui/maml/AnimatingDrawable;->mLayerIndex:I

    invoke-static/range {v2 .. v8}, Lcom/miui/maml/util/AppIconsHelper;->getFancyIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Lcom/miui/maml/FancyDrawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    iget v2, p0, Lcom/miui/maml/AnimatingDrawable;->mIntrinsicHeight:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/miui/maml/AnimatingDrawable;->mIntrinsicWidth:I

    if-gtz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    iget v2, v2, Lcom/miui/maml/FancyDrawable;->mIntrinsicWidth:I

    iget-object v3, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    iget v3, v3, Lcom/miui/maml/FancyDrawable;->mIntrinsicHeight:I

    invoke-virtual {p0, v2, v3}, Lcom/miui/maml/AnimatingDrawable;->setIntrinsicSize(II)V

    :cond_3
    check-cast v1, Lcom/miui/maml/FancyDrawable;

    iput-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Lcom/miui/maml/FancyDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendCommand(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setBounds(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/maml/MamlDrawable;->setBounds(IIII)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/maml/MamlDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const-string v0, "Maml.AnimatingDrawable"

    const-string v1, "setColorFilter"

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/miui/maml/FancyDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    return-void
.end method

.method public useFancyWhenStatic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/maml/AnimatingDrawable;->mUseFancyWhenStatic:Z

    return v0
.end method

.method public useQuietWhenAnim()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    return v0
.end method
