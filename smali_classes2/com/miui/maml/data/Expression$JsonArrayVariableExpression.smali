.class Lcom/miui/maml/data/Expression$JsonArrayVariableExpression;
.super Lcom/miui/maml/data/Expression$VariableExpression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JsonArrayVariableExpression"
.end annotation


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/data/Expression$VariableExpression;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public evaluate()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public evaluateJsonArray()Lorg/json/JSONArray;
    .locals 2

    iget-object v0, p0, Lcom/miui/maml/data/Expression$JsonArrayVariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/json/JSONArray;

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/miui/maml/data/Expression$VariableExpression;->evaluateJsonArray()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression$JsonArrayVariableExpression;->evaluateJsonArray()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isNull()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/data/Expression$JsonArrayVariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->isNull()Z

    move-result v0

    return v0
.end method
