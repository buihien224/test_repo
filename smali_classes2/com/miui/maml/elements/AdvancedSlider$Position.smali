.class Lcom/miui/maml/elements/AdvancedSlider$Position;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Position"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Position"


# instance fields
.field private mBaseX:Lcom/miui/maml/data/Expression;

.field private mBaseY:Lcom/miui/maml/data/Expression;

.field private mX:Lcom/miui/maml/data/Expression;

.field private mY:Lcom/miui/maml/data/Expression;

.field final synthetic this$0:Lcom/miui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$Position;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/miui/maml/elements/AdvancedSlider$Position;->mBaseX:Lcom/miui/maml/data/Expression;

    iput-object p5, p0, Lcom/miui/maml/elements/AdvancedSlider$Position;->mBaseY:Lcom/miui/maml/data/Expression;

    const-string p4, "x"

    invoke-virtual {p1, p3, p4}, Lcom/miui/maml/elements/AdvancedSlider;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p4

    iput-object p4, p0, Lcom/miui/maml/elements/AdvancedSlider$Position;->mX:Lcom/miui/maml/data/Expression;

    const-string p4, "y"

    invoke-virtual {p1, p3, p4}, Lcom/miui/maml/elements/AdvancedSlider;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$Position;->mY:Lcom/miui/maml/data/Expression;

    return-void
.end method


# virtual methods
.method public getX()F
    .locals 6

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$Position;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$Position;->mX:Lcom/miui/maml/data/Expression;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    :goto_0
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$Position;->mBaseX:Lcom/miui/maml/data/Expression;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    :goto_1
    add-double/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/elements/AdvancedSlider;->scale(D)F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 6

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$Position;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$Position;->mY:Lcom/miui/maml/data/Expression;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    :goto_0
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$Position;->mBaseY:Lcom/miui/maml/data/Expression;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    :goto_1
    add-double/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Lcom/miui/maml/elements/AdvancedSlider;->scale(D)F

    move-result v0

    return v0
.end method
