.class public Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;
.super Lcom/miui/maml/elements/filament/UniformFactory$TextureUniform;
.source "UniformFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/filament/UniformFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageUniform"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform$setImageTextureTask;
    }
.end annotation


# static fields
.field private static final IMAGE_SRC_BITMAP:I = 0x1

.field private static final IMAGE_SRC_FILE:I = 0x2

.field public static final TYPE:Ljava/lang/String; = "image"


# instance fields
.field private mFinalStr:Ljava/lang/String;

.field private mId:Lcom/miui/maml/data/Expression;

.field private mImageSrcType:I

.field private mPremultiplied:Lcom/miui/maml/data/Expression;

.field private mSrc:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/elements/filament/UniformFactory$TextureUniform;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;Landroid/content/Context;I)V

    const/4 p3, 0x2

    iput p3, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mImageSrcType:I

    const-string p3, "premultiplied"

    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mPremultiplied:Lcom/miui/maml/data/Expression;

    invoke-direct {p0}, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->doUpdateParamsImpl()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->setImageTexture(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private doUpdateParamsImpl()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mIsParamsValid:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mParams:[Lcom/miui/maml/data/Expression;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mParams:[Lcom/miui/maml/data/Expression;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mSrc:Lcom/miui/maml/data/Expression;

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mParams:[Lcom/miui/maml/data/Expression;

    array-length v0, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    const-string v3, "file"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mImageSrcType:I

    goto :goto_0

    :cond_1
    const-string v3, "bitmap"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v2, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mImageSrcType:I

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mParams:[Lcom/miui/maml/data/Expression;

    array-length v0, v0

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mId:Lcom/miui/maml/data/Expression;

    :cond_3
    return-void
.end method

.method private setImage()V
    .locals 4

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mSrc:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mImageSrcType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mId:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mFinalStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform$setImageTextureTask;

    iget-object v2, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mManager:Lcom/miui/maml/ResourceManager;

    iget-object v3, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mPremultiplied:Lcom/miui/maml/data/Expression;

    invoke-direct {v1, v0, v2, p0, v3}, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform$setImageTextureTask;-><init>(Ljava/lang/String;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;Lcom/miui/maml/data/Expression;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform$setImageTextureTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mFinalStr:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mVariables:Lcom/miui/maml/data/Variables;

    invoke-virtual {v1, v0}, Lcom/miui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v2, v1, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->setImageTexture(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mVariables:Lcom/miui/maml/data/Variables;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setImageTexture(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mEngine:Lcom/google/android/filament/Engine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mEngine:Lcom/google/android/filament/Engine;

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mTexture:Lcom/google/android/filament/Texture;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/filament/Texture$Builder;

    invoke-direct {v0}, Lcom/google/android/filament/Texture$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture$Builder;->width(I)Lcom/google/android/filament/Texture$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture$Builder;->height(I)Lcom/google/android/filament/Texture$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/Texture$Sampler;->SAMPLER_2D:Lcom/google/android/filament/Texture$Sampler;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture$Builder;->sampler(Lcom/google/android/filament/Texture$Sampler;)Lcom/google/android/filament/Texture$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/Texture$InternalFormat;->SRGB8_A8:Lcom/google/android/filament/Texture$InternalFormat;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture$Builder;->format(Lcom/google/android/filament/Texture$InternalFormat;)Lcom/google/android/filament/Texture$Builder;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture$Builder;->levels(I)Lcom/google/android/filament/Texture$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mEngine:Lcom/google/android/filament/Engine;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture$Builder;->build(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mTexture:Lcom/google/android/filament/Texture;

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mEngine:Lcom/google/android/filament/Engine;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mTexture:Lcom/google/android/filament/Texture;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/filament/android/TextureHelper;->setBitmap(Lcom/google/android/filament/Engine;Lcom/google/android/filament/Texture;ILandroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mTexture:Lcom/google/android/filament/Texture;

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mEngine:Lcom/google/android/filament/Engine;

    invoke-virtual {p1, v0}, Lcom/google/android/filament/Texture;->generateMipmaps(Lcom/google/android/filament/Engine;)V

    iget-object p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mTexture:Lcom/google/android/filament/Texture;

    iget-object v2, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mSampler:Lcom/google/android/filament/TextureSampler;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;Lcom/google/android/filament/Texture;Lcom/google/android/filament/TextureSampler;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected doRefresh()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->setImage()V

    return-void
.end method

.method protected doUpdateParams()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mImageSrcType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mSrc:Lcom/miui/maml/data/Expression;

    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->mId:Lcom/miui/maml/data/Expression;

    invoke-direct {p0}, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->doUpdateParamsImpl()V

    invoke-direct {p0}, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->setImage()V

    return-void
.end method

.method public bridge synthetic finish()V
    .locals 0

    invoke-super {p0}, Lcom/miui/maml/elements/filament/UniformFactory$TextureUniform;->finish()V

    return-void
.end method

.method public init(Lcom/miui/maml/ResourceManager;Lcom/google/android/filament/Engine;Lcom/google/android/filament/MaterialInstance;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/maml/elements/filament/UniformFactory$TextureUniform;->init(Lcom/miui/maml/ResourceManager;Lcom/google/android/filament/Engine;Lcom/google/android/filament/MaterialInstance;)V

    invoke-direct {p0}, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->setImage()V

    return-void
.end method
