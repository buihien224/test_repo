.class public Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;
.super Lcom/miui/maml/elements/filament/UniformFactory$TextureUniform;
.source "UniformFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/filament/UniformFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OffscreenUniform"
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "offscreen"


# instance fields
.field private mOffscreenName:Ljava/lang/String;

.field private mOffscreenNameExp:Lcom/miui/maml/data/Expression;

.field private mOffscreens:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/elements/filament/CustFrameBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/elements/filament/UniformFactory$TextureUniform;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->doUpdateParamsImpl()V

    return-void
.end method

.method private doUpdateParamsImpl()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mIsParamsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mParams:[Lcom/miui/maml/data/Expression;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mParams:[Lcom/miui/maml/data/Expression;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mOffscreenNameExp:Lcom/miui/maml/data/Expression;

    :cond_0
    return-void
.end method

.method private setOffscreen()V
    .locals 5

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mOffscreenNameExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mOffscreenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mOffscreens:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/filament/CustFrameBuffer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/maml/elements/filament/CustFrameBuffer;->getTexture()Lcom/google/android/filament/Texture;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mTexture:Lcom/google/android/filament/Texture;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mTexture:Lcom/google/android/filament/Texture;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v2, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mTexture:Lcom/google/android/filament/Texture;

    iget-object v4, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mSampler:Lcom/google/android/filament/TextureSampler;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;Lcom/google/android/filament/Texture;Lcom/google/android/filament/TextureSampler;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mOffscreenName:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public checkOffscreen(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/elements/filament/CustFrameBuffer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mOffscreens:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mOffscreenNameExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/filament/CustFrameBuffer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/maml/elements/filament/CustFrameBuffer;->getTexture()Lcom/google/android/filament/Texture;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mTexture:Lcom/google/android/filament/Texture;

    iget-object p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mTexture:Lcom/google/android/filament/Texture;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mTexture:Lcom/google/android/filament/Texture;

    iget-object v2, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mSampler:Lcom/google/android/filament/TextureSampler;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;Lcom/google/android/filament/Texture;Lcom/google/android/filament/TextureSampler;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected doRefresh()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->setOffscreen()V

    return-void
.end method

.method protected doUpdateParams()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mOffscreenNameExp:Lcom/miui/maml/data/Expression;

    invoke-direct {p0}, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->doUpdateParamsImpl()V

    return-void
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mEngine:Lcom/google/android/filament/Engine;

    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mManager:Lcom/miui/maml/ResourceManager;

    iput-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$OffscreenUniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    return-void
.end method
