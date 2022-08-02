.class public Lcom/miui/maml/data/FunctionsLoader;
.super Ljava/lang/Object;
.source "FunctionsLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load()V
    .locals 2

    invoke-static {}, Lcom/miui/maml/data/BaseFunctions;->load()V

    invoke-static {}, Lcom/miui/maml/data/StringFunctions;->load()V

    invoke-static {}, Lcom/miui/maml/data/FormatFunctions;->load()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/miui/maml/data/DateFunctions;->load()V

    :cond_0
    invoke-static {}, Lcom/miui/maml/data/JsonFunctions;->load()V

    return-void
.end method
