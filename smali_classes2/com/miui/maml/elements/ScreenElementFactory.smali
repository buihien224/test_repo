.class public Lcom/miui/maml/elements/ScreenElementFactory;
.super Ljava/lang/Object;
.source "ScreenElementFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;
    }
.end annotation


# instance fields
.field private mFactoryCallback:Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;

.field private mPbrCreator:Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement$IPbrCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createPbrElement(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ScreenElement;
    .locals 6

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mPbrCreator:Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement$IPbrCreator;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.miui.maml.elements.filament.PhysicallyRenderingElement"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lorg/w3c/dom/Element;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lcom/miui/maml/ScreenElementRoot;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement$IPbrCreator;

    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mPbrCreator:Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement$IPbrCreator;

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mPbrCreator:Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement$IPbrCreator;

    instance-of v0, v0, Lcom/miui/maml/elements/ScreenElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mPbrCreator:Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement$IPbrCreator;

    check-cast v0, Lcom/miui/maml/elements/ScreenElement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ScreenElementFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail find IPbrCreator."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mPbrCreator:Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement$IPbrCreator;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement$IPbrCreator;->createRealPbrElement(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public createInstance(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ScreenElement;
    .locals 3

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "Image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/miui/maml/elements/ImageScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_0
    const-string v1, "Graphics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/miui/maml/elements/GraphicsElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/GraphicsElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_1
    const-string v1, "Time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/miui/maml/elements/TimepanelScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/TimepanelScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_2
    const-string v1, "ImageNumber"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "ImageChars"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string v1, "Text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/miui/maml/elements/TextScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/TextScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_4
    const-string v1, "DateTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/miui/maml/elements/DateTimeScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/DateTimeScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_5
    const-string v1, "Button"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Lcom/miui/maml/elements/ButtonScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ButtonScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_6
    const-string v1, "MusicControl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_7

    new-instance v0, Lcom/miui/maml/elements/MusicControlScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/MusicControlScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_7
    const-string v1, "ElementGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "Group"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_0

    :cond_8
    const-string v1, "Var"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v0, Lcom/miui/maml/elements/VariableElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/VariableElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_9
    const-string v1, "VarArray"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v0, Lcom/miui/maml/elements/VariableArrayElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/VariableArrayElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_a
    const-string v1, "AutoScaleGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v0, Lcom/miui/maml/elements/AutoScaleElementGroup;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/AutoScaleElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_b
    const-string v1, "SpectrumVisualizer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_c
    const-string v1, "Slider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v0, Lcom/miui/maml/elements/AdvancedSlider;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_d
    const-string v1, "FramerateController"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v0, Lcom/miui/maml/elements/FramerateController;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/FramerateController;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_e
    const-string v1, "FolmeConfig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v0, Lcom/miui/maml/elements/FolmeConfigElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/FolmeConfigElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_f
    const-string v1, "FolmeState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v0, Lcom/miui/maml/elements/FolmeStateElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/FolmeStateElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_10
    const-string v1, "VirtualScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v0, Lcom/miui/maml/elements/VirtualScreen;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/VirtualScreen;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_11
    const-string v1, "VirtualElement"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_12
    const-string v1, "Line"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v0, Lcom/miui/maml/elements/LineScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/LineScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_13
    const-string v1, "Rectangle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance v0, Lcom/miui/maml/elements/RectangleScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/RectangleScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_14
    const-string v1, "Ellipse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v0, Lcom/miui/maml/elements/EllipseScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/EllipseScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_15
    const-string v1, "Circle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v0, Lcom/miui/maml/elements/CircleScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/CircleScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_16
    const-string v1, "Arc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance v0, Lcom/miui/maml/elements/ArcScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ArcScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_17
    const-string v1, "Curve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    new-instance v0, Lcom/miui/maml/elements/CurveScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/CurveScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_18
    const-string v1, "List"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    new-instance v0, Lcom/miui/maml/elements/ListScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ListScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_19
    const-string v1, "Paint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v0, Lcom/miui/maml/elements/PaintScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/PaintScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_1a
    const-string v1, "Mirror"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v0, Lcom/miui/maml/elements/MirrorScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/MirrorScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_1b
    const-string v1, "Window"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance v0, Lcom/miui/maml/elements/WindowScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/WindowScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_1c
    const-string v1, "WebView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    new-instance v0, Lcom/miui/maml/elements/WebViewScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/WebViewScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_1d
    const-string v1, "Layer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    new-instance v0, Lcom/miui/maml/elements/LayerScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/LayerScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_1e
    const-string v1, "GLLayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    new-instance v0, Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/GLLayerScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_1f
    const-string v1, "Array"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    new-instance v0, Lcom/miui/maml/elements/ScreenElementArray;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ScreenElementArray;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_20
    const-string v1, "CanvasDrawer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v0, Lcom/miui/maml/elements/CanvasDrawerElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/CanvasDrawerElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_21
    const-string v1, "Function"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v0, Lcom/miui/maml/elements/FunctionElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/FunctionElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_22
    const-string v1, "AnimConfig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    new-instance v0, Lcom/miui/maml/elements/AnimConfigElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/AnimConfigElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_23
    const-string v1, "AnimState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    new-instance v0, Lcom/miui/maml/elements/AnimStateElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/AnimStateElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_24
    const-string v1, "Video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_25

    new-instance v0, Lcom/miui/maml/elements/video/VideoElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/video/VideoElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_25
    const-string v1, "Pbr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElementFactory;->createPbrElement(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p1

    return-object p1

    :cond_26
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;

    invoke-interface {v0, p1, p2}, Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;->onCreateInstance(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p1

    return-object p1

    :cond_27
    :goto_0
    new-instance v0, Lcom/miui/maml/elements/ElementGroup;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    return-object v0

    :cond_28
    :goto_1
    new-instance v0, Lcom/miui/maml/elements/ImageNumberScreenElement;

    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ImageNumberScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string p2, "ScreenElementFactory"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to create element."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCallback()Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;

    return-object v0
.end method

.method public setCallback(Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;

    return-void
.end method
