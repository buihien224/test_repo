.class public Lcom/miui/maml/elements/EllipseScreenElement;
.super Lcom/miui/maml/elements/GeometryScreenElement;
.source "EllipseScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Ellipse"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    sget-object p1, Lcom/miui/maml/elements/ScreenElement$Align;->CENTER:Lcom/miui/maml/elements/ScreenElement$Align;

    iput-object p1, p0, Lcom/miui/maml/elements/EllipseScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    sget-object p1, Lcom/miui/maml/elements/ScreenElement$AlignV;->CENTER:Lcom/miui/maml/elements/ScreenElement$AlignV;

    iput-object p1, p0, Lcom/miui/maml/elements/EllipseScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;)V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/maml/elements/EllipseScreenElement;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/miui/maml/elements/EllipseScreenElement;->getHeight()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-ltz v3, :cond_4

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v3, :cond_1

    iget p2, p0, Lcom/miui/maml/elements/EllipseScreenElement;->mWeight:F

    add-float/2addr v0, p2

    iget p2, p0, Lcom/miui/maml/elements/EllipseScreenElement;->mWeight:F

    add-float/2addr v1, p2

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    if-ne p2, v3, :cond_3

    iget p2, p0, Lcom/miui/maml/elements/EllipseScreenElement;->mWeight:F

    sub-float/2addr v0, p2

    iget p2, p0, Lcom/miui/maml/elements/EllipseScreenElement;->mWeight:F

    sub-float/2addr v1, p2

    cmpg-float p2, v0, v2

    if-ltz p2, :cond_2

    cmpg-float p2, v1, v2

    if-gez p2, :cond_3

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/high16 p2, 0x40000000    # 2.0f

    div-float v3, v0, p2

    sub-float v3, v2, v3

    div-float p2, v1, p2

    sub-float/2addr v2, p2

    new-instance p2, Landroid/graphics/RectF;

    add-float/2addr v0, v3

    add-float/2addr v1, v2

    invoke-direct {p2, v3, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/miui/maml/elements/EllipseScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :cond_4
    :goto_1
    return-void
.end method
