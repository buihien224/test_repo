.class public Lcom/miui/home/launcher/common/messages/ChangeContainerOnDropMessage;
.super Ljava/lang/Object;
.source "ChangeContainerOnDropMessage.java"


# instance fields
.field private endContainer:J

.field private info:Lcom/miui/home/launcher/ShortcutInfo;

.field private startContainer:J


# direct methods
.method public constructor <init>(JJLcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/miui/home/launcher/common/messages/ChangeContainerOnDropMessage;->startContainer:J

    iput-object p5, p0, Lcom/miui/home/launcher/common/messages/ChangeContainerOnDropMessage;->info:Lcom/miui/home/launcher/ShortcutInfo;

    iput-wide p3, p0, Lcom/miui/home/launcher/common/messages/ChangeContainerOnDropMessage;->endContainer:J

    return-void
.end method


# virtual methods
.method public getEndContainer()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/home/launcher/common/messages/ChangeContainerOnDropMessage;->endContainer:J

    return-wide v0
.end method

.method public getShortCutInfo()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/common/messages/ChangeContainerOnDropMessage;->info:Lcom/miui/home/launcher/ShortcutInfo;

    return-object v0
.end method

.method public getStartContainer()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/home/launcher/common/messages/ChangeContainerOnDropMessage;->startContainer:J

    return-wide v0
.end method
