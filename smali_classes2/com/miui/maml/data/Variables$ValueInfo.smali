.class Lcom/miui/maml/data/Variables$ValueInfo;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mVarType:I

.field mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    iput p2, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mVersion:I

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mVarType:I

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 5

    iget-object v0, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    instance-of v1, v0, [D

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, [D

    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_4

    const-wide/16 v3, 0x0

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    instance-of v1, v0, [F

    if-eqz v1, :cond_1

    check-cast v0, [F

    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_4

    const/4 v1, 0x0

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    instance-of v1, v0, [I

    if-eqz v1, :cond_2

    check-cast v0, [I

    move v1, v2

    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_4

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    instance-of v1, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    check-cast v0, [Ljava/lang/Object;

    :goto_3
    array-length v1, v0

    if-ge v2, v1, :cond_4

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v3}, Lcom/miui/maml/data/Variables$ValueInfo;->setValue(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/data/Variables$ValueInfo;->setValue(Ljava/lang/Object;I)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    iget v0, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mVarType:I

    if-le p2, v0, :cond_0

    iput p2, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mVarType:I

    :cond_0
    iget v0, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mVarType:I

    if-ne p2, v0, :cond_1

    iput-object p1, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mValue:Ljava/lang/Object;

    iget p1, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mVersion:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/miui/maml/data/Variables$ValueInfo;->mVersion:I

    :cond_1
    return-void
.end method
