.class public Lcom/miui/maml/elements/AnimConfigElement;
.super Lcom/miui/maml/elements/ConfigElement;
.source "AnimConfigElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/AnimConfigElement$ConfigData;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "AnimConfig"


# instance fields
.field private mConfigs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/elements/AnimConfigElement$ConfigData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ConfigElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    iget-boolean p2, p0, Lcom/miui/maml/elements/AnimConfigElement;->mHasName:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/miui/maml/elements/AnimConfigElement;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/maml/elements/AnimConfigElement;->mName:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/miui/maml/elements/AnimConfigElement;->getConfigData(Lorg/w3c/dom/Element;Ljava/lang/String;)Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    const-string v2, "Special"

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "name"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/maml/elements/AnimConfigElement;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->getConfigData(Lorg/w3c/dom/Element;Ljava/lang/String;)Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getConfigData(Lorg/w3c/dom/Element;Ljava/lang/String;)Lcom/miui/maml/elements/AnimConfigElement$ConfigData;
    .locals 7

    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimConfigElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    new-instance v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;-><init>(Lcom/miui/maml/elements/AnimConfigElement;Lcom/miui/maml/elements/AnimConfigElement$1;)V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-interface {v2, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v1, p2, v5, v6}, Lcom/miui/maml/elements/AnimConfigElement;->updateConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;Ljava/lang/String;[Lcom/miui/maml/data/Expression;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getConfigValueFromVarToSet(Lcom/miui/maml/data/IndexedVariable;Landroidx/collection/ArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/maml/data/IndexedVariable;",
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {p2, v2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private getEase(Lcom/miui/maml/data/IndexedVariable;)Lmiuix/animation/utils/EaseManager$EaseStyle;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    instance-of v1, p1, [D

    if-eqz v1, :cond_2

    check-cast p1, [D

    array-length v1, p1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    double-to-int v1, v1

    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v2, v2, [F

    array-length v4, p1

    :goto_1
    if-ge v3, v4, :cond_1

    add-int/lit8 v5, v3, -0x1

    aget-wide v6, p1, v3

    double-to-float v6, v6

    aput v6, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-static {v1, v2}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method private removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "onUpdate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "delay"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "fromSpeed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "ease"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "property"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "onBegin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_6
    const-string v0, "onComplete"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p2, v2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iput-object v2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    :cond_1
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p2, :cond_6

    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    iput-object v2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    goto/16 :goto_2

    :pswitch_1
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p2, v2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iput-object v2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    :cond_2
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p2, :cond_6

    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    iput-object v2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    goto :goto_2

    :pswitch_2
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p2, :cond_3

    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p2, v2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iput-object v2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    :cond_3
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p2, :cond_6

    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    iput-object v2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    goto :goto_2

    :pswitch_3
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p2, :cond_4

    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p2, v2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iput-object v2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    :cond_4
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p2, :cond_6

    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    iput-object v2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lcom/miui/maml/data/IndexedVariable;

    goto :goto_2

    :pswitch_4
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p2, :cond_5

    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p2, v2}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iput-object v2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    :cond_5
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p2, :cond_6

    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    iput-object v2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lcom/miui/maml/data/IndexedVariable;

    goto :goto_2

    :pswitch_5
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p2, :cond_6

    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    iput-object v2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    goto :goto_2

    :pswitch_6
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    if-eqz p2, :cond_6

    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    iput-object v2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    :cond_6
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ea0abc8 -> :sswitch_6
        -0x50a5b1f6 -> :sswitch_5
        -0x3b32222b -> :sswitch_4
        0x2f63ee -> :sswitch_3
        0x42432bd -> :sswitch_2
        0x5b0b983 -> :sswitch_1
        0x5cf50f88 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;Ljava/lang/String;[Lcom/miui/maml/data/Expression;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimConfigElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "onUpdate"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "delay"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v3

    goto :goto_1

    :sswitch_2
    const-string v1, "fromSpeed"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v2

    goto :goto_1

    :sswitch_3
    const-string v1, "ease"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "property"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x3

    goto :goto_1

    :sswitch_5
    const-string v1, "onBegin"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    goto :goto_1

    :sswitch_6
    const-string v1, "onComplete"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p3, -0x1

    :goto_1
    const/4 v1, 0x0

    packed-switch p3, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    if-nez p3, :cond_1

    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    invoke-direct {p3, p2, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    :cond_1
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    if-nez p3, :cond_2

    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".length"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, v0, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    :cond_2
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    move p1, v2

    move v3, p1

    goto/16 :goto_2

    :pswitch_1
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    if-nez p3, :cond_3

    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    invoke-direct {p3, p2, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    :cond_3
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    if-nez p3, :cond_4

    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".length"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, v0, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    :cond_4
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    move p1, v2

    move v3, p1

    goto/16 :goto_2

    :pswitch_2
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    if-nez p3, :cond_5

    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    invoke-direct {p3, p2, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    :cond_5
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    if-nez p3, :cond_6

    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".length"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, v0, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    :cond_6
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallbackLen:Lcom/miui/maml/data/IndexedVariable;

    move p1, v2

    move v3, p1

    goto/16 :goto_2

    :pswitch_3
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    if-nez p3, :cond_7

    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    invoke-direct {p3, p2, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    :cond_7
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lcom/miui/maml/data/IndexedVariable;

    if-nez p3, :cond_8

    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".length"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, v0, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lcom/miui/maml/data/IndexedVariable;

    :cond_8
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mPropertyLen:Lcom/miui/maml/data/IndexedVariable;

    move p1, v2

    move v3, p1

    goto :goto_2

    :pswitch_4
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    if-nez p3, :cond_9

    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    invoke-direct {p3, p2, v0, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    :cond_9
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lcom/miui/maml/data/IndexedVariable;

    if-nez p3, :cond_a

    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".length"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, v0, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lcom/miui/maml/data/IndexedVariable;

    :cond_a
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEaseLen:Lcom/miui/maml/data/IndexedVariable;

    move p1, v3

    move v3, v2

    goto :goto_2

    :pswitch_5
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    if-nez p3, :cond_b

    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    invoke-direct {p3, p2, v0, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    :cond_b
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    move p1, v2

    goto :goto_2

    :pswitch_6
    iget-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    if-nez p3, :cond_c

    new-instance p3, Lcom/miui/maml/data/IndexedVariable;

    invoke-direct {p3, p2, v0, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p3, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    :cond_c
    iget-object p2, p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    move p1, v2

    :goto_2
    array-length p3, p4

    if-lez p3, :cond_13

    if-eqz v3, :cond_d

    aget-object p1, p4, v2

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_5

    :cond_d
    if-eqz p1, :cond_f

    new-array p1, p3, [D

    :goto_3
    if-ge v2, p3, :cond_11

    aget-object v0, p4, v2

    if-eqz v0, :cond_e

    aget-object v0, p4, v2

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    aput-wide v3, p1, v2

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_f
    new-array p1, p3, [Ljava/lang/String;

    :goto_4
    if-ge v2, p3, :cond_11

    aget-object v0, p4, v2

    if-eqz v0, :cond_10

    aget-object v0, p4, v2

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_11
    :goto_5
    invoke-virtual {p2, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    if-eqz v1, :cond_12

    int-to-double p1, p3

    invoke-virtual {v1, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_12
    return-void

    :cond_13
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ea0abc8 -> :sswitch_6
        -0x50a5b1f6 -> :sswitch_5
        -0x3b32222b -> :sswitch_4
        0x2f63ee -> :sswitch_3
        0x42432bd -> :sswitch_2
        0x5b0b983 -> :sswitch_1
        0x5cf50f88 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clearConfigData()V
    .locals 3

    iget-object v0, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    const-string v2, "fromSpeed"

    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    const-string v2, "delay"

    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    const-string v2, "ease"

    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    const-string v2, "property"

    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    const-string v2, "onUpdate"

    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    const-string v2, "onBegin"

    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    const-string v2, "onComplete"

    invoke-direct {p0, v1, v2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method protected evaluateConfigValue()V
    .locals 5

    iget-object v0, p0, Lcom/miui/maml/elements/AnimConfigElement;->mTempValueList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    new-instance v2, Lcom/miui/maml/folme/ConfigValue;

    invoke-direct {v2}, Lcom/miui/maml/folme/ConfigValue;-><init>()V

    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mDelay:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v3}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v3

    double-to-long v3, v3

    iput-wide v3, v2, Lcom/miui/maml/folme/ConfigValue;->mDelay:J

    :cond_0
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mFromSpeed:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v3}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v3

    double-to-long v3, v3

    long-to-float v3, v3

    iput v3, v2, Lcom/miui/maml/folme/ConfigValue;->mFromSpeed:F

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/miui/maml/folme/ConfigValue;->mHasFromSpeed:Z

    :cond_1
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mEase:Lcom/miui/maml/data/IndexedVariable;

    invoke-direct {p0, v3}, Lcom/miui/maml/elements/AnimConfigElement;->getEase(Lcom/miui/maml/data/IndexedVariable;)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/maml/folme/ConfigValue;->mEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    :cond_2
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mProperty:Lcom/miui/maml/data/IndexedVariable;

    iget-object v4, v2, Lcom/miui/maml/folme/ConfigValue;->mRelatedProperty:Landroidx/collection/ArraySet;

    invoke-direct {p0, v3, v4}, Lcom/miui/maml/elements/AnimConfigElement;->getConfigValueFromVarToSet(Lcom/miui/maml/data/IndexedVariable;Landroidx/collection/ArraySet;)V

    :cond_3
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnBeginCallback:Lcom/miui/maml/data/IndexedVariable;

    iget-object v4, v2, Lcom/miui/maml/folme/ConfigValue;->mOnBeginCallback:Landroidx/collection/ArraySet;

    invoke-direct {p0, v3, v4}, Lcom/miui/maml/elements/AnimConfigElement;->getConfigValueFromVarToSet(Lcom/miui/maml/data/IndexedVariable;Landroidx/collection/ArraySet;)V

    :cond_4
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnCompleteCallback:Lcom/miui/maml/data/IndexedVariable;

    iget-object v4, v2, Lcom/miui/maml/folme/ConfigValue;->mOnCompleteCallback:Landroidx/collection/ArraySet;

    invoke-direct {p0, v3, v4}, Lcom/miui/maml/elements/AnimConfigElement;->getConfigValueFromVarToSet(Lcom/miui/maml/data/IndexedVariable;Landroidx/collection/ArraySet;)V

    :cond_5
    iget-object v3, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v3, :cond_6

    iget-object v1, v1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;->mOnUpdateCallback:Lcom/miui/maml/data/IndexedVariable;

    iget-object v3, v2, Lcom/miui/maml/folme/ConfigValue;->mOnUpdateCallback:Landroidx/collection/ArraySet;

    invoke-direct {p0, v1, v3}, Lcom/miui/maml/elements/AnimConfigElement;->getConfigValueFromVarToSet(Lcom/miui/maml/data/IndexedVariable;Landroidx/collection/ArraySet;)V

    :cond_6
    iget-object v1, p0, Lcom/miui/maml/elements/AnimConfigElement;->mTempValueList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    return-void
.end method

.method public removeConfigData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimConfigElement;->removeConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateConfigData(Ljava/lang/String;Ljava/lang/String;[Lcom/miui/maml/data/Expression;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/maml/elements/AnimConfigElement$ConfigData;-><init>(Lcom/miui/maml/elements/AnimConfigElement;Lcom/miui/maml/elements/AnimConfigElement$1;)V

    iget-object v1, p0, Lcom/miui/maml/elements/AnimConfigElement;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/miui/maml/elements/AnimConfigElement;->updateConfigIndexVariable(Lcom/miui/maml/elements/AnimConfigElement$ConfigData;Ljava/lang/String;Ljava/lang/String;[Lcom/miui/maml/data/Expression;)V

    return-void
.end method
