.class public final Lcom/miui/maml/widget/edit/ParseEditMamlConfig;
.super Ljava/lang/Object;
.source "ParseEditMamlConfig.kt"


# static fields
.field private static final ATTR_DISPLAY_TITLE:Ljava/lang/String; = "displayTitle"

.field private static final ATTR_LOCALE:Ljava/lang/String; = "locale"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

.field private static final LOG_TAG:Ljava/lang/String; = "ParseEditMamlConfig"

.field private static final TAG_ALIGN_STYLE:Ljava/lang/String; = "Align"

.field private static final TAG_COLOR:Ljava/lang/String; = "Color"

.field private static final TAG_COLOR_GROUP:Ljava/lang/String; = "ColorGroup"

.field private static final TAG_CUSTOM_EDIT_LINK:Ljava/lang/String; = "CustomEditLink"

.field private static final TAG_FONT_CUSTOM:Ljava/lang/String; = "CustomFont"

.field private static final TAG_FONT_SIZE:Ljava/lang/String; = "FontSize"

.field private static final TAG_IMAGE_SELECT:Ljava/lang/String; = "ImageSelect"

.field private static final TAG_ITEM_FONT:Ljava/lang/String; = "Font"

.field private static final TAG_LANGUAGE:Ljava/lang/String; = "Language"

.field private static final TAG_ON_OFF:Ljava/lang/String; = "OnOff"

.field private static final TAG_SET_DATE:Ljava/lang/String; = "SetDate"

.field private static final TAG_TEXT:Ljava/lang/String; = "Text"

.field public static final VAR_CONFIG:Ljava/lang/String; = "var_config.xml"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    invoke-direct {v0}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;-><init>()V

    sput-object v0, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final parseVarXml(Ljava/io/InputStream;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/maml/widget/edit/BaseConfig;",
            ">;"
        }
    .end annotation

    const-string v0, "inputStream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    invoke-interface {v1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const-string p0, "WidgetConfig"

    const/4 v2, 0x2

    invoke-interface {v1, v2, v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/List;

    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const-string v3, "parser"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "CustomEditLink"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    invoke-direct {v3, v1}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readCustomEditLink(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/CustomEditLinkConfig;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_1
    const-string v4, "FontSize"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    invoke-direct {v3, v1}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readTextSize(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/TextSizeConfig;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_2
    const-string v4, "CustomFont"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    invoke-direct {v3, v1}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readTextFont(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/TextFontConfig;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    const-string v4, "OnOff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    invoke-direct {v3, v1}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readOnOff(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/OnOffConfig;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_4
    const-string v4, "Color"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    invoke-direct {v3, v1}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readColor(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/BaseConfig;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_5
    const-string v4, "Align"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    invoke-direct {v3, v1}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readAlignStyle(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/AlignStyleConfig;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_6
    const-string v4, "Text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    invoke-direct {v3, v1}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readText(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/EditTextConfig;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_7
    const-string v4, "ImageSelect"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    invoke-direct {v3, v1}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readImageSelect(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/ImageSelectConfig;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_8
    const-string v4, "SetDate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    invoke-direct {v3, v1}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readSetDate(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/DateSetConfig;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_9
    const-string v4, "ColorGroup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    invoke-direct {v3, v1}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readColorGroup(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/BaseConfig;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    :goto_1
    sget-object v3, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->INSTANCE:Lcom/miui/maml/widget/edit/ParseEditMamlConfig;

    invoke-direct {v3, v1}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->skip(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_3
    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "ParseEditMamlConfig"

    const-string v2, "load error."

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception p0

    const-string v1, "ParseEditMamlConfig"

    const-string v2, "load error.."

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x3da22704 -> :sswitch_9
        -0x267e48f0 -> :sswitch_8
        -0x1bc33de9 -> :sswitch_7
        0x27b94d -> :sswitch_6
        0x3c6a6e5 -> :sswitch_5
        0x3e43f43 -> :sswitch_4
        0x48c76f0 -> :sswitch_3
        0x1884c780 -> :sswitch_2
        0x19a50510 -> :sswitch_1
        0x7bab37d5 -> :sswitch_0
    .end sparse-switch
.end method

.method private final readAlignStyle(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/AlignStyleConfig;
    .locals 9

    const-string v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "displayTitle"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "default"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "from"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "to"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v6, Ljava/util/Map;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    :goto_0
    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    const-string v7, "Language"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, p1, v6}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_1

    :cond_0
    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    const-string v7, "Align"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto :goto_0

    :cond_2
    :goto_2
    new-instance p1, Lcom/miui/maml/widget/edit/AlignStyleConfig;

    const-string v7, "name"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    move-object v1, v6

    :goto_3
    invoke-static {v0}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v6

    invoke-static {v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v8

    move-object v2, p1

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/miui/maml/widget/edit/AlignStyleConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;III)V

    return-object p1
.end method

.method private final readColor(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/BaseConfig;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const-string v1, "Color"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "displayTitle"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v6, Ljava/util/Map;

    :catch_0
    :goto_0
    const/4 v7, 0x1

    const/4 v8, 0x3

    if-eq v5, v7, :cond_3

    if-ne v5, v2, :cond_1

    const-string v7, "Language"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, p1, v6}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    const-string v9, "parser.nextText()"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v7, 0x1e

    if-lt v5, v7, :cond_2

    goto :goto_2

    :cond_1
    if-ne v5, v8, :cond_2

    const-string v5, "Color"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_0

    :cond_3
    :goto_2
    const-string v2, "Color"

    invoke-interface {p1, v8, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/miui/maml/widget/edit/ColorConfig;

    const-string v2, "name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move-object v3, v6

    :goto_3
    invoke-direct {p1, v1, v4, v3, v0}, Lcom/miui/maml/widget/edit/ColorConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    check-cast p1, Lcom/miui/maml/widget/edit/BaseConfig;

    return-object p1
.end method

.method private final readColorGroup(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/BaseConfig;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    const-string v2, "ColorGroup"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v2, "name"

    invoke-interface {v0, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "displayTitle"

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v7, Ljava/util/Map;

    :catch_0
    :goto_0
    const/4 v8, 0x1

    const/4 v9, 0x3

    if-eq v6, v8, :cond_3

    if-ne v6, v3, :cond_1

    const-string v8, "Language"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object/from16 v8, p0

    invoke-direct {v8, v0, v7}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_1

    :cond_0
    move-object/from16 v8, p0

    :try_start_0
    const-string v10, "values"

    invoke-interface {v0, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "name"

    invoke-interface {v0, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "colors"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v10

    check-cast v13, Ljava/lang/CharSequence;

    const-string v10, ","

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x6

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v10

    new-instance v12, Lcom/miui/maml/widget/edit/ColorConfig;

    const-string v13, "varName"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v12, v11, v4, v4, v10}, Lcom/miui/maml/widget/edit/ColorConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v10, 0x1e

    if-lt v6, v10, :cond_2

    goto :goto_2

    :cond_1
    move-object/from16 v8, p0

    if-ne v6, v9, :cond_2

    const-string v6, "ColorGroup"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_0

    :cond_3
    move-object/from16 v8, p0

    :goto_2
    const-string v3, "ColorGroup"

    invoke-interface {v0, v9, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/maml/widget/edit/ColorGroupConfig;

    const-string v3, "name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move-object v4, v7

    :goto_3
    invoke-direct {v0, v2, v5, v4, v1}, Lcom/miui/maml/widget/edit/ColorGroupConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    check-cast v0, Lcom/miui/maml/widget/edit/BaseConfig;

    return-object v0
.end method

.method private final readCustomEditLink(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/CustomEditLinkConfig;
    .locals 3

    const-string v0, "deeplink"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "parser.getAttributeValue(null, \"deeplink\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/maml/widget/edit/CustomEditLinkConfig;

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/miui/maml/widget/edit/CustomEditLinkConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final readImageSelect(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/ImageSelectConfig;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    const-string v0, "ImageSelect"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "displayTitle"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "width"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "300"

    :goto_0
    const-string v6, "height"

    invoke-interface {p1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, "200"

    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v8, Ljava/util/Map;

    :catch_0
    :goto_2
    const/4 v9, 0x1

    const/4 v10, 0x3

    if-eq v7, v9, :cond_5

    if-ne v7, v1, :cond_3

    const-string v9, "Language"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-direct {p0, p1, v8}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_3

    :cond_2
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    const-string v11, "parser.nextText()"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v9, 0x32

    if-lt v7, v9, :cond_4

    goto :goto_4

    :cond_3
    if-ne v7, v10, :cond_4

    const-string v7, "ImageSelect"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto :goto_2

    :cond_5
    :goto_4
    const-string v1, "ImageSelect"

    invoke-interface {p1, v10, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/miui/maml/widget/edit/ImageSelectConfig;

    const-string v1, "name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v8, v2

    :cond_6
    invoke-static {v4}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v9

    move-object v1, p1

    move-object v2, v0

    move-object v4, v8

    move v6, v7

    move v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/widget/edit/ImageSelectConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;II)V

    return-object p1
.end method

.method private final readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "locale"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "displayTitle"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final readOnOff(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/OnOffConfig;
    .locals 9

    const-string v0, "OnOff"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "displayTitle"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    const-string v5, "default"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "1"

    :goto_0
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v6, Ljava/util/Map;

    :goto_1
    const/4 v7, 0x1

    const/4 v8, 0x3

    if-eq v5, v7, :cond_3

    if-ne v5, v1, :cond_1

    const-string v5, "Language"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, p1, v6}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_2

    :cond_1
    if-ne v5, v8, :cond_2

    const-string v5, "OnOff"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_1

    :cond_3
    :goto_3
    const-string v1, "OnOff"

    invoke-interface {p1, v8, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/miui/maml/widget/edit/OnOffConfig;

    const-string v1, "name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    move-object v2, v6

    :goto_4
    invoke-direct {p1, v0, v3, v2, v4}, Lcom/miui/maml/widget/edit/OnOffConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-object p1
.end method

.method private final readSetDate(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/DateSetConfig;
    .locals 12

    const-string v0, "SetDate"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "displayTitle"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "default"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "repeatVar"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "parser.getAttributeValue(null, \"repeatVar\")"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "repeat"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "0"

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v7, Ljava/util/Map;

    :goto_1
    const/4 v8, 0x1

    const/4 v10, 0x3

    if-eq v6, v8, :cond_3

    if-ne v6, v1, :cond_1

    const-string v6, "Language"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, p1, v7}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_2

    :cond_1
    if-ne v6, v10, :cond_2

    const-string v6, "SetDate"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_1

    :cond_3
    :goto_3
    const-string v1, "SetDate"

    invoke-interface {p1, v10, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    if-eqz v0, :cond_4

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_4

    :try_start_0
    move-object p1, v0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object p1

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    const-string v1, "ParseEditMamlConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readSetDate fail, default value invalid."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-wide v0, v10

    :goto_4
    new-instance p1, Lcom/miui/maml/widget/edit/DateSetConfig;

    const-string v6, "name"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v2

    goto :goto_5

    :cond_5
    move-object v6, v7

    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move-object v3, p1

    move-wide v7, v0

    invoke-direct/range {v3 .. v10}, Lcom/miui/maml/widget/edit/DateSetConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JLjava/lang/String;I)V

    return-object p1
.end method

.method private final readText(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/EditTextConfig;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    const-string v0, "Text"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "parser.getAttributeValue(null, ATTR_NAME)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "displayTitle"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    const-string v6, "editable"

    invoke-interface {p1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v4, "minLength"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "maxLength"

    invoke-interface {p1, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v9, Ljava/util/Map;

    :goto_0
    const/4 v10, 0x1

    const/4 v11, 0x3

    if-eq v8, v10, :cond_3

    if-ne v8, v1, :cond_1

    const-string v8, "Language"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-direct {p0, p1, v9}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    const-string v10, "parser.nextText()"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    const/16 v10, 0x64

    if-lt v8, v10, :cond_2

    goto :goto_2

    :cond_1
    if-ne v8, v11, :cond_2

    const-string v8, "Text"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    goto :goto_0

    :cond_3
    :goto_2
    const-string v1, "Text"

    invoke-interface {p1, v11, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/miui/maml/widget/edit/EditTextConfig;

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v9, v2

    :cond_4
    invoke-static {v4}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v10

    move-object v1, p1

    move-object v2, v0

    move-object v4, v9

    move v7, v8

    move v8, v10

    invoke-direct/range {v1 .. v8}, Lcom/miui/maml/widget/edit/EditTextConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;ZII)V

    return-object p1
.end method

.method private final readTextFont(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/TextFontConfig;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const-string v1, "CustomFont"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "displayTitle"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v6, Ljava/util/Map;

    :catch_0
    :goto_0
    const/4 v7, 0x1

    const/4 v8, 0x3

    if-eq v5, v7, :cond_3

    if-ne v5, v2, :cond_1

    const-string v7, "Language"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, p1, v6}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_1

    :cond_0
    const-string v7, "Font"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :try_start_0
    const-string v7, "fontPath"

    invoke-interface {p1, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "iconPath"

    invoke-interface {p1, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v7

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    move-object v10, v9

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v7, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    const-string v9, "android.util.Pair.create(fontPath, iconPath)"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v7, 0x1e

    if-lt v5, v7, :cond_2

    goto :goto_2

    :cond_1
    if-ne v5, v8, :cond_2

    const-string v5, "CustomFont"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_0

    :cond_3
    :goto_2
    const-string v2, "CustomFont"

    invoke-interface {p1, v8, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/miui/maml/widget/edit/TextFontConfig;

    const-string v2, "name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move-object v3, v6

    :goto_3
    invoke-direct {p1, v1, v4, v3, v0}, Lcom/miui/maml/widget/edit/TextFontConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    return-object p1
.end method

.method private final readTextSize(Lorg/xmlpull/v1/XmlPullParser;)Lcom/miui/maml/widget/edit/TextSizeConfig;
    .locals 9

    const-string v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "displayTitle"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "default"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "from"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "to"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v6, Ljava/util/Map;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    :goto_0
    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    const-string v7, "Language"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, p1, v6}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->readLocalMap(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    goto :goto_1

    :cond_0
    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    const-string v7, "FontSize"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto :goto_0

    :cond_2
    :goto_2
    new-instance p1, Lcom/miui/maml/widget/edit/TextSizeConfig;

    const-string v7, "name"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    move-object v1, v6

    :goto_3
    invoke-static {v0}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v6

    invoke-static {v2}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5}, Lcom/miui/maml/widget/edit/ParseEditMamlConfig;->string2int(Ljava/lang/String;)I

    move-result v8

    move-object v2, p1

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/miui/maml/widget/edit/TextSizeConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;III)V

    return-object p1
.end method

.method private final skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final string2int(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method
