.class public Lcom/miui/maml/elements/ElementGroup;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "ElementGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/ElementGroup$LinearDirection;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MAML_ElementGroup"

.field public static final TAG_NAME:Ljava/lang/String; = "ElementGroup"

.field public static final TAG_NAME1:Ljava/lang/String; = "Group"


# instance fields
.field protected mClip:Z

.field protected mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/ScreenElement;",
            ">;"
        }
    .end annotation
.end field

.field private mHovered:Z

.field private mIndexVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLayered:Z

.field private mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

.field private mTouched:Z


# direct methods
.method private constructor <init>(Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/IndexedVariable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    sget-object p1, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->None:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    iput-object p1, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    iput-object p2, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    sget-object p2, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->None:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    iput-object p2, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public static createArrayGroup(Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/IndexedVariable;)Lcom/miui/maml/elements/ElementGroup;
    .locals 1

    new-instance v0, Lcom/miui/maml/elements/ElementGroup;

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/IndexedVariable;)V

    return-object v0
.end method

.method public static isArrayGroup(Lcom/miui/maml/elements/ScreenElement;)Z
    .locals 1

    instance-of v0, p0, Lcom/miui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->isArray()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "clip"

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ElementGroup;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/elements/ElementGroup;->mClip:Z

    const-string v0, "layered"

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ElementGroup;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/elements/ElementGroup;->mLayered:Z

    const-string v0, "linear"

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ElementGroup;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "h"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->Horizontal:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    iput-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    goto :goto_0

    :cond_1
    const-string v1, "v"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->Vertical:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    iput-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v2}, Lcom/miui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/maml/elements/ElementGroup;->addElement(Lcom/miui/maml/elements/ScreenElement;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V

    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/ScreenElement;->acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addElement(Lcom/miui/maml/elements/ScreenElement;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/ScreenElement;->setParent(Lcom/miui/maml/elements/ElementGroup;)V

    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->getHeight()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/miui/maml/elements/ElementGroup;->getLeft(FF)F

    move-result v10

    invoke-virtual {p0, v2, v1}, Lcom/miui/maml/elements/ElementGroup;->getTop(FF)F

    move-result v11

    iget-boolean v3, p0, Lcom/miui/maml/elements/ElementGroup;->mLayered:Z

    if-eqz v3, :cond_0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    add-float v6, v10, v0

    add-float v7, v11, v1

    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->getAlpha()I

    move-result v8

    const/16 v9, 0x1f

    move-object v3, p1

    move v4, v10

    move v5, v11

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    :goto_0
    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    cmpl-float v4, v0, v2

    if-lez v4, :cond_1

    cmpl-float v4, v1, v2

    if-lez v4, :cond_1

    iget-boolean v4, p0, Lcom/miui/maml/elements/ElementGroup;->mClip:Z

    if-eqz v4, :cond_1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->doRenderChildren(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected doRenderChildren(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    iget-object v3, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v3, :cond_0

    int-to-double v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected doTick(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->doTick(J)V

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->doTickChildren(J)V

    return-void
.end method

.method protected doTickChildren(J)V
    .locals 8

    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/elements/ScreenElement;

    iget-object v5, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v5, :cond_0

    int-to-double v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    invoke-virtual {v4, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->tick(J)V

    iget-object v5, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    sget-object v6, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->None:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    if-eq v5, v6, :cond_1

    instance-of v5, v4, Lcom/miui/maml/elements/AnimatedScreenElement;

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    check-cast v4, Lcom/miui/maml/elements/AnimatedScreenElement;

    sget-object v5, Lcom/miui/maml/elements/ElementGroup$1;->$SwitchMap$com$miui$maml$elements$ElementGroup$LinearDirection:[I

    iget-object v6, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    invoke-virtual {v6}, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v4}, Lcom/miui/maml/elements/AnimatedScreenElement;->getMarginTop()F

    move-result v5

    add-float/2addr v1, v5

    float-to-double v5, v1

    invoke-virtual {v4, v5, v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->setY(D)V

    invoke-virtual {v4}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v5

    invoke-virtual {v4}, Lcom/miui/maml/elements/AnimatedScreenElement;->getMarginBottom()F

    move-result v6

    add-float/2addr v5, v6

    add-float/2addr v1, v5

    invoke-virtual {v4}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v4

    cmpg-float v5, v3, v4

    if-gez v5, :cond_1

    move v3, v4

    goto :goto_1

    :pswitch_1
    invoke-virtual {v4}, Lcom/miui/maml/elements/AnimatedScreenElement;->getMarginLeft()F

    move-result v5

    add-float/2addr v1, v5

    float-to-double v5, v1

    invoke-virtual {v4, v5, v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->setX(D)V

    invoke-virtual {v4}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v5

    invoke-virtual {v4}, Lcom/miui/maml/elements/AnimatedScreenElement;->getMarginRight()F

    move-result v6

    add-float/2addr v5, v6

    add-float/2addr v1, v5

    invoke-virtual {v4}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v4

    cmpg-float v5, v3, v4

    if-gez v5, :cond_1

    move v3, v4

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/miui/maml/elements/ElementGroup$1;->$SwitchMap$com$miui$maml$elements$ElementGroup$LinearDirection:[I

    iget-object p2, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    invoke-virtual {p2}, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_2
    float-to-double p1, v1

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->setHeight(D)V

    float-to-double v0, v3

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ElementGroup;->setWidth(D)V

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->setActualHeight(D)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->setActualWidth(D)V

    goto :goto_2

    :pswitch_3
    float-to-double p1, v1

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->setWidth(D)V

    float-to-double v0, v3

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ElementGroup;->setHeight(D)V

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->setActualWidth(D)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->setActualHeight(D)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/ScreenElement;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public finish()V
    .locals 5

    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->finish()V

    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "MAML_ElementGroup"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getChild(I)Lcom/miui/maml/elements/ScreenElement;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/ScreenElement;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getElements()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/ScreenElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getParentLeft()F
    .locals 2

    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->getLeft()F

    move-result v0

    iget-object v1, p0, Lcom/miui/maml/elements/ElementGroup;->mParent:Lcom/miui/maml/elements/ElementGroup;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/maml/elements/ElementGroup;->mParent:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getParentLeft()F

    move-result v1

    :goto_0
    add-float/2addr v0, v1

    return v0
.end method

.method protected getParentTop()F
    .locals 2

    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->getTop()F

    move-result v0

    iget-object v1, p0, Lcom/miui/maml/elements/ElementGroup;->mParent:Lcom/miui/maml/elements/ElementGroup;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/maml/elements/ElementGroup;->mParent:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getParentTop()F

    move-result v1

    :goto_0
    add-float/2addr v0, v1

    return v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 5

    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->init()V

    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v2, :cond_0

    int-to-double v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->init()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isArray()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLayered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/maml/elements/ElementGroup;->mLayered:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/ScreenElement;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mFactory:Lcom/miui/maml/elements/ScreenElementFactory;

    iget-object v1, p0, Lcom/miui/maml/elements/ElementGroup;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1, v1}, Lcom/miui/maml/elements/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p1

    return-object p1
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/ElementGroup;->touched(FF)Z

    move-result v0

    iget-boolean v2, p0, Lcom/miui/maml/elements/ElementGroup;->mClip:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/maml/elements/ElementGroup;->mHovered:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_5

    iget-object v3, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/ScreenElement;

    iget-object v4, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v4, :cond_3

    int-to-double v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_3
    invoke-virtual {v3, p1}, Lcom/miui/maml/elements/ScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_2
    iput-boolean v2, p0, Lcom/miui/maml/elements/ElementGroup;->mHovered:Z

    iget-boolean p1, p0, Lcom/miui/maml/elements/ElementGroup;->mHovered:Z

    return p1
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/miui/maml/elements/ElementGroup;->touched(FF)Z

    move-result v2

    iget-boolean v3, p0, Lcom/miui/maml/elements/ElementGroup;->mClip:Z

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/miui/maml/elements/ElementGroup;->mTouched:Z

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_2
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/miui/maml/elements/ElementGroup;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lcom/miui/maml/ScreenElementRoot;->version()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lt v3, v4, :cond_3

    move v3, v5

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    if-eqz v3, :cond_6

    sub-int/2addr v2, v5

    :goto_1
    if-ltz v2, :cond_9

    iget-object v3, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/ScreenElement;

    iget-object v4, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v4, :cond_4

    int-to-double v6, v2

    invoke-virtual {v4, v6, v7}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_4
    invoke-virtual {v3, p1}, Lcom/miui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v5

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_6
    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_9

    iget-object v4, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/elements/ScreenElement;

    iget-object v6, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v6, :cond_7

    int-to-double v7, v3

    invoke-virtual {v6, v7, v8}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_7
    invoke-virtual {v4, p1}, Lcom/miui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v1, v5

    goto :goto_3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    if-eqz v1, :cond_a

    goto :goto_4

    :cond_a
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_4
    iput-boolean v5, p0, Lcom/miui/maml/elements/ElementGroup;->mTouched:Z

    iget-boolean p1, p0, Lcom/miui/maml/elements/ElementGroup;->mTouched:Z

    return p1
.end method

.method protected onVisibilityChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    iget-object p1, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->updateVisibility()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->pause()V

    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->pause()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pauseAnim(J)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->pauseAnim(J)V

    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public playAnim(JJJZZ)V
    .locals 13

    move-object v0, p0

    invoke-super/range {p0 .. p8}, Lcom/miui/maml/elements/AnimatedScreenElement;->playAnim(JJJZZ)V

    iget-object v1, v0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, v0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v3, :cond_0

    int-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    iget-object v3, v0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/miui/maml/elements/ScreenElement;

    move-wide v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-virtual/range {v4 .. v12}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeAllElements()V
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->requestUpdate()V

    return-void
.end method

.method public removeElement(Lcom/miui/maml/elements/ScreenElement;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->requestUpdate()V

    return-void
.end method

.method public reset(J)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->reset(J)V

    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->reset(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->resume()V

    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resumeAnim(J)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->resumeAnim(J)V

    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAnim([Ljava/lang/String;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setAnim([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v2, :cond_0

    int-to-double v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setClip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/maml/elements/ElementGroup;->mClip:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/ScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->showCategory(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->showCategory(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
