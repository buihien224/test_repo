.class Lcom/miui/maml/util/IntentInfo$Extra;
.super Ljava/lang/Object;
.source "IntentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/IntentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Extra"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Extra"


# instance fields
.field private mCondition:Lcom/miui/maml/data/Expression;

.field private mExpression:Lcom/miui/maml/data/Expression;

.field private mName:Ljava/lang/String;

.field protected mType:Lcom/miui/maml/util/IntentInfo$Type;

.field final synthetic this$0:Lcom/miui/maml/util/IntentInfo;


# direct methods
.method public constructor <init>(Lcom/miui/maml/util/IntentInfo;Lorg/w3c/dom/Element;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->this$0:Lcom/miui/maml/util/IntentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/miui/maml/util/IntentInfo$Type;->DOUBLE:Lcom/miui/maml/util/IntentInfo$Type;

    iput-object p1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    invoke-direct {p0, p2}, Lcom/miui/maml/util/IntentInfo$Extra;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "TaskVariable"

    const-string v0, "node is null"

    invoke-static {p1, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mName:Ljava/lang/String;

    const-string v0, "type"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/miui/maml/util/IntentInfo$Type;->STRING:Lcom/miui/maml/util/IntentInfo$Type;

    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    goto :goto_1

    :cond_1
    const-string v1, "int"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "integer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "long"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/miui/maml/util/IntentInfo$Type;->LONG:Lcom/miui/maml/util/IntentInfo$Type;

    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    goto :goto_1

    :cond_3
    const-string v1, "float"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/miui/maml/util/IntentInfo$Type;->FLOAT:Lcom/miui/maml/util/IntentInfo$Type;

    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    goto :goto_1

    :cond_4
    const-string v1, "double"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/miui/maml/util/IntentInfo$Type;->DOUBLE:Lcom/miui/maml/util/IntentInfo$Type;

    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    goto :goto_1

    :cond_5
    const-string v1, "boolean"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/miui/maml/util/IntentInfo$Type;->BOOLEAN:Lcom/miui/maml/util/IntentInfo$Type;

    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    goto :goto_1

    :cond_6
    :goto_0
    sget-object v0, Lcom/miui/maml/util/IntentInfo$Type;->INT:Lcom/miui/maml/util/IntentInfo$Type;

    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->this$0:Lcom/miui/maml/util/IntentInfo;

    invoke-static {v0}, Lcom/miui/maml/util/IntentInfo;->access$000(Lcom/miui/maml/util/IntentInfo;)Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "expression"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mExpression:Lcom/miui/maml/data/Expression;

    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mExpression:Lcom/miui/maml/data/Expression;

    if-nez v0, :cond_8

    const-string v0, "TaskVariable"

    const-string v1, "invalid expression in IntentCommand"

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->this$0:Lcom/miui/maml/util/IntentInfo;

    invoke-static {v0}, Lcom/miui/maml/util/IntentInfo;->access$000(Lcom/miui/maml/util/IntentInfo;)Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "condition"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mCondition:Lcom/miui/maml/data/Expression;

    return-void
.end method


# virtual methods
.method public getDouble()D
    .locals 2

    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mExpression:Lcom/miui/maml/data/Expression;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mExpression:Lcom/miui/maml/data/Expression;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConditionTrue()Z
    .locals 6

    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo$Extra;->mCondition:Lcom/miui/maml/data/Expression;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
