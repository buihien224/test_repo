.class public Lcom/miui/home/launcher/common/messages/UserQuietModeChangeMessage;
.super Ljava/lang/Object;
.source "UserQuietModeChangeMessage.java"


# instance fields
.field private mQuietModeEnabled:Z

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/messages/UserQuietModeChangeMessage;->mUser:Landroid/os/UserHandle;

    iput-boolean p2, p0, Lcom/miui/home/launcher/common/messages/UserQuietModeChangeMessage;->mQuietModeEnabled:Z

    return-void
.end method
