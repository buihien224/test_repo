.class public Lcom/miui/home/launcher/common/ChangeableValue;
.super Ljava/lang/Object;
.source "ChangeableValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/ChangeableValue;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/launcher/common/ChangeableValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/launcher/common/ChangeableValue;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iput-object p1, p0, Lcom/miui/home/launcher/common/ChangeableValue;->value:Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method
