.class public Lcom/miui/maml/data/JsonFunctions;
.super Lcom/miui/maml/data/Expression$FunctionImpl;
.source "JsonFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/JsonFunctions$Fun;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# instance fields
.field private final mFun:Lcom/miui/maml/data/JsonFunctions$Fun;


# direct methods
.method private constructor <init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/miui/maml/data/Expression$FunctionImpl;-><init>(I)V

    iput-object p1, p0, Lcom/miui/maml/data/JsonFunctions;->mFun:Lcom/miui/maml/data/JsonFunctions$Fun;

    return-void
.end method

.method public static load()V
    .locals 5

    const-string v0, "jsonGetString"

    new-instance v1, Lcom/miui/maml/data/JsonFunctions;

    sget-object v2, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_STRING:Lcom/miui/maml/data/JsonFunctions$Fun;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "jsonGetBoolean"

    new-instance v1, Lcom/miui/maml/data/JsonFunctions;

    sget-object v2, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_BOOLEAN:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "jsonGetInt"

    new-instance v1, Lcom/miui/maml/data/JsonFunctions;

    sget-object v2, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_INT:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "jsonGetObject"

    new-instance v1, Lcom/miui/maml/data/JsonFunctions;

    sget-object v2, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "jsonGetArray"

    new-instance v1, Lcom/miui/maml/data/JsonFunctions;

    sget-object v2, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_ARRAY:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "jsonArrayGetIndex"

    new-instance v1, Lcom/miui/maml/data/JsonFunctions;

    sget-object v2, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_ARRAY_GET_INDEX:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "newJsonObject"

    new-instance v1, Lcom/miui/maml/data/JsonFunctions;

    sget-object v2, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_NEW_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "newJsonArray"

    new-instance v1, Lcom/miui/maml/data/JsonFunctions;

    sget-object v2, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_NEW_JSON_ARRAY:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "getJsonArrayLength"

    new-instance v1, Lcom/miui/maml/data/JsonFunctions;

    sget-object v2, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_ARRAY_LENGTH:Lcom/miui/maml/data/JsonFunctions$Fun;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "jsonObjectEquals"

    new-instance v1, Lcom/miui/maml/data/JsonFunctions;

    sget-object v2, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_OBJECT_EQUALS:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "strToJson"

    new-instance v1, Lcom/miui/maml/data/JsonFunctions;

    sget-object v2, Lcom/miui/maml/data/JsonFunctions$Fun;->TO_JSON_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "jsonToStr"

    new-instance v1, Lcom/miui/maml/data/JsonFunctions;

    sget-object v2, Lcom/miui/maml/data/JsonFunctions$Fun;->TO_STR_FROM_JSON:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "isJsonObject"

    new-instance v1, Lcom/miui/maml/data/JsonFunctions;

    sget-object v2, Lcom/miui/maml/data/JsonFunctions$Fun;->IS_JSON_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "isJsonArray"

    new-instance v1, Lcom/miui/maml/data/JsonFunctions;

    sget-object v2, Lcom/miui/maml/data/JsonFunctions$Fun;->IS_JSON_ARRAY:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    return-void
.end method


# virtual methods
.method public evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D
    .locals 6

    sget-object p2, Lcom/miui/maml/data/JsonFunctions$1;->$SwitchMap$com$miui$maml$data$JsonFunctions$Fun:[I

    iget-object v0, p0, Lcom/miui/maml/data/JsonFunctions;->mFun:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-virtual {v0}, Lcom/miui/maml/data/JsonFunctions$Fun;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    aget-object p2, p1, v5

    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_4

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :goto_0
    return-wide v1

    :pswitch_1
    aget-object p2, p1, v5

    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_4

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    int-to-double p1, p1

    return-wide p1

    :pswitch_2
    aget-object p1, p1, v5

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateJsonArray()Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-wide v1, v3

    :goto_1
    return-wide v1

    :pswitch_3
    aget-object p1, p1, v5

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-wide v1, v3

    :goto_2
    return-wide v1

    :pswitch_4
    aget-object p2, p1, v5

    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    move-result-object p2

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    if-ne p2, p1, :cond_3

    goto :goto_3

    :cond_3
    move-wide v1, v3

    :goto_3
    return-wide v1

    :pswitch_5
    aget-object p1, p1, v5

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateJsonArray()Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    int-to-double p1, p1

    return-wide p1

    :cond_4
    :goto_4
    return-wide v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public evaluateJsonArray([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Lorg/json/JSONArray;
    .locals 2

    sget-object v0, Lcom/miui/maml/data/JsonFunctions$1;->$SwitchMap$com$miui$maml$data$JsonFunctions$Fun:[I

    iget-object v1, p0, Lcom/miui/maml/data/JsonFunctions;->mFun:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-virtual {v1}, Lcom/miui/maml/data/JsonFunctions$Fun;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    return-object p1

    :pswitch_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/miui/maml/data/Expression$FunctionImpl;->evaluateJsonArray([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public evaluateJsonObject([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Lorg/json/JSONObject;
    .locals 3

    sget-object v0, Lcom/miui/maml/data/JsonFunctions$1;->$SwitchMap$com$miui$maml$data$JsonFunctions$Fun:[I

    iget-object v1, p0, Lcom/miui/maml/data/JsonFunctions;->mFun:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-virtual {v1}, Lcom/miui/maml/data/JsonFunctions$Fun;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    aget-object v0, p1, v2

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateJsonArray()Lorg/json/JSONArray;

    move-result-object v0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int v1, v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    :try_start_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p1

    :pswitch_1
    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2

    :pswitch_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1

    :pswitch_3
    aget-object v0, p1, v2

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :catch_1
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/data/Expression$FunctionImpl;->evaluateJsonObject([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/miui/maml/data/JsonFunctions$1;->$SwitchMap$com$miui$maml$data$JsonFunctions$Fun:[I

    iget-object v1, p0, Lcom/miui/maml/data/JsonFunctions;->mFun:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-virtual {v1}, Lcom/miui/maml/data/JsonFunctions$Fun;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2

    :pswitch_1
    aget-object p2, p1, v1

    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/JsonFunctions;->evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 0

    return-void
.end method
