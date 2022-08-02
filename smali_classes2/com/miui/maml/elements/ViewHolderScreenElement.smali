.class public abstract Lcom/miui/maml/elements/ViewHolderScreenElement;
.super Lcom/miui/maml/elements/ElementGroupRC;
.source "ViewHolderScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;
    }
.end annotation


# static fields
.field protected static final LAYER_BOTTOM:I = 0x2

.field protected static final LAYER_TOP:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "MAML ViewHolderScreenElement"


# instance fields
.field private mHardware:Z

.field protected mLayer:I

.field private mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field protected mUpdatePosition:Z

.field protected mUpdateSize:Z

.field protected mUpdateTranslation:Z

.field protected mViewAdded:Z


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroupRC;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    const/4 p2, 0x2

    iput p2, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayer:I

    const-string v0, "layerType"

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hardware"

    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mHardware:Z

    const-string v1, "updatePosition"

    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getAttrAsBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdatePosition:Z

    const-string v1, "updateSize"

    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getAttrAsBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdateSize:Z

    const-string v1, "updateTranslation"

    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getAttrAsBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdateTranslation:Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "top"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "bottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput p2, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayer:I

    goto :goto_1

    :cond_1
    :goto_0
    iput v2, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayer:I

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getLayoutParam()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method private final finishView()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mViewAdded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mViewAdded:Z

    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->onViewRemoved(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static getAttrAsBoolean(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final initView()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mViewAdded:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getViewManager()Lcom/miui/maml/util/MamlViewManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/maml/elements/ViewHolderScreenElement;->onUpdateView(Landroid/view/View;)V

    iget v2, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayer:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {v0, v1, v2, v4}, Lcom/miui/maml/util/MamlViewManager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {v0, v1, v2}, Lcom/miui/maml/util/MamlViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mHardware:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v1, v3, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mViewAdded:Z

    invoke-virtual {p0, v1}, Lcom/miui/maml/elements/ViewHolderScreenElement;->onViewAdded(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getWidth()F

    move-result v0

    float-to-int v0, v0

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x1

    if-eq v1, v0, :cond_0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getHeight()F

    move-result v1

    float-to-int v1, v1

    iget v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v1, :cond_1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v0, v2

    :cond_1
    return v0
.end method


# virtual methods
.method protected doTick(J)V
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mController:Lcom/miui/maml/RendererController;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroupRC;->doTick(J)V

    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;->doTickSelf(J)V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->updateView()V

    return-void
.end method

.method protected doTickSelf(J)V
    .locals 4

    iget-object v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mAnimations:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v3, p1, p2}, Lcom/miui/maml/animation/BaseAnimation;->tick(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->evaluateAlpha()I

    move-result p1

    iput p1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mAlpha:I

    iget p1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mAlpha:I

    if-gez p1, :cond_1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mAlpha:I

    :goto_1
    iput v1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mAlpha:I

    iget-object p1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mTickListener:Lcom/miui/maml/elements/FunctionElement;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mTickListener:Lcom/miui/maml/elements/FunctionElement;

    invoke-virtual {p1}, Lcom/miui/maml/elements/FunctionElement;->perform()V

    :cond_2
    return-void
.end method

.method public finish()V
    .locals 0

    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroupRC;->finish()V

    invoke-direct {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->finishView()V

    return-void
.end method

.method protected getLayoutParam()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected abstract getView()Landroid/view/View;
.end method

.method public init()V
    .locals 2

    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroupRC;->init()V

    iget-object v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getViewManager()Lcom/miui/maml/util/MamlViewManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->initView()V

    goto :goto_0

    :cond_0
    const-string v0, "MAML ViewHolderScreenElement"

    const-string v1, "ViewManager must be set before init"

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected isViewAdded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mViewAdded:Z

    return v0
.end method

.method protected onControllerCreated(Lcom/miui/maml/RendererController;)V
    .locals 2

    new-instance v0, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;-><init>(Lcom/miui/maml/elements/ViewHolderScreenElement;Lcom/miui/maml/elements/ViewHolderScreenElement$1;)V

    invoke-virtual {p1, v0}, Lcom/miui/maml/RendererController;->setListener(Lcom/miui/maml/RendererController$Listener;)V

    return-void
.end method

.method protected onUpdateView(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdatePosition:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getAbsoluteLeft()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getAbsoluteTop()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdateTranslation:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getPivotX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getPivotY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getRotation()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getRotationX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getRotationY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getScaleX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getScaleY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdateSize:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onVisibilityChange(Z)V
    .locals 1

    new-instance v0, Lcom/miui/maml/elements/ViewHolderScreenElement$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/elements/ViewHolderScreenElement$2;-><init>(Lcom/miui/maml/elements/ViewHolderScreenElement;Z)V

    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->postInMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public setHardwareLayer(Z)V
    .locals 1

    new-instance v0, Lcom/miui/maml/elements/ViewHolderScreenElement$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/elements/ViewHolderScreenElement$1;-><init>(Lcom/miui/maml/elements/ViewHolderScreenElement;Z)V

    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->postInMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected updateView()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdatePosition:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdateTranslation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdateSize:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mViewAdded:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->onUpdateView(Landroid/view/View;)V

    :cond_1
    return-void
.end method
