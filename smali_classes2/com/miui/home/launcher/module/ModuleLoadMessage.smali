.class public Lcom/miui/home/launcher/module/ModuleLoadMessage;
.super Ljava/lang/Object;
.source "ModuleLoadMessage.java"


# instance fields
.field private final mModule:Ljava/lang/String;

.field private final mSuccess:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/module/ModuleLoadMessage;->mModule:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/miui/home/launcher/module/ModuleLoadMessage;->mSuccess:Z

    return-void
.end method


# virtual methods
.method public getModule()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/module/ModuleLoadMessage;->mModule:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/module/ModuleLoadMessage;->mSuccess:Z

    return v0
.end method
