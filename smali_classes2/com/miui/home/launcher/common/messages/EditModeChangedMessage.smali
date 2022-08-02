.class public Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;
.super Ljava/lang/Object;
.source "EditModeChangedMessage.java"


# instance fields
.field private final mCurrentEditState:I

.field private final mLastEditState:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;->mCurrentEditState:I

    iput p2, p0, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;->mLastEditState:I

    return-void
.end method


# virtual methods
.method public getCurrentEditState()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;->mCurrentEditState:I

    return v0
.end method

.method public getLastEditState()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/common/messages/EditModeChangedMessage;->mLastEditState:I

    return v0
.end method
