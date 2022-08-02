.class public Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;
.super Ljava/lang/Object;
.source "AllAppsSettingChangeMessage.java"


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->key:Ljava/lang/String;

    return-object v0
.end method
