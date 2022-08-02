.class public Lcom/miui/home/launcher/common/messages/DefaultScreenPreviewVisibilityMessage;
.super Ljava/lang/Object;
.source "DefaultScreenPreviewVisibilityMessage.java"


# instance fields
.field private mIsVisible:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/miui/home/launcher/common/messages/DefaultScreenPreviewVisibilityMessage;->mIsVisible:Z

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/common/messages/DefaultScreenPreviewVisibilityMessage;->mIsVisible:Z

    return v0
.end method
