.class Lcom/miui/launcher/utils/MamlUtils$LockscreenElementFactory;
.super Lcom/miui/maml/elements/ScreenElementFactory;
.source "MamlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/launcher/utils/MamlUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LockscreenElementFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/maml/elements/ScreenElementFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ScreenElement;
    .locals 2

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unlocker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/maml/elements/AdvancedSlider;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p1

    return-object p1
.end method
