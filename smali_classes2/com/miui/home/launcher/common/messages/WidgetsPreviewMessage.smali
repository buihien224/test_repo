.class public Lcom/miui/home/launcher/common/messages/WidgetsPreviewMessage;
.super Ljava/lang/Object;
.source "WidgetsPreviewMessage.java"


# instance fields
.field private mIsShow:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/miui/home/launcher/common/messages/WidgetsPreviewMessage;->mIsShow:Z

    return-void
.end method


# virtual methods
.method public isShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/common/messages/WidgetsPreviewMessage;->mIsShow:Z

    return v0
.end method
