.class public Lcom/miui/maml/elements/TextScreenElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "TextScreenElement.java"


# static fields
.field private static final CRLF:Ljava/lang/String; = "\n"

.field private static final DEFAULT_SIZE:I = 0x12

.field private static final LOG_TAG:Ljava/lang/String; = "TextScreenElement"

.field private static final MARQUEE_FRAMERATE:I = 0x2d

.field private static final PADDING:I = 0x32

.field private static final PROPERTY_NAME_TEXT_COLOR:Ljava/lang/String; = "textColor"

.field private static final PROPERTY_NAME_TEXT_SHADOW_COLOR:Ljava/lang/String; = "textShadowColor"

.field private static final PROPERTY_NAME_TEXT_SIZE:Ljava/lang/String; = "textSize"

.field private static final RAW_CRLF:Ljava/lang/String; = "\\n"

.field public static final TAG_NAME:Ljava/lang/String; = "Text"

.field public static final TEXT_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field public static final TEXT_HEIGHT:Ljava/lang/String; = "text_height"

.field public static final TEXT_SHADOW_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field public static final TEXT_SIZE:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final TEXT_WIDTH:Ljava/lang/String; = "text_width"

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mColorParser:Lcom/miui/maml/util/ColorParser;

.field private mFontScaleEnabled:Z

.field protected mFormatter:Lcom/miui/maml/util/TextFormatter;

.field private mLayoutWidth:F

.field private mMarqueeGap:I

.field private mMarqueePos:F

.field private mMarqueeSpeed:I

.field private mMultiLine:Z

.field private final mPaint:Landroid/text/TextPaint;

.field private mPreviousTime:J

.field private mSetText:Ljava/lang/String;

.field private mShadowColorParser:Lcom/miui/maml/util/ColorParser;

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mShouldMarquee:Z

.field private mSpacingAdd:F

.field private mSpacingAddExp:Lcom/miui/maml/data/Expression;

.field private mSpacingMult:F

.field private mSpacingMultExp:Lcom/miui/maml/data/Expression;

.field private mText:Ljava/lang/String;

.field private mTextColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mTextFontName:Ljava/lang/String;

.field private mTextFontVar:Lcom/miui/maml/data/IndexedVariable;

.field private mTextHeight:F

.field private mTextHeightVar:Lcom/miui/maml/data/IndexedVariable;

.field private mTextLayout:Landroid/text/StaticLayout;

.field private mTextShadowColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mTextSize:F

.field private mTextSizeProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mTextWidth:F

.field private mTextWidthVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/maml/elements/TextScreenElement;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/miui/maml/elements/TextScreenElement$1;

    const-string v1, "textColor"

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/TextScreenElement$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/elements/TextScreenElement;->TEXT_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    new-instance v0, Lcom/miui/maml/elements/TextScreenElement$2;

    const-string v1, "textSize"

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/TextScreenElement$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/elements/TextScreenElement;->TEXT_SIZE:Lcom/miui/maml/folme/AnimatedProperty;

    new-instance v0, Lcom/miui/maml/elements/TextScreenElement$3;

    const-string v1, "textShadowColor"

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/TextScreenElement$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/elements/TextScreenElement;->TEXT_SHADOW_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "textColor"

    sget-object v2, Lcom/miui/maml/elements/TextScreenElement;->TEXT_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x3eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/miui/maml/elements/TextScreenElement;->TEXT_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/miui/maml/elements/TextScreenElement;->TEXT_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "textSize"

    sget-object v2, Lcom/miui/maml/elements/TextScreenElement;->TEXT_SIZE:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x3ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/miui/maml/elements/TextScreenElement;->TEXT_SIZE:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/miui/maml/elements/TextScreenElement;->TEXT_SIZE:Lcom/miui/maml/folme/AnimatedProperty;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "textShadowColor"

    sget-object v2, Lcom/miui/maml/elements/TextScreenElement;->TEXT_SHADOW_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x3f5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/miui/maml/elements/TextScreenElement;->TEXT_SHADOW_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/miui/maml/elements/TextScreenElement;->TEXT_SHADOW_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    iput p2, p0, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    const-wide/high16 v0, 0x4032000000000000L    # 18.0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/TextScreenElement;->scale(D)F

    move-result p2

    iput p2, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextSize:F

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextFontName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/maml/elements/TextScreenElement;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/TextScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    iget-object p0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/maml/elements/TextScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    iget-object p0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextSizeProperty:Lcom/miui/maml/folme/PropertyWrapper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/maml/elements/TextScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    iget-object p0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextShadowColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    return-object p0
.end method

.method private getAlignment()Landroid/text/Layout$Alignment;
    .locals 5

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget-object v1, Lcom/miui/maml/elements/TextScreenElement$4;->$SwitchMap$com$miui$maml$elements$ScreenElement$Align:[I

    iget-object v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement$Align;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "ALIGN_RIGHT"

    invoke-static {v1, v0, v2}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/Layout$Alignment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "TextScreenElement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invoke | getAlignment_ALIGN_RIGHT occur EXCEPTION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    :pswitch_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "ALIGN_LEFT"

    invoke-static {v1, v0, v2}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/Layout$Alignment;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "TextScreenElement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invoke | getAlignment_ALIGN_LEFT occur EXCEPTION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSpacingAdd()F
    .locals 2

    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mSpacingAddExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :cond_0
    iget v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mSpacingAdd:F

    return v0
.end method

.method private getSpacingMult()F
    .locals 2

    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mSpacingMultExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :cond_0
    iget v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mSpacingMult:F

    return v0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v3

    iget-boolean v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mHasName:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/miui/maml/elements/TextScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "text_width"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v3, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextWidthVar:Lcom/miui/maml/data/IndexedVariable;

    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/miui/maml/elements/TextScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "text_height"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v3, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextHeightVar:Lcom/miui/maml/data/IndexedVariable;

    :cond_1
    iget-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mStyle:Lcom/miui/maml/StylesManager$Style;

    invoke-static {v3, v2, v0}, Lcom/miui/maml/util/TextFormatter;->fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Lcom/miui/maml/StylesManager$Style;)Lcom/miui/maml/util/TextFormatter;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mFormatter:Lcom/miui/maml/util/TextFormatter;

    iget-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mStyle:Lcom/miui/maml/StylesManager$Style;

    invoke-static {v3, v2, v0}, Lcom/miui/maml/util/ColorParser;->fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Lcom/miui/maml/StylesManager$Style;)Lcom/miui/maml/util/ColorParser;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mColorParser:Lcom/miui/maml/util/ColorParser;

    const-string v0, "marqueeSpeed"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v0, v5}, Lcom/miui/maml/elements/TextScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueeSpeed:I

    const-string v0, "spacingMult"

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v0, v6}, Lcom/miui/maml/elements/TextScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mSpacingMult:F

    const-string v0, "spacingAdd"

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v0, v6}, Lcom/miui/maml/elements/TextScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mSpacingAdd:F

    const-string v0, "spacingMultExp"

    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/elements/TextScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mSpacingMultExp:Lcom/miui/maml/data/Expression;

    const-string v0, "spacingAddExp"

    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/elements/TextScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mSpacingAddExp:Lcom/miui/maml/data/Expression;

    const-string v0, "marqueeGap"

    const/4 v7, 0x2

    invoke-virtual {v1, v2, v0, v7}, Lcom/miui/maml/elements/TextScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueeGap:I

    const-string v0, "multiLine"

    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/elements/TextScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mMultiLine:Z

    const-string v0, "enableFontScale"

    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/elements/TextScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mFontScaleEnabled:Z

    const-string v0, "size"

    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/elements/TextScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v10

    const-string v0, "fontFamily"

    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/elements/TextScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "fontPath"

    invoke-virtual {v1, v2, v7}, Lcom/miui/maml/elements/TextScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v5, "fontStyle"

    invoke-virtual {v1, v2, v5}, Lcom/miui/maml/elements/TextScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/maml/elements/TextScreenElement;->parseFontStyle(Ljava/lang/String;)I

    move-result v5

    iget-object v7, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_2

    :cond_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v9, "TextScreenElement"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "create typeface from asset fail :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez v8, :cond_4

    const-string v0, "@"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7, v3, v5}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextFontVar:Lcom/miui/maml/data/IndexedVariable;

    goto :goto_1

    :cond_3
    invoke-direct {v1, v7}, Lcom/miui/maml/elements/TextScreenElement;->updateTypeface(Ljava/lang/String;)V

    :cond_4
    :goto_1
    if-eqz v8, :cond_6

    iget-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v8}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_2

    :cond_5
    const-string v0, "bold"

    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/elements/TextScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v5, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/miui/maml/util/HideSdkDependencyUtils;->TypefaceUtils_replaceTypeface(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_6
    :goto_2
    iget-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->getColor()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    const-wide/high16 v7, 0x4032000000000000L    # 18.0

    invoke-virtual {v1, v7, v8}, Lcom/miui/maml/elements/TextScreenElement;->scale(D)F

    move-result v5

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    const-string v0, "shadowRadius"

    invoke-virtual {v1, v2, v0, v6}, Lcom/miui/maml/elements/TextScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mShadowRadius:F

    const-string v0, "shadowDx"

    invoke-virtual {v1, v2, v0, v6}, Lcom/miui/maml/elements/TextScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mShadowDx:F

    const-string v0, "shadowDy"

    invoke-virtual {v1, v2, v0, v6}, Lcom/miui/maml/elements/TextScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mShadowDy:F

    const-string v0, "shadowColor"

    iget-object v4, v1, Lcom/miui/maml/elements/TextScreenElement;->mStyle:Lcom/miui/maml/StylesManager$Style;

    invoke-static {v3, v2, v0, v4}, Lcom/miui/maml/util/ColorParser;->fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Lcom/miui/maml/util/ColorParser;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mShadowColorParser:Lcom/miui/maml/util/ColorParser;

    iget-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget v2, v1, Lcom/miui/maml/elements/TextScreenElement;->mShadowRadius:F

    iget v3, v1, Lcom/miui/maml/elements/TextScreenElement;->mShadowDx:F

    iget v4, v1, Lcom/miui/maml/elements/TextScreenElement;->mShadowDy:F

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->getShadowColor()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    new-instance v0, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/miui/maml/elements/TextScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".textColor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->isInFolmeMode()Z

    move-result v11

    const-wide/high16 v12, 0x4032000000000000L    # 18.0

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextSizeProperty:Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v0, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/miui/maml/elements/TextScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".textSize"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->isInFolmeMode()Z

    move-result v18

    iget-object v2, v1, Lcom/miui/maml/elements/TextScreenElement;->mColorParser:Lcom/miui/maml/util/ColorParser;

    invoke-virtual {v2}, Lcom/miui/maml/util/ColorParser;->getColor()I

    move-result v2

    int-to-double v2, v2

    move-object v14, v0

    move-wide/from16 v19, v2

    invoke-direct/range {v14 .. v20}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v0, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/miui/maml/elements/TextScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".textShadowColor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->isInFolmeMode()Z

    move-result v8

    iget-object v2, v1, Lcom/miui/maml/elements/TextScreenElement;->mShadowColorParser:Lcom/miui/maml/util/ColorParser;

    invoke-virtual {v2}, Lcom/miui/maml/util/ColorParser;->getColor()I

    move-result v2

    int-to-double v9, v2

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextShadowColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    return-void
.end method

.method private static parseFontStyle(Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const-string v0, "normal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "bold"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v0, "italic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-string v0, "bold_italic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v1
.end method

.method private updateTextFontIfNeed()V
    .locals 2

    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextFontVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextFontName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/maml/elements/TextScreenElement;->updateTypeface(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateTextSize()V
    .locals 2

    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextSizeProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/TextScreenElement;->scale(D)F

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextSize:F

    iget-boolean v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mFontScaleEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextSize:F

    iget-object v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getFontScale()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextSize:F

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method private updateTextWidth()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mMultiLine:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    iget v3, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    iput v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    :cond_2
    iget-boolean v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mHasName:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidthVar:Lcom/miui/maml/data/IndexedVariable;

    iget v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    float-to-double v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/TextScreenElement;->descale(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_3
    return-void
.end method

.method private updateTypeface(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextFontName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/maml/elements/TextScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ResourceManager;->getExtraFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "TextScreenElement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "int. create typeface from PATH failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 14

    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/miui/maml/elements/TextScreenElement;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/maml/elements/TextScreenElement;->getAlpha()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/maml/util/Utils;->mixAlpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowRadius:F

    iget v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowDx:F

    iget v3, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowDy:F

    invoke-virtual {p0}, Lcom/miui/maml/elements/TextScreenElement;->getShadowColor()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-virtual {p0}, Lcom/miui/maml/elements/TextScreenElement;->getWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    cmpg-float v5, v0, v1

    if-ltz v5, :cond_2

    iget v5, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    cmpl-float v5, v0, v5

    if-lez v5, :cond_3

    :cond_2
    iget v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    :cond_3
    invoke-virtual {p0}, Lcom/miui/maml/elements/TextScreenElement;->getHeight()F

    move-result v5

    iget-object v6, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getTextSize()F

    move-result v6

    cmpg-float v7, v5, v1

    if-gez v7, :cond_4

    iget v5, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextHeight:F

    :cond_4
    invoke-virtual {p0, v1, v0}, Lcom/miui/maml/elements/TextScreenElement;->getLeft(FF)F

    move-result v7

    invoke-virtual {p0, v1, v5}, Lcom/miui/maml/elements/TextScreenElement;->getTop(FF)F

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v9, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowRadius:F

    cmpl-float v10, v9, v1

    if-eqz v10, :cond_5

    iget v10, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowDx:F

    sub-float/2addr v10, v9

    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget v10, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowDx:F

    iget v11, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowRadius:F

    add-float/2addr v10, v11

    invoke-static {v1, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iget v11, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowDy:F

    iget v12, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowRadius:F

    sub-float/2addr v11, v12

    invoke-static {v1, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    iget v12, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowDy:F

    iget v13, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowRadius:F

    add-float/2addr v12, v13

    invoke-static {v1, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    goto :goto_1

    :cond_5
    move v9, v1

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_1
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v2, :cond_6

    move v9, v1

    :cond_6
    if-eqz v2, :cond_7

    move v10, v1

    :cond_7
    add-float/2addr v10, v0

    add-float/2addr v5, v12

    invoke-virtual {p1, v9, v11, v10, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-ne v2, v3, :cond_8

    iget-boolean v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v9

    iget-object v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v10

    iget-object v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v2

    iget-object v3, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    iget-object v8, p0, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    iget v4, p0, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    add-float v11, v3, v4

    int-to-float v2, v2

    add-float/2addr v2, v6

    iget-object v13, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object v7, p1

    move v12, v2

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    iget v4, p0, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    add-float/2addr v4, v1

    iget v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextSize:F

    iget v5, p0, Lcom/miui/maml/elements/TextScreenElement;->mMarqueeGap:I

    int-to-float v5, v5

    mul-float/2addr v1, v5

    add-float/2addr v4, v1

    cmpg-float v0, v4, v0

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    add-float/2addr v3, v4

    iget-object v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_9
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected doTick(J)V
    .locals 20

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    sget-object v4, Lcom/miui/maml/elements/TextScreenElement;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-super/range {p0 .. p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->doTick(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v4

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    iget-object v5, v1, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->getText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    iget-object v6, v1, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->updateTextWidth()V

    monitor-exit v4

    return-void

    :cond_1
    iget v6, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextSize:F

    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->updateTextSize()V

    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->updateTextFontIfNeed()V

    iget-object v7, v1, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    iget v5, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextSize:F

    cmpl-float v5, v6, v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    move v5, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v5, v7

    :goto_1
    if-eqz v5, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->updateTextWidth()V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->getWidth()F

    move-result v6

    iget-boolean v8, v1, Lcom/miui/maml/elements/TextScreenElement;->mMultiLine:Z

    if-nez v8, :cond_5

    iget v8, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueeSpeed:I

    if-lez v8, :cond_5

    iget v8, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    cmpl-float v8, v8, v6

    if-lez v8, :cond_5

    move v0, v7

    :cond_5
    iget-boolean v8, v1, Lcom/miui/maml/elements/TextScreenElement;->mMultiLine:Z

    if-eqz v8, :cond_6

    iget v8, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    :cond_6
    iget v6, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->getSpacingMult()F

    move-result v8

    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->getSpacingAdd()F

    move-result v9

    iget-object v10, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    const v11, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v10, :cond_8

    if-nez v5, :cond_8

    iget v5, v1, Lcom/miui/maml/elements/TextScreenElement;->mLayoutWidth:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_8

    iget v5, v1, Lcom/miui/maml/elements/TextScreenElement;->mSpacingMult:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_8

    iget v5, v1, Lcom/miui/maml/elements/TextScreenElement;->mSpacingAdd:F

    cmpl-float v5, v5, v9

    if-eqz v5, :cond_a

    :cond_8
    iput v6, v1, Lcom/miui/maml/elements/TextScreenElement;->mLayoutWidth:F

    iput v8, v1, Lcom/miui/maml/elements/TextScreenElement;->mSpacingMult:F

    iput v9, v1, Lcom/miui/maml/elements/TextScreenElement;->mSpacingAdd:F

    new-instance v5, Landroid/text/StaticLayout;

    iget-object v13, v1, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    iget-object v14, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget v6, v1, Lcom/miui/maml/elements/TextScreenElement;->mLayoutWidth:F

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v15, v8

    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v16

    iget v6, v1, Lcom/miui/maml/elements/TextScreenElement;->mSpacingMult:F

    iget v8, v1, Lcom/miui/maml/elements/TextScreenElement;->mSpacingAdd:F

    const/16 v19, 0x0

    move-object v12, v5

    move/from16 v17, v6

    move/from16 v18, v8

    invoke-direct/range {v12 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v5, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    iget-object v5, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    iget-object v6, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextHeight:F

    iget-boolean v5, v1, Lcom/miui/maml/elements/TextScreenElement;->mHasName:Z

    if-eqz v5, :cond_9

    iget-object v5, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextHeightVar:Lcom/miui/maml/data/IndexedVariable;

    iget v6, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextHeight:F

    float-to-double v8, v6

    invoke-virtual {v1, v8, v9}, Lcom/miui/maml/elements/TextScreenElement;->descale(D)D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_9
    iput v11, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    :cond_a
    if-eqz v0, :cond_e

    iget v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    cmpl-float v0, v0, v11

    const/high16 v5, 0x42480000    # 50.0f

    if-nez v0, :cond_b

    iput v5, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    goto :goto_2

    :cond_b
    iget v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    iget v6, v1, Lcom/miui/maml/elements/TextScreenElement;->mLayoutWidth:F

    neg-float v6, v6

    cmpg-float v0, v0, v6

    if-gez v0, :cond_c

    iput v5, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    :cond_c
    iget v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    iget v5, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueeSpeed:I

    int-to-long v5, v5

    iget-wide v8, v1, Lcom/miui/maml/elements/TextScreenElement;->mPreviousTime:J

    sub-long v8, v2, v8

    mul-long/2addr v5, v8

    long-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    sub-float/2addr v0, v5

    iput v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    iget v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    iget v5, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    neg-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_d

    iget v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    iget v5, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    iget v6, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextSize:F

    iget v8, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueeGap:I

    int-to-float v8, v8

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    add-float/2addr v0, v5

    iput v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    :cond_d
    :goto_2
    iput-wide v2, v1, Lcom/miui/maml/elements/TextScreenElement;->mPreviousTime:J

    iput-boolean v7, v1, Lcom/miui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    :cond_e
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    if-eqz v0, :cond_f

    const/high16 v0, 0x42340000    # 45.0f

    goto :goto_3

    :cond_f
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/TextScreenElement;->requestFramerate(F)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public finish()V
    .locals 1

    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    return-void
.end method

.method protected getColor()I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/maml/elements/TextScreenElement;->isInFolmeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-long v0, v0

    long-to-int v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mColorParser:Lcom/miui/maml/util/ColorParser;

    invoke-virtual {v0}, Lcom/miui/maml/util/ColorParser;->getColor()I

    move-result v0

    return v0
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mFormatter:Lcom/miui/maml/util/TextFormatter;

    invoke-virtual {v0}, Lcom/miui/maml/util/TextFormatter;->getFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()F
    .locals 2

    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    iget v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextHeight:F

    :cond_0
    return v0
.end method

.method protected getShadowColor()I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/maml/elements/TextScreenElement;->isInFolmeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextShadowColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-long v0, v0

    long-to-int v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowColorParser:Lcom/miui/maml/util/ColorParser;

    invoke-virtual {v0}, Lcom/miui/maml/util/ColorParser;->getColor()I

    move-result v0

    return v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mFormatter:Lcom/miui/maml/util/TextFormatter;

    invoke-virtual {v0}, Lcom/miui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "\\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mMultiLine:Z

    if-nez v1, :cond_1

    const-string v1, "\n"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getWidth()F
    .locals 2

    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    iget v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    :cond_0
    return v0
.end method

.method public init()V
    .locals 0

    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->init()V

    invoke-direct {p0}, Lcom/miui/maml/elements/TextScreenElement;->updateTextFontIfNeed()V

    return-void
.end method

.method protected initProperties()V
    .locals 1

    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->initProperties()V

    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextSizeProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextShadowColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    return-void
.end method

.method protected onVisibilityChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    iget-boolean v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/high16 p1, 0x42340000    # 45.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/TextScreenElement;->requestFramerate(F)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void
.end method

.method public varargs setParams([Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mFormatter:Lcom/miui/maml/util/TextFormatter;

    invoke-virtual {v0, p1}, Lcom/miui/maml/util/TextFormatter;->setParams([Ljava/lang/Object;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    return-void
.end method
