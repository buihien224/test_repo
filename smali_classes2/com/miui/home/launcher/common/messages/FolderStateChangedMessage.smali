.class public Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;
.super Ljava/lang/Object;
.source "FolderStateChangedMessage.java"


# instance fields
.field private mUpdatePaddingReason:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;->mUpdatePaddingReason:I

    return-void
.end method


# virtual methods
.method public getMessage()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;->mUpdatePaddingReason:I

    return v0
.end method
