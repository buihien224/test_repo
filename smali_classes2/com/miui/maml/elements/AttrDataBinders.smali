.class public Lcom/miui/maml/elements/AttrDataBinders;
.super Ljava/lang/Object;
.source "AttrDataBinders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;
    }
.end annotation


# static fields
.field private static final ATTR_BITMAP:Ljava/lang/String; = "bitmap"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PARAMS:Ljava/lang/String; = "params"

.field private static final ATTR_PARAS:Ljava/lang/String; = "paras"

.field private static final ATTR_SRC:Ljava/lang/String; = "src"

.field private static final ATTR_SRCID:Ljava/lang/String; = "srcid"

.field private static final ATTR_TEXT:Ljava/lang/String; = "text"

.field private static final LOG_TAG:Ljava/lang/String; = "AttrDataBinders"

.field public static final TAG:Ljava/lang/String; = "AttrDataBinders"


# instance fields
.field private mBinders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;",
            ">;"
        }
    .end annotation
.end field

.field protected mVars:Lcom/miui/maml/data/ContextVariables;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/ContextVariables;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/elements/AttrDataBinders;->mBinders:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/miui/maml/elements/AttrDataBinders;->mVars:Lcom/miui/maml/data/ContextVariables;

    const-string p2, "AttrDataBinder"

    new-instance v0, Lcom/miui/maml/elements/AttrDataBinders$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/elements/AttrDataBinders$1;-><init>(Lcom/miui/maml/elements/AttrDataBinders;)V

    invoke-static {p1, p2, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/AttrDataBinders;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/maml/elements/AttrDataBinders;->mBinders:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public bind(Lcom/miui/maml/elements/ElementGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/maml/elements/AttrDataBinders;->mBinders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;

    invoke-virtual {v1, p1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->bind(Lcom/miui/maml/elements/ElementGroup;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
