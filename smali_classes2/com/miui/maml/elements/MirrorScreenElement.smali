.class public Lcom/miui/maml/elements/MirrorScreenElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "MirrorScreenElement.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MirrorScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Mirror"


# instance fields
.field private mMirrorTranslation:Z

.field private mTarget:Lcom/miui/maml/elements/ScreenElement;

.field private mTargetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    const-string p2, "target"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/MirrorScreenElement;->mTargetName:Ljava/lang/String;

    const-string p2, "mirrorTranslation"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/maml/elements/MirrorScreenElement;->mMirrorTranslation:Z

    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/maml/elements/MirrorScreenElement;->mTarget:Lcom/miui/maml/elements/ScreenElement;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/miui/maml/elements/MirrorScreenElement;->mMirrorTranslation:Z

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->doRenderWithTranslation(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/MirrorScreenElement;->mTarget:Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/ScreenElement;->doRender(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public init()V
    .locals 3

    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->init()V

    iget-object v0, p0, Lcom/miui/maml/elements/MirrorScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    iget-object v1, p0, Lcom/miui/maml/elements/MirrorScreenElement;->mTargetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/MirrorScreenElement;->mTarget:Lcom/miui/maml/elements/ScreenElement;

    iget-object v0, p0, Lcom/miui/maml/elements/MirrorScreenElement;->mTarget:Lcom/miui/maml/elements/ScreenElement;

    if-nez v0, :cond_0

    const-string v0, "MirrorScreenElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the target does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/maml/elements/MirrorScreenElement;->mTargetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
