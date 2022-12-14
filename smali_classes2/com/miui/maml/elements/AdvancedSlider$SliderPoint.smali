.class Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;
.super Lcom/miui/maml/elements/ElementGroup;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliderPoint"
.end annotation


# instance fields
.field private mCurrentStateElements:Lcom/miui/maml/elements/ScreenElement;

.field protected mIsAlignChildren:Z

.field protected mName:Ljava/lang/String;

.field protected mNormalSound:Ljava/lang/String;

.field protected mNormalStateElements:Lcom/miui/maml/elements/ElementGroup;

.field private mNormalStateTrigger:Lcom/miui/maml/CommandTrigger;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mPointStateVar:Lcom/miui/maml/data/IndexedVariable;

.field protected mPressedSound:Ljava/lang/String;

.field protected mPressedStateElements:Lcom/miui/maml/elements/ElementGroup;

.field private mPressedStateTrigger:Lcom/miui/maml/CommandTrigger;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected mReachedSound:Ljava/lang/String;

.field private mReachedStateElements:Lcom/miui/maml/elements/ElementGroup;

.field private mReachedStateTrigger:Lcom/miui/maml/CommandTrigger;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mState:Lcom/miui/maml/elements/AdvancedSlider$State;

.field final synthetic this$0:Lcom/miui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-direct {p0, p2, p3}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    sget-object p1, Lcom/miui/maml/elements/AdvancedSlider$State;->Invalid:Lcom/miui/maml/elements/AdvancedSlider$State;

    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mState:Lcom/miui/maml/elements/AdvancedSlider$State;

    invoke-direct {p0, p2, p4}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->load(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 3

    const-string p2, "name"

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mName:Ljava/lang/String;

    const-string p2, "normalSound"

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mNormalSound:Ljava/lang/String;

    const-string p2, "pressedSound"

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mPressedSound:Ljava/lang/String;

    const-string p2, "reachedSound"

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mReachedSound:Ljava/lang/String;

    const-string p2, "NormalState"

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->loadTrigger(Lorg/w3c/dom/Element;Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateTrigger:Lcom/miui/maml/CommandTrigger;

    const-string p2, "PressedState"

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->loadTrigger(Lorg/w3c/dom/Element;Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateTrigger:Lcom/miui/maml/CommandTrigger;

    const-string p2, "ReachedState"

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->loadTrigger(Lorg/w3c/dom/Element;Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateTrigger:Lcom/miui/maml/CommandTrigger;

    iget-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p2, v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mPointStateVar:Lcom/miui/maml/data/IndexedVariable;

    :cond_0
    const-string p2, "alignChildren"

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mIsAlignChildren:Z

    return-void
.end method

.method private loadTrigger(Lorg/w3c/dom/Element;Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;
    .locals 0

    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-static {p1, p2}, Lcom/miui/maml/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/CommandTrigger;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mIsAlignChildren:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->getLeft()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->getTop()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->doRender(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected getParentLeft()F
    .locals 3

    iget-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mIsAlignChildren:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->getLeft()F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mParent:Lcom/miui/maml/elements/ElementGroup;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mParent:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getParentLeft()F

    move-result v1

    :goto_1
    add-float/2addr v0, v1

    return v0
.end method

.method protected getParentTop()F
    .locals 3

    iget-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mIsAlignChildren:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->getTop()F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mParent:Lcom/miui/maml/elements/ElementGroup;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mParent:Lcom/miui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getParentTop()F

    move-result v1

    :goto_1
    add-float/2addr v0, v1

    return v0
.end method

.method public getState()Lcom/miui/maml/elements/AdvancedSlider$State;
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mState:Lcom/miui/maml/elements/AdvancedSlider$State;

    return-object v0
.end method

.method public init()V
    .locals 2

    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->init()V

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lcom/miui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ElementGroup;->show(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lcom/miui/maml/elements/ElementGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ElementGroup;->show(Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lcom/miui/maml/elements/ElementGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ElementGroup;->show(Z)V

    :cond_2
    sget-object v0, Lcom/miui/maml/elements/AdvancedSlider$State;->Normal:Lcom/miui/maml/elements/AdvancedSlider$State;

    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->init()V

    :cond_3
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->init()V

    :cond_4
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->init()V

    :cond_5
    return-void
.end method

.method protected onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;
    .locals 2

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NormalState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/miui/maml/elements/ElementGroup;

    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {v0, p1, v1}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lcom/miui/maml/elements/ElementGroup;

    return-object v0

    :cond_0
    const-string v1, "PressedState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/miui/maml/elements/ElementGroup;

    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {v0, p1, v1}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lcom/miui/maml/elements/ElementGroup;

    return-object v0

    :cond_1
    const-string v1, "ReachedState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/miui/maml/elements/ElementGroup;

    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {v0, p1, v1}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lcom/miui/maml/elements/ElementGroup;

    return-object v0

    :cond_2
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p1

    return-object p1
.end method

.method protected onStateChange(Lcom/miui/maml/elements/AdvancedSlider$State;Lcom/miui/maml/elements/AdvancedSlider$State;)V
    .locals 1

    sget-object v0, Lcom/miui/maml/elements/AdvancedSlider$1;->$SwitchMap$com$miui$maml$elements$AdvancedSlider$State:[I

    invoke-virtual {p2}, Lcom/miui/maml/elements/AdvancedSlider$State;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/maml/CommandTrigger;->perform()V

    :cond_0
    const-string p1, "reached"

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->performAction(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/miui/maml/CommandTrigger;->perform()V

    :cond_1
    const-string p2, "pressed"

    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->performAction(Ljava/lang/String;)V

    sget-object p2, Lcom/miui/maml/elements/AdvancedSlider$1;->$SwitchMap$com$miui$maml$elements$AdvancedSlider$State:[I

    invoke-virtual {p1}, Lcom/miui/maml/elements/AdvancedSlider$State;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "pressed_reached"

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->performAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "pressed_normal"

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->performAction(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateTrigger:Lcom/miui/maml/CommandTrigger;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/miui/maml/CommandTrigger;->perform()V

    :cond_4
    const-string p1, "normal"

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->performAction(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mState:Lcom/miui/maml/elements/AdvancedSlider$State;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mState:Lcom/miui/maml/elements/AdvancedSlider$State;

    const/4 v1, 0x0

    sget-object v2, Lcom/miui/maml/elements/AdvancedSlider$1;->$SwitchMap$com$miui$maml$elements$AdvancedSlider$State:[I

    invoke-virtual {p1}, Lcom/miui/maml/elements/AdvancedSlider$State;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    move p1, v3

    move v4, p1

    goto :goto_6

    :pswitch_0
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lcom/miui/maml/elements/ElementGroup;

    if-eqz p1, :cond_1

    move-object v1, p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lcom/miui/maml/elements/ElementGroup;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lcom/miui/maml/elements/ElementGroup;

    :goto_0
    move-object v1, p1

    :goto_1
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lcom/miui/maml/elements/ElementGroup;

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_2

    :cond_3
    move p1, v3

    :goto_2
    const/4 v4, 0x2

    goto :goto_6

    :pswitch_1
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lcom/miui/maml/elements/ElementGroup;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lcom/miui/maml/elements/ElementGroup;

    :goto_3
    move-object v1, p1

    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lcom/miui/maml/elements/ElementGroup;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    invoke-static {p1}, Lcom/miui/maml/elements/AdvancedSlider;->access$500(Lcom/miui/maml/elements/AdvancedSlider;)Z

    move-result p1

    if-nez p1, :cond_5

    move p1, v2

    goto :goto_4

    :cond_5
    move p1, v3

    :goto_4
    move v4, v2

    goto :goto_6

    :pswitch_2
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lcom/miui/maml/elements/ElementGroup;

    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lcom/miui/maml/elements/ElementGroup;

    if-eqz p1, :cond_6

    move p1, v2

    goto :goto_5

    :cond_6
    move p1, v3

    :goto_5
    move v4, v3

    :goto_6
    iget-object v5, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lcom/miui/maml/elements/ScreenElement;

    if-eq v5, v1, :cond_9

    if-eqz v5, :cond_7

    invoke-virtual {v5, v3}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1, v2}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    :cond_8
    iput-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lcom/miui/maml/elements/ScreenElement;

    :cond_9
    if-eqz v1, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->reset()V

    :cond_a
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mPointStateVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p1, :cond_b

    int-to-double v1, v4

    invoke-virtual {p1, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_b
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mState:Lcom/miui/maml/elements/AdvancedSlider$State;

    invoke-virtual {p0, v0, p1}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->onStateChange(Lcom/miui/maml/elements/AdvancedSlider$State;Lcom/miui/maml/elements/AdvancedSlider$State;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
